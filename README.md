# tsql-parser
Library Written in C# For Parsing SQL Server T-SQL Scripts in .Net

Available on Nuget, [TSQL.Parser](https://www.nuget.org/packages/TSQL.Parser/).

    Install-Package TSQL.Parser

### Current Features
- Full T-SQL token implementation.
- Streaming tokenizer for parsing scripts into tokens.
- Returns tokens of type characters, comments, identifiers, keywords, literals, variables, and operators.
- Handles both single line and multi line comments.
- Select statement parser.
- .Net Framework 4.0+ and .Net Core 2.0+ compatible.

### Some Possible Current Uses
- [Colorization](<https://github.com/bruce-dunwiddie/tsql-color>)
- [Dependency Parsing](<https://github.com/bruce-dunwiddie/tsql-depends>)
- Parsing comments.
- Find and replace.
- Script validation.

### Future Additions
- More statement parsers built on top of tokenizer.

### Code Samples
- See [wiki](<https://github.com/bruce-dunwiddie/tsql-parser/wiki/TSQL-Parser-Code-Samples>) for simple code examples and output.
- See [test cases](<https://github.com/bruce-dunwiddie/tsql-parser/tree/master/TSQL_Parser/Tests>) in project.

### Class Documentation
- [bruce-dunwiddie.github.io/tsql-parser/](<http://bruce-dunwiddie.github.io/tsql-parser/>)
