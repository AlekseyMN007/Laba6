﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TSQL.Tokens
{
	public class TSQLMoneyLiteral : TSQLLiteral
	{
		public TSQLMoneyLiteral(
			int beginPostion,
			string text) :
			base(
				beginPostion,
				text)
		{

		}

#pragma warning disable 1591

		public override TSQLTokenType Type
		{
			get
			{
				return TSQLTokenType.MoneyLiteral;
			}
		}

#pragma warning restore 1591
	}
}
