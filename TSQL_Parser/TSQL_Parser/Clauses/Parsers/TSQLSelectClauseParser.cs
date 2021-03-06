using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using TSQL.Statements;
using TSQL.Tokens;

namespace TSQL.Clauses.Parsers
{
	internal class TSQLSelectClauseParser
	{
		public TSQLSelectClause Parse(ITSQLTokenizer tokenizer)
		{
			TSQLSelectClause select = new TSQLSelectClause();

			if (!tokenizer.Current.IsKeyword(TSQLKeywords.SELECT))
			{
				throw new InvalidOperationException("SELECT expected.");
			}

			select.Tokens.Add(tokenizer.Current);

			// can contain ALL, DISTINCT, TOP, PERCENT, WITH TIES, AS

			// ends with FROM, semicolon, or keyword other than those listed above, when used outside of parens

			// recursively walk down and back up parens

			int nestedLevel = 0;

			while (
				tokenizer.MoveNext() &&
				!tokenizer.Current.IsCharacter(TSQLCharacters.Semicolon) &&
				!(
					nestedLevel == 0 &&
					tokenizer.Current.IsCharacter(TSQLCharacters.CloseParentheses)
				) &&
				(
					nestedLevel > 0 ||
					tokenizer.Current.Type != TSQLTokenType.Keyword ||
					(
						tokenizer.Current.Type == TSQLTokenType.Keyword &&
						!tokenizer.Current.AsKeyword.Keyword.In
						(
							TSQLKeywords.INTO,
							TSQLKeywords.FROM,
							TSQLKeywords.WHERE,
							TSQLKeywords.GROUP,
							TSQLKeywords.HAVING,
							TSQLKeywords.ORDER,
							TSQLKeywords.UNION,
							TSQLKeywords.EXCEPT,
							TSQLKeywords.INTERSECT,
							TSQLKeywords.FOR,
							TSQLKeywords.OPTION
						) &&
						!tokenizer.Current.AsKeyword.Keyword.IsStatementStart()
					)
				))
			{
				TSQLSubqueryHelper.RecurseParens(
					tokenizer,
					select,
					ref nestedLevel);
			}

			return select;
		}
	}
}
