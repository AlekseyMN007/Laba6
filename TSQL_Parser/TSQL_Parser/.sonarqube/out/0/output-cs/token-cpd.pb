�
iC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLOptionClauseParser.cs
	namespace 	
TSQL
 
. 
Clauses 
. 
Parsers 
{		 
internal

 	
class


 "
TSQLOptionClauseParser

 &
:

' (
ITSQLClauseParser

) :
{ 
public 
TSQLOptionClause	 
Parse 
(  
ITSQLTokenizer  .
	tokenizer/ 8
)8 9
{ 
TSQLOptionClause 
option 
= 
new  
TSQLOptionClause! 1
(1 2
)2 3
;3 4
if 
( 
! 
	tokenizer 
. 
Current 
. 
	IsKeyword #
(# $
TSQLKeywords$ 0
.0 1
OPTION1 7
)7 8
)8 9
{ 
throw 	
new
  
ApplicationException "
(" #
$str# 5
)5 6
;6 7
} 
option 	
.	 

Tokens
 
. 
Add 
( 
	tokenizer 
. 
Current &
)& '
;' (
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
	tokenizer 
. 
Current 
. 
IsCharacter "
(" #
TSQLCharacters# 1
.1 2
OpenParentheses2 A
)A B
)B C
{ 
option 

.
 
Tokens 
. 
Add 
( 
	tokenizer 
.  
Current  '
)' (
;( )
} 
do 
{ 
if   
(   
	tokenizer   
.   
Current   
!=   
null   !
)  ! "
{!! 
option"" 
."" 
Tokens"" 
."" 
Add"" 
("" 
	tokenizer""  
.""  !
Current""! (
)""( )
;"") *
}## 
}$$ 
while$$ 

($$ 
	tokenizer%% 
.%% 
MoveNext%% 
(%% 
)%% 
&&%% 
!&& 
	tokenizer&& 
.&& 
Current&& 
.&& 
IsCharacter&& "
(&&" #
TSQLCharacters&&# 1
.&&1 2
CloseParentheses&&2 B
)&&B C
)&&C D
;&&D E
if(( 
((( 
	tokenizer(( 
.(( 
Current(( 
!=(( 
null((  
)((  !
{)) 
option** 

.**
 
Tokens** 
.** 
Add** 
(** 
	tokenizer** 
.**  
Current**  '
)**' (
;**( )
	tokenizer++ 
.++ 
MoveNext++ 
(++ 
)++ 
;++ 
},, 
return.. 	
option..
 
;.. 
}// 

TSQLClause11 
ITSQLClauseParser11 
.11 
Parse11 $
(11$ %
ITSQLTokenizer11% 3
	tokenizer114 =
)11= >
{22 
return33 	
Parse33
 
(33 
	tokenizer33 
)33 
;33 
}44 
}55 
}66 �
gC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLWithClauseParser.cs
	namespace 	
TSQL
 
. 
Clauses 
. 
Parsers 
{ 
internal 	
class
  
TSQLWithClauseParser $
:% &
ITSQLClauseParser' 8
{		 
public

 
TSQLWithClause

	 
Parse

 
(

 
ITSQLTokenizer

 ,
	tokenizer

- 6
)

6 7
{ 
throw 
new	 #
NotImplementedException $
($ %
)% &
;& '
} 

TSQLClause 
ITSQLClauseParser 
. 
Parse $
($ %
ITSQLTokenizer% 3
	tokenizer4 =
)= >
{ 
return 	
Parse
 
( 
	tokenizer 
) 
; 
} 
} 
} �
dC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\ITSQLClauseParser.cs
	namespace 	
TSQL
 
. 
Clauses 
. 
Parsers 
{		 
internal

 	
	interface


 
ITSQLClauseParser

 %
{ 

TSQLClause 
Parse 
( 
ITSQLTokenizer !
	tokenizer" +
)+ ,
;, -
} 
} �G
gC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLFromClauseParser.cs
	namespace

 	
TSQL


 
.

 
Clauses

 
.

 
Parsers

 
{ 
internal 	
class
  
TSQLFromClauseParser $
:% &
ITSQLClauseParser' 8
{ 
public 
TSQLFromClause	 
Parse 
( 
ITSQLTokenizer ,
	tokenizer- 6
)6 7
{ 
TSQLFromClause 
from 
= 
new 
TSQLFromClause +
(+ ,
), -
;- .
if 
( 
! 
	tokenizer 
. 
Current "
." #
	IsKeyword# ,
(, -
TSQLKeywords- 9
.9 :
FROM: >
)> ?
)? @
{ 
throw 
new  
ApplicationException .
(. /
$str/ ?
)? @
;@ A
} 
from 
. 
Tokens 
. 
Add 
( 
	tokenizer %
.% &
Current& -
)- .
;. /
int 
nestedLevel 
= 
$num 
;  
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
( 
	tokenizer   
.   
Current   
.   
Type   
==   
TSQLTokenType   ,
.  , -
	Character  - 6
&&  7 9
	tokenizer!! 
.!! 
Current!! 
.!! 
AsCharacter!! "
.!!" #
	Character!!# ,
==!!- /
TSQLCharacters!!0 >
.!!> ?
	Semicolon!!? H
)"" 
&&"" 
!## 
(## 
nestedLevel$$ 
==$$ 
$num$$ 
&&$$ 
	tokenizer%% 
.%% 
Current%% 
.%% 
Type%% 
==%% 
TSQLTokenType%% ,
.%%, -
	Character%%- 6
&&%%7 9
	tokenizer&& 
.&& 
Current&& 
.&& 
AsCharacter&& "
.&&" #
	Character&&# ,
==&&- /
TSQLCharacters&&0 >
.&&> ?
CloseParentheses&&? O
)'' 
&&'' 
((( 
nestedLevel)) 
>)) 
$num)) 
||)) 
	tokenizer** 
.** 
Current** 
.** 
Type** 
!=** 
TSQLTokenType** ,
.**, -
Keyword**- 4
||**5 7
(++ 
	tokenizer,, 
.,, 
Current,, 
.,, 
Type,, 
==,, 
TSQLTokenType,,  -
.,,- .
Keyword,,. 5
&&,,6 8
	tokenizer-- 
.-- 
Current-- 
.-- 
	AsKeyword-- !
.--! "
Keyword--" )
.--) *
In--* ,
(.. 
TSQLKeywords// 
.// 
JOIN// 
,// 
TSQLKeywords00 
.00 
ON00 
,00 
TSQLKeywords11 
.11 
INNER11 
,11 
TSQLKeywords22 
.22 
LEFT22 
,22 
TSQLKeywords33 
.33 
RIGHT33 
,33 
TSQLKeywords44 
.44 
OUTER44 
,44 
TSQLKeywords55 
.55 
CROSS55 
,55 
TSQLKeywords66 
.66 
FULL66 
,66 
TSQLKeywords77 
.77 
AS77 
,77 
TSQLKeywords88 
.88 
PIVOT88 
,88 
TSQLKeywords99 
.99 
UNPIVOT99 
,99 
TSQLKeywords:: 
.:: 
WITH:: 
,:: 
TSQLKeywords;; 
.;; 
MERGE;; 
,;; 
TSQLKeywords<< 
.<< 
TABLESAMPLE<< 
,<<  
TSQLKeywords== 
.== 
FOR== 
,== 
TSQLKeywords>> 
.>> 
FROM>> 
,>> 
TSQLKeywords?? 
.?? 
BETWEEN?? 
,?? 
TSQLKeywords@@ 
.@@ 
AND@@ 
,@@ 
TSQLKeywordsAA 
.AA 
INAA 
,AA 
TSQLKeywordsBB 
.BB 

REPEATABLEBB 
,BB 
TSQLKeywordsCC 
.CC 
ALLCC 
)DD 
)EE 
)FF 
)FF 
{GG 
fromHH 
.HH 	
TokensHH	 
.HH 
AddHH 
(HH 
	tokenizerHH 
.HH 
CurrentHH %
)HH% &
;HH& '
ifJJ 
(JJ 
	tokenizerJJ 
.JJ 
CurrentJJ 
.JJ 
TypeJJ 
==JJ !
TSQLTokenTypeJJ" /
.JJ/ 0
	CharacterJJ0 9
)JJ9 :
{KK 
TSQLCharactersLL 
	characterLL 
=LL 
	tokenizerLL  )
.LL) *
CurrentLL* 1
.LL1 2
AsCharacterLL2 =
.LL= >
	CharacterLL> G
;LLG H
ifNN 
(NN 	
	characterNN	 
==NN 
TSQLCharactersNN $
.NN$ %
OpenParenthesesNN% 4
)NN4 5
{OO 
nestedLevelQQ 
++QQ 
;QQ 
ifSS 
(SS	 

	tokenizerSS
 
.SS 
MoveNextSS 
(SS 
)SS 
)SS 
{TT 
ifUU 	
(UU
 
	tokenizerVV 
.VV 
CurrentVV 
.VV 
TypeVV 
==VV !
TSQLTokenTypeVV" /
.VV/ 0
KeywordVV0 7
&&VV8 :
	tokenizerWW 
.WW 
CurrentWW 
.WW 
	AsKeywordWW #
.WW# $
KeywordWW$ +
==WW, .
TSQLKeywordsWW/ ;
.WW; <
SELECTWW< B
)WWB C
{XX 
TSQLSelectStatementYY 
selectStatementYY +
=YY, -
newYY. 1%
TSQLSelectStatementParserYY2 K
(YYK L
)YYL M
.YYM N
ParseYYN S
(YYS T
	tokenizerYYT ]
)YY] ^
;YY^ _
from[[ 
.[[ 
Tokens[[ 
.[[ 
AddRange[[ 
([[ 
selectStatement[[ ,
.[[, -
Tokens[[- 3
)[[3 4
;[[4 5
if]] 

(]] 
	tokenizer^^	 
.^^ 
Current^^ 
!=^^ 
null^^ "
&&^^# %
	tokenizer__	 
.__ 
Current__ 
.__ 
Type__ 
==__  "
TSQLTokenType__# 0
.__0 1
	Character__1 :
&&__; =
	tokenizer``	 
.`` 
Current`` 
.`` 
AsCharacter`` &
.``& '
	Character``' 0
==``1 3
TSQLCharacters``4 B
.``B C
CloseParentheses``C S
)``S T
{aa 	
nestedLevelbb	 
--bb 
;bb 
fromcc	 
.cc 
Tokenscc 
.cc 
Addcc 
(cc 
	tokenizercc "
.cc" #
Currentcc# *
)cc* +
;cc+ ,
}dd 	
}ee 
elseff 
ifff 
(ff 
	tokenizerff 
.ff 
Currentff !
.ff! "
IsCharacterff" -
(ff- .
TSQLCharactersgg 
.gg 
CloseParenthesesgg '
)gg' (
)gg( )
{hh 
nestedLevelii 
--ii 
;ii 
fromjj 
.jj 
Tokensjj 
.jj 
Addjj 
(jj 
	tokenizerjj !
.jj! "
Currentjj" )
)jj) *
;jj* +
}kk 
elsell 
{mm 
fromnn 
.nn 
Tokensnn 
.nn 
Addnn 
(nn 
	tokenizernn !
.nn! "
Currentnn" )
)nn) *
;nn* +
}oo 
}pp 
}qq 
elserr 	
ifrr
 
(rr 
	characterrr 
==rr 
TSQLCharactersrr )
.rr) *
CloseParenthesesrr* :
)rr: ;
{ss 
nestedLeveltt 
--tt 
;tt 
}uu 
}vv 
}ww 
returnyy 	
fromyy
 
;yy 
}zz 

TSQLClause|| 
ITSQLClauseParser|| 
.|| 
Parse|| $
(||$ %
ITSQLTokenizer||% 3
	tokenizer||4 =
)||= >
{}} 
return~~ 	
Parse~~
 
(~~ 
	tokenizer~~ 
)~~ 
;~~ 
} 
}
�� 
}�� �>
jC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLGroupByClauseParser.cs
	namespace

 	
TSQL


 
.

 
Clauses

 
.

 
Parsers

 
{ 
internal 	
class
 #
TSQLGroupByClauseParser '
:( )
ITSQLClauseParser* ;
{ 
public 
TSQLGroupByClause	 
Parse  
(  !
ITSQLTokenizer! /
	tokenizer0 9
)9 :
{ 
TSQLGroupByClause 
groupBy 
= 
new "
TSQLGroupByClause# 4
(4 5
)5 6
;6 7
if 
( 
! 
	tokenizer 
. 
Current 
. 
	IsKeyword #
(# $
TSQLKeywords$ 0
.0 1
GROUP1 6
)6 7
)7 8
{ 
throw 	
new
  
ApplicationException "
(" #
$str# 4
)4 5
;5 6
} 
groupBy 

.
 
Tokens 
. 
Add 
( 
	tokenizer 
.  
Current  '
)' (
;( )
int 
nestedLevel 
= 
$num 
; 
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
	tokenizer 
. 
Current 
. 
IsCharacter "
(" #
TSQLCharacters# 1
.1 2
	Semicolon2 ;
); <
&&= ?
! 
( 
nestedLevel   
==   
$num   
&&   
	tokenizer!! 
.!! 
Current!! 
.!! 
IsCharacter!! "
(!!" #
TSQLCharacters!!# 1
.!!1 2
CloseParentheses!!2 B
)!!B C
)"" 
&&"" 
(## 
nestedLevel$$ 
>$$ 
$num$$ 
||$$ 
	tokenizer%% 
.%% 
Current%% 
.%% 
Type%% 
!=%% 
TSQLTokenType%% ,
.%%, -
Keyword%%- 4
||%%5 7
(&& 
	tokenizer'' 
.'' 
Current'' 
.'' 
Type'' 
=='' 
TSQLTokenType''  -
.''- .
Keyword''. 5
&&''6 8
	tokenizer(( 
.(( 
Current(( 
.(( 
	AsKeyword(( !
.((! "
Keyword((" )
.(() *
In((* ,
()) 
TSQLKeywords** 
.** 
BY** 
,** 
TSQLKeywords++ 
.++ 
NULL++ 
,++ 
TSQLKeywords,, 
.,, 
CASE,, 
,,, 
TSQLKeywords-- 
.-- 
WHEN-- 
,-- 
TSQLKeywords.. 
... 
THEN.. 
,.. 
TSQLKeywords// 
.// 
ELSE// 
,// 
TSQLKeywords00 
.00 
AND00 
,00 
TSQLKeywords11 
.11 
OR11 
,11 
TSQLKeywords22 
.22 
BETWEEN22 
,22 
TSQLKeywords33 
.33 
EXISTS33 
,33 
TSQLKeywords44 
.44 
END44 
,44 
TSQLKeywords55 
.55 
IN55 
,55 
TSQLKeywords66 
.66 
IS66 
,66 
TSQLKeywords77 
.77 
NOT77 
,77 
TSQLKeywords88 
.88 
OVER88 
,88 
TSQLKeywords99 
.99 
LIKE99 
,99 
TSQLKeywords:: 
.:: 
ALL:: 
,:: 
TSQLKeywords;; 
.;; 
WITH;; 
,;; 
TSQLKeywords<< 
.<< 
DISTINCT<< 
)== 
)>> 
)?? 
)?? 
{@@ 
groupByAA 
.AA 
TokensAA 
.AA 
AddAA 
(AA 
	tokenizerAA  
.AA  !
CurrentAA! (
)AA( )
;AA) *
ifCC 
(CC 
	tokenizerCC 
.CC 
CurrentCC 
.CC 
TypeCC 
==CC !
TSQLTokenTypeCC" /
.CC/ 0
	CharacterCC0 9
)CC9 :
{DD 
TSQLCharactersEE 
	characterEE 
=EE 
	tokenizerEE  )
.EE) *
CurrentEE* 1
.EE1 2
AsCharacterEE2 =
.EE= >
	CharacterEE> G
;EEG H
ifGG 
(GG 	
	characterGG	 
==GG 
TSQLCharactersGG $
.GG$ %
OpenParenthesesGG% 4
)GG4 5
{HH 
nestedLevelJJ 
++JJ 
;JJ 
ifLL 
(LL	 

	tokenizerLL
 
.LL 
MoveNextLL 
(LL 
)LL 
)LL 
{MM 
ifNN 	
(NN
 
	tokenizerNN 
.NN 
CurrentNN 
.NN 
	IsKeywordNN &
(NN& '
TSQLKeywordsNN' 3
.NN3 4
SELECTNN4 :
)NN: ;
)NN; <
{OO 
TSQLSelectStatementPP 
selectStatementPP +
=PP, -
newPP. 1%
TSQLSelectStatementParserPP2 K
(PPK L
)PPL M
.PPM N
ParsePPN S
(PPS T
	tokenizerPPT ]
)PP] ^
;PP^ _
groupByRR 
.RR 
TokensRR 
.RR 
AddRangeRR 
(RR  
selectStatementRR  /
.RR/ 0
TokensRR0 6
)RR6 7
;RR7 8
ifTT 

(TT 
	tokenizerTT 
.TT 
CurrentTT 
.TT 
IsCharacterTT )
(TT) *
TSQLCharactersTT* 8
.TT8 9
CloseParenthesesTT9 I
)TTI J
)TTJ K
{UU 	
nestedLevelVV	 
--VV 
;VV 
groupByWW	 
.WW 
TokensWW 
.WW 
AddWW 
(WW 
	tokenizerWW %
.WW% &
CurrentWW& -
)WW- .
;WW. /
}XX 	
}YY 
elseZZ 
ifZZ 
(ZZ 
	tokenizerZZ 
.ZZ 
CurrentZZ !
.ZZ! "
IsCharacterZZ" -
(ZZ- .
TSQLCharacters[[ 
.[[ 
CloseParentheses[[ '
)[[' (
)[[( )
{\\ 
nestedLevel]] 
--]] 
;]] 
groupBy^^ 
.^^ 
Tokens^^ 
.^^ 
Add^^ 
(^^ 
	tokenizer^^ $
.^^$ %
Current^^% ,
)^^, -
;^^- .
}__ 
else`` 
{aa 
groupBybb 
.bb 
Tokensbb 
.bb 
Addbb 
(bb 
	tokenizerbb $
.bb$ %
Currentbb% ,
)bb, -
;bb- .
}cc 
}dd 
}ee 
elseff 	
ifff
 
(ff 
	characterff 
==ff 
TSQLCharactersff )
.ff) *
CloseParenthesesff* :
)ff: ;
{gg 
nestedLevelhh 
--hh 
;hh 
}ii 
}jj 
}kk 
returnmm 	
groupBymm
 
;mm 
}nn 

TSQLClausepp 
ITSQLClauseParserpp 
.pp 
Parsepp $
(pp$ %
ITSQLTokenizerpp% 3
	tokenizerpp4 =
)pp= >
{qq 
returnrr 	
Parserr
 
(rr 
	tokenizerrr 
)rr 
;rr 
}ss 
}tt 
}uu �;
iC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLHavingClauseParser.cs
	namespace

 	
TSQL


 
.

 
Clauses

 
.

 
Parsers

 
{ 
internal 	
class
 "
TSQLHavingClauseParser &
:' (
ITSQLClauseParser) :
{ 
public 
TSQLHavingClause	 
Parse 
(  
ITSQLTokenizer  .
	tokenizer/ 8
)8 9
{ 
TSQLHavingClause 
having 
= 
new  
TSQLHavingClause! 1
(1 2
)2 3
;3 4
if 
( 
! 
	tokenizer 
. 
Current 
. 
	IsKeyword #
(# $
TSQLKeywords$ 0
.0 1
HAVING1 7
)7 8
)8 9
{ 
throw 	
new
  
ApplicationException "
(" #
$str# 5
)5 6
;6 7
} 
having 	
.	 

Tokens
 
. 
Add 
( 
	tokenizer 
. 
Current &
)& '
;' (
int 
nestedLevel 
= 
$num 
; 
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
	tokenizer 
. 
Current 
. 
IsCharacter "
(" #
TSQLCharacters# 1
.1 2
	Semicolon2 ;
); <
&&= ?
! 
( 
nestedLevel   
==   
$num   
&&   
	tokenizer!! 
.!! 
Current!! 
.!! 
IsCharacter!! "
(!!" #
TSQLCharacters!!# 1
.!!1 2
CloseParentheses!!2 B
)!!B C
)"" 
&&"" 
(## 
nestedLevel$$ 
>$$ 
$num$$ 
||$$ 
	tokenizer%% 
.%% 
Current%% 
.%% 
Type%% 
!=%% 
TSQLTokenType%% ,
.%%, -
Keyword%%- 4
||%%5 7
(&& 
	tokenizer'' 
.'' 
Current'' 
.'' 
Type'' 
=='' 
TSQLTokenType''  -
.''- .
Keyword''. 5
&&''6 8
	tokenizer(( 
.(( 
Current(( 
.(( 
	AsKeyword(( !
.((! "
Keyword((" )
.(() *
In((* ,
()) 
TSQLKeywords** 
.** 
NULL** 
,** 
TSQLKeywords++ 
.++ 
CASE++ 
,++ 
TSQLKeywords,, 
.,, 
WHEN,, 
,,, 
TSQLKeywords-- 
.-- 
THEN-- 
,-- 
TSQLKeywords.. 
... 
ELSE.. 
,.. 
TSQLKeywords// 
.// 
AND// 
,// 
TSQLKeywords00 
.00 
OR00 
,00 
TSQLKeywords11 
.11 
BETWEEN11 
,11 
TSQLKeywords22 
.22 
EXISTS22 
,22 
TSQLKeywords33 
.33 
END33 
,33 
TSQLKeywords44 
.44 
IN44 
,44 
TSQLKeywords55 
.55 
IS55 
,55 
TSQLKeywords66 
.66 
NOT66 
,66 
TSQLKeywords77 
.77 
LIKE77 
)88 
)99 
):: 
):: 
{;; 
having<< 

.<<
 
Tokens<< 
.<< 
Add<< 
(<< 
	tokenizer<< 
.<<  
Current<<  '
)<<' (
;<<( )
if>> 
(>> 
	tokenizer>> 
.>> 
Current>> 
.>> 
Type>> 
==>> !
TSQLTokenType>>" /
.>>/ 0
	Character>>0 9
)>>9 :
{?? 
TSQLCharacters@@ 
	character@@ 
=@@ 
	tokenizer@@  )
.@@) *
Current@@* 1
.@@1 2
AsCharacter@@2 =
.@@= >
	Character@@> G
;@@G H
ifBB 
(BB 	
	characterBB	 
==BB 
TSQLCharactersBB $
.BB$ %
OpenParenthesesBB% 4
)BB4 5
{CC 
nestedLevelEE 
++EE 
;EE 
ifGG 
(GG	 

	tokenizerGG
 
.GG 
MoveNextGG 
(GG 
)GG 
)GG 
{HH 
ifII 	
(II
 
	tokenizerII 
.II 
CurrentII 
.II 
	IsKeywordII &
(II& '
TSQLKeywordsII' 3
.II3 4
SELECTII4 :
)II: ;
)II; <
{JJ 
TSQLSelectStatementKK 
selectStatementKK +
=KK, -
newKK. 1%
TSQLSelectStatementParserKK2 K
(KKK L
)KKL M
.KKM N
ParseKKN S
(KKS T
	tokenizerKKT ]
)KK] ^
;KK^ _
havingMM 
.MM 
TokensMM 
.MM 
AddRangeMM 
(MM 
selectStatementMM .
.MM. /
TokensMM/ 5
)MM5 6
;MM6 7
ifOO 

(OO 
	tokenizerOO 
.OO 
CurrentOO 
.OO 
IsCharacterOO )
(OO) *
TSQLCharactersOO* 8
.OO8 9
CloseParenthesesOO9 I
)OOI J
)OOJ K
{PP 	
nestedLevelQQ	 
--QQ 
;QQ 
havingRR	 
.RR 
TokensRR 
.RR 
AddRR 
(RR 
	tokenizerRR $
.RR$ %
CurrentRR% ,
)RR, -
;RR- .
}SS 	
}TT 
elseUU 
ifUU 
(UU 
	tokenizerUU 
.UU 
CurrentUU !
.UU! "
IsCharacterUU" -
(UU- .
TSQLCharactersVV 
.VV 
CloseParenthesesVV '
)VV' (
)VV( )
{WW 
nestedLevelXX 
--XX 
;XX 
havingYY 
.YY 
TokensYY 
.YY 
AddYY 
(YY 
	tokenizerYY #
.YY# $
CurrentYY$ +
)YY+ ,
;YY, -
}ZZ 
else[[ 
{\\ 
having]] 
.]] 
Tokens]] 
.]] 
Add]] 
(]] 
	tokenizer]] #
.]]# $
Current]]$ +
)]]+ ,
;]], -
}^^ 
}__ 
}`` 
elseaa 	
ifaa
 
(aa 
	characteraa 
==aa 
TSQLCharactersaa )
.aa) *
CloseParenthesesaa* :
)aa: ;
{bb 
nestedLevelcc 
--cc 
;cc 
}dd 
}ee 
}ff 
returnhh 	
havinghh
 
;hh 
}ii 

TSQLClausekk 
ITSQLClauseParserkk 
.kk 
Parsekk $
(kk$ %
ITSQLTokenizerkk% 3
	tokenizerkk4 =
)kk= >
{ll 
returnmm 	
Parsemm
 
(mm 
	tokenizermm 
)mm 
;mm 
}nn 
}oo 
}pp �
gC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLIntoClauseParser.cs
	namespace 	
TSQL
 
. 
Clauses 
. 
Parsers 
{		 
internal

 	
class


  
TSQLIntoClauseParser

 $
:

% &
ITSQLClauseParser

' 8
{ 
public 
TSQLIntoClause	 
Parse 
( 
ITSQLTokenizer ,
	tokenizer- 6
)6 7
{ 
TSQLIntoClause 
into 
= 
new 
TSQLIntoClause +
(+ ,
), -
;- .
if 
( 
! 
	tokenizer 
. 
Current "
." #
	IsKeyword# ,
(, -
TSQLKeywords- 9
.9 :
INTO: >
)> ?
)? @
{ 
throw 
new  
ApplicationException .
(. /
$str/ ?
)? @
;@ A
} 
into 
. 
Tokens 
. 
Add 
( 
	tokenizer %
.% &
Current& -
)- .
;. /
while 
( 
	tokenizer 
. 
MoveNext 
( 
) 
&& 
( 
	tokenizer 
. 
Current 
. 
Type 
== 
TSQLTokenType ,
., -

Identifier- 7
||8 :
	tokenizer 
. 
Current 
. 
IsCharacter "
(" #
TSQLCharacters# 1
.1 2
Period2 8
)8 9
||: <
	tokenizer 
. 
Current 
. 
Type 
== 
TSQLTokenType ,
., -

Whitespace- 7
||8 :
	tokenizer 
. 
Current 
. 
Type 
== 
TSQLTokenType ,
., -
SingleLineComment- >
||? A
	tokenizer 
. 
Current 
. 
Type 
== 
TSQLTokenType ,
., -
MultilineComment- =
) 
) 
{   
into!! 
.!! 	
Tokens!!	 
.!! 
Add!! 
(!! 
	tokenizer!! 
.!! 
Current!! %
)!!% &
;!!& '
}"" 
return$$ 	
into$$
 
;$$ 
}%% 

TSQLClause'' 
ITSQLClauseParser'' 
.'' 
Parse'' $
(''$ %
ITSQLTokenizer''% 3
	tokenizer''4 =
)''= >
{(( 
return)) 	
Parse))
 
()) 
	tokenizer)) 
))) 
;)) 
}** 
}++ 
},, �?
jC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLOrderByClauseParser.cs
	namespace

 	
TSQL


 
.

 
Clauses

 
.

 
Parsers

 
{ 
internal 	
class
 #
TSQLOrderByClauseParser '
:( )
ITSQLClauseParser* ;
{ 
public 
TSQLOrderByClause	 
Parse  
(  !
ITSQLTokenizer! /
	tokenizer0 9
)9 :
{ 
TSQLOrderByClause 
orderBy 
= 
new "
TSQLOrderByClause# 4
(4 5
)5 6
;6 7
if 
( 
! 
	tokenizer 
. 
Current 
. 
	IsKeyword #
(# $
TSQLKeywords$ 0
.0 1
ORDER1 6
)6 7
)7 8
{ 
throw 	
new
  
ApplicationException "
(" #
$str# 4
)4 5
;5 6
} 
orderBy 

.
 
Tokens 
. 
Add 
( 
	tokenizer 
.  
Current  '
)' (
;( )
int 
nestedLevel 
= 
$num 
; 
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
	tokenizer 
. 
Current 
. 
IsCharacter "
(" #
TSQLCharacters# 1
.1 2
	Semicolon2 ;
); <
&&= ?
! 
( 
nestedLevel   
==   
$num   
&&   
	tokenizer!! 
.!! 
Current!! 
.!! 
IsCharacter!! "
(!!" #
TSQLCharacters!!# 1
.!!1 2
CloseParentheses!!2 B
)!!B C
)"" 
&&"" 
(## 
nestedLevel$$ 
>$$ 
$num$$ 
||$$ 
	tokenizer%% 
.%% 
Current%% 
.%% 
Type%% 
!=%% 
TSQLTokenType%% ,
.%%, -
Keyword%%- 4
||%%5 7
(&& 
	tokenizer'' 
.'' 
Current'' 
.'' 
Type'' 
=='' 
TSQLTokenType''  -
.''- .
Keyword''. 5
&&''6 8
	tokenizer(( 
.(( 
Current(( 
.(( 
	AsKeyword(( !
.((! "
Keyword((" )
.(() *
In((* ,
()) 
TSQLKeywords** 
.** 
BY** 
,** 
TSQLKeywords++ 
.++ 
NULL++ 
,++ 
TSQLKeywords,, 
.,, 
CASE,, 
,,, 
TSQLKeywords-- 
.-- 
WHEN-- 
,-- 
TSQLKeywords.. 
... 
THEN.. 
,.. 
TSQLKeywords// 
.// 
ELSE// 
,// 
TSQLKeywords00 
.00 
AND00 
,00 
TSQLKeywords11 
.11 
OR11 
,11 
TSQLKeywords22 
.22 
BETWEEN22 
,22 
TSQLKeywords33 
.33 
EXISTS33 
,33 
TSQLKeywords44 
.44 
END44 
,44 
TSQLKeywords55 
.55 
IN55 
,55 
TSQLKeywords66 
.66 
IS66 
,66 
TSQLKeywords77 
.77 
NOT77 
,77 
TSQLKeywords88 
.88 
OVER88 
,88 
TSQLKeywords99 
.99 
LIKE99 
,99 
TSQLKeywords:: 
.:: 
ASC:: 
,:: 
TSQLKeywords;; 
.;; 
DESC;; 
,;; 
TSQLKeywords<< 
.<< 
FETCH<< 
,<< 
TSQLKeywords== 
.== 
COLLATE== 
)>> 
)?? 
)@@ 
)@@ 
{AA 
orderByBB 
.BB 
TokensBB 
.BB 
AddBB 
(BB 
	tokenizerBB  
.BB  !
CurrentBB! (
)BB( )
;BB) *
ifDD 
(DD 
	tokenizerDD 
.DD 
CurrentDD 
.DD 
TypeDD 
==DD !
TSQLTokenTypeDD" /
.DD/ 0
	CharacterDD0 9
)DD9 :
{EE 
TSQLCharactersFF 
	characterFF 
=FF 
	tokenizerFF  )
.FF) *
CurrentFF* 1
.FF1 2
AsCharacterFF2 =
.FF= >
	CharacterFF> G
;FFG H
ifHH 
(HH 	
	characterHH	 
==HH 
TSQLCharactersHH $
.HH$ %
OpenParenthesesHH% 4
)HH4 5
{II 
nestedLevelKK 
++KK 
;KK 
ifMM 
(MM	 

	tokenizerMM
 
.MM 
MoveNextMM 
(MM 
)MM 
)MM 
{NN 
ifOO 	
(OO
 
	tokenizerOO 
.OO 
CurrentOO 
.OO 
	IsKeywordOO &
(OO& '
TSQLKeywordsOO' 3
.OO3 4
SELECTOO4 :
)OO: ;
)OO; <
{PP 
TSQLSelectStatementQQ 
selectStatementQQ +
=QQ, -
newQQ. 1%
TSQLSelectStatementParserQQ2 K
(QQK L
)QQL M
.QQM N
ParseQQN S
(QQS T
	tokenizerQQT ]
)QQ] ^
;QQ^ _
orderBySS 
.SS 
TokensSS 
.SS 
AddRangeSS 
(SS  
selectStatementSS  /
.SS/ 0
TokensSS0 6
)SS6 7
;SS7 8
ifUU 

(UU 
	tokenizerUU 
.UU 
CurrentUU 
.UU 
IsCharacterUU )
(UU) *
TSQLCharactersUU* 8
.UU8 9
CloseParenthesesUU9 I
)UUI J
)UUJ K
{VV 	
nestedLevelWW	 
--WW 
;WW 
orderByXX	 
.XX 
TokensXX 
.XX 
AddXX 
(XX 
	tokenizerXX %
.XX% &
CurrentXX& -
)XX- .
;XX. /
}YY 	
}ZZ 
else[[ 
if[[ 
([[ 
	tokenizer[[ 
.[[ 
Current[[ !
.[[! "
IsCharacter[[" -
([[- .
TSQLCharacters\\ 
.\\ 
CloseParentheses\\ '
)\\' (
)\\( )
{]] 
nestedLevel^^ 
--^^ 
;^^ 
orderBy__ 
.__ 
Tokens__ 
.__ 
Add__ 
(__ 
	tokenizer__ $
.__$ %
Current__% ,
)__, -
;__- .
}`` 
elseaa 
{bb 
orderBycc 
.cc 
Tokenscc 
.cc 
Addcc 
(cc 
	tokenizercc $
.cc$ %
Currentcc% ,
)cc, -
;cc- .
}dd 
}ee 
}ff 
elsegg 	
ifgg
 
(gg 
	charactergg 
==gg 
TSQLCharactersgg )
.gg) *
CloseParenthesesgg* :
)gg: ;
{hh 
nestedLevelii 
--ii 
;ii 
}jj 
}kk 
}ll 
returnnn 	
orderBynn
 
;nn 
}oo 

TSQLClauseqq 
ITSQLClauseParserqq 
.qq 
Parseqq $
(qq$ %
ITSQLTokenizerqq% 3
	tokenizerqq4 =
)qq= >
{rr 
returnss 	
Parsess
 
(ss 
	tokenizerss 
)ss 
;ss 
}tt 
}uu 
}vv �@
iC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLSelectClauseParser.cs
	namespace

 	
TSQL


 
.

 
Clauses

 
.

 
Parsers

 
{ 
internal 	
class
 "
TSQLSelectClauseParser &
:' (
ITSQLClauseParser) :
{ 
public 
TSQLSelectClause	 
Parse 
(  
ITSQLTokenizer  .
	tokenizer/ 8
)8 9
{ 
TSQLSelectClause 
select 
= 
new  
TSQLSelectClause! 1
(1 2
)2 3
;3 4
if 
( 
! 
	tokenizer 
. 
Current 
. 
	IsKeyword #
(# $
TSQLKeywords$ 0
.0 1
SELECT1 7
)7 8
)8 9
{ 
throw 	
new
  
ApplicationException "
(" #
$str# 5
)5 6
;6 7
} 
select 	
.	 

Tokens
 
. 
Add 
( 
	tokenizer 
. 
Current &
)& '
;' (
int 
nestedLevel 
= 
$num 
; 
while!! 
(!!	 

	tokenizer"" 
."" 
MoveNext"" 
("" 
)"" 
&&"" 
!## 
	tokenizer## 
.## 
Current## 
.## 
IsCharacter## "
(##" #
TSQLCharacters### 1
.##1 2
	Semicolon##2 ;
)##; <
&&##= ?
!$$ 
($$ 
nestedLevel%% 
==%% 
$num%% 
&&%% 
	tokenizer&& 
.&& 
Current&& 
.&& 
IsCharacter&& "
(&&" #
TSQLCharacters&&# 1
.&&1 2
CloseParentheses&&2 B
)&&B C
)'' 
&&'' 
((( 
nestedLevel)) 
>)) 
$num)) 
||)) 
	tokenizer** 
.** 
Current** 
.** 
Type** 
!=** 
TSQLTokenType** ,
.**, -
Keyword**- 4
||**5 7
(++ 
	tokenizer,, 
.,, 
Current,, 
.,, 
Type,, 
==,, 
TSQLTokenType,,  -
.,,- .
Keyword,,. 5
&&,,6 8
	tokenizer-- 
.-- 
Current-- 
.-- 
	AsKeyword-- !
.--! "
Keyword--" )
.--) *
In--* ,
(.. 
TSQLKeywords// 
.// 
ALL// 
,// 
TSQLKeywords00 
.00 
AS00 
,00 
TSQLKeywords11 
.11 
DISTINCT11 
,11 
TSQLKeywords22 
.22 
PERCENT22 
,22 
TSQLKeywords33 
.33 
TOP33 
,33 
TSQLKeywords44 
.44 
WITH44 
,44 
TSQLKeywords55 
.55 
NULL55 
,55 
TSQLKeywords66 
.66 
CASE66 
,66 
TSQLKeywords77 
.77 
WHEN77 
,77 
TSQLKeywords88 
.88 
THEN88 
,88 
TSQLKeywords99 
.99 
ELSE99 
,99 
TSQLKeywords:: 
.:: 
AND:: 
,:: 
TSQLKeywords;; 
.;; 
OR;; 
,;; 
TSQLKeywords<< 
.<< 
BETWEEN<< 
,<< 
TSQLKeywords== 
.== 
EXISTS== 
,== 
TSQLKeywords>> 
.>> 
END>> 
,>> 
TSQLKeywords?? 
.?? 
IN?? 
,?? 
TSQLKeywords@@ 
.@@ 
IS@@ 
,@@ 
TSQLKeywordsAA 
.AA 
NOTAA 
,AA 
TSQLKeywordsBB 
.BB 
OVERBB 
,BB 
TSQLKeywordsCC 
.CC 
IDENTITYCC 
,CC 
TSQLKeywordsDD 
.DD 
LIKEDD 
)EE 
)FF 
)GG 
)GG 
{HH 
selectII 

.II
 
TokensII 
.II 
AddII 
(II 
	tokenizerII 
.II  
CurrentII  '
)II' (
;II( )
ifKK 
(KK 
	tokenizerKK 
.KK 
CurrentKK 
.KK 
TypeKK 
==KK !
TSQLTokenTypeKK" /
.KK/ 0
	CharacterKK0 9
)KK9 :
{LL 
TSQLCharactersMM 
	characterMM 
=MM 
	tokenizerMM  )
.MM) *
CurrentMM* 1
.MM1 2
AsCharacterMM2 =
.MM= >
	CharacterMM> G
;MMG H
ifOO 
(OO 	
	characterOO	 
==OO 
TSQLCharactersOO $
.OO$ %
OpenParenthesesOO% 4
)OO4 5
{PP 
nestedLevelRR 
++RR 
;RR 
ifTT 
(TT	 

	tokenizerTT
 
.TT 
MoveNextTT 
(TT 
)TT 
)TT 
{UU 
ifVV 	
(VV
 
	tokenizerVV 
.VV 
CurrentVV 
.VV 
	IsKeywordVV &
(VV& '
TSQLKeywordsWW 
.WW 
SELECTWW 
)WW 
)WW 
{XX 
TSQLSelectStatementYY 
selectStatementYY +
=YY, -
newYY. 1%
TSQLSelectStatementParserYY2 K
(YYK L
)YYL M
.YYM N
ParseYYN S
(YYS T
	tokenizerYYT ]
)YY] ^
;YY^ _
select[[ 
.[[ 
Tokens[[ 
.[[ 
AddRange[[ 
([[ 
selectStatement[[ .
.[[. /
Tokens[[/ 5
)[[5 6
;[[6 7
if]]  "
(]]# $
	tokenizer]]$ -
.]]- .
Current]]. 5
.]]5 6
IsCharacter]]6 A
(]]A B
TSQLCharacters^^	 
.^^ 
CloseParentheses^^ (
)^^( )
)^^) *
{__  !
nestedLevel``$ /
--``/ 1
;``1 2
selectaa$ *
.aa* +
Tokensaa+ 1
.aa1 2
Addaa2 5
(aa5 6
	tokenizeraa6 ?
.aa? @
Currentaa@ G
)aaG H
;aaH I
}bb  !
}cc 
elsedd 
ifdd 
(dd 
	tokenizerdd 
.dd 
Currentdd !
.dd! "
IsCharacterdd" -
(dd- .
TSQLCharactersee 
.ee 
CloseParenthesesee '
)ee' (
)ee( )
{ff 
nestedLevelgg 
--gg 
;gg 
selecthh 
.hh 
Tokenshh 
.hh 
Addhh 
(hh 
	tokenizerhh #
.hh# $
Currenthh$ +
)hh+ ,
;hh, -
}ii 
elsejj 
{kk 
selectll 
.ll 
Tokensll 
.ll 
Addll 
(ll 
	tokenizerll #
.ll# $
Currentll$ +
)ll+ ,
;ll, -
}mm 
}nn 
}oo 
elsepp 	
ifpp
 
(pp 
	characterpp 
==pp 
TSQLCharacterspp )
.pp) *
CloseParenthesespp* :
)pp: ;
{qq 
nestedLevelrr 
--rr 
;rr 
}ss 
}tt 
}uu 
returnww 	
selectww
 
;ww 
}xx 

TSQLClausezz 
ITSQLClauseParserzz 
.zz 
Parsezz $
(zz$ %
ITSQLTokenizerzz% 3
	tokenizerzz4 =
)zz= >
{{{ 
return|| 	
Parse||
 
(|| 
	tokenizer|| 
)|| 
;|| 
}}} 
}~~ 
} �;
hC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\Parsers\TSQLWhereClauseParser.cs
	namespace

 	
TSQL


 
.

 
Clauses

 
.

 
Parsers

 
{ 
internal 	
class
 !
TSQLWhereClauseParser %
:& '
ITSQLClauseParser( 9
{ 
public 
TSQLWhereClause	 
Parse 
( 
ITSQLTokenizer -
	tokenizer. 7
)7 8
{ 
TSQLWhereClause 
where 
= 
new 
TSQLWhereClause .
(. /
)/ 0
;0 1
if 
( 
! 
	tokenizer 
. 
Current "
." #
	IsKeyword# ,
(, -
TSQLKeywords- 9
.9 :
WHERE: ?
)? @
)@ A
{ 
throw 
new  
ApplicationException .
(. /
$str/ @
)@ A
;A B
} 
where 
. 
Tokens 
. 
Add 
( 
	tokenizer &
.& '
Current' .
). /
;/ 0
int 
nestedLevel 
= 
$num 
;  
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
	tokenizer 
. 
Current 
. 
IsCharacter "
(" #
TSQLCharacters# 1
.1 2
	Semicolon2 ;
); <
&&= ?
! 
( 
nestedLevel   
==   
$num   
&&   
	tokenizer!! 
.!! 
Current!! 
.!! 
IsCharacter!! "
(!!" #
TSQLCharacters!!# 1
.!!1 2
CloseParentheses!!2 B
)!!B C
)"" 
&&"" 
(## 
nestedLevel$$ 
>$$ 
$num$$ 
||$$ 
	tokenizer%% 
.%% 
Current%% 
.%% 
Type%% 
!=%% 
TSQLTokenType%% ,
.%%, -
Keyword%%- 4
||%%5 7
(&& 
	tokenizer'' 
.'' 
Current'' 
.'' 
Type'' 
=='' 
TSQLTokenType''  -
.''- .
Keyword''. 5
&&''6 8
	tokenizer(( 
.(( 
Current(( 
.(( 
	AsKeyword(( !
.((! "
Keyword((" )
.(() *
In((* ,
()) 
TSQLKeywords** 
.** 
NULL** 
,** 
TSQLKeywords++ 
.++ 
CASE++ 
,++ 
TSQLKeywords,, 
.,, 
WHEN,, 
,,, 
TSQLKeywords-- 
.-- 
THEN-- 
,-- 
TSQLKeywords.. 
... 
ELSE.. 
,.. 
TSQLKeywords// 
.// 
AND// 
,// 
TSQLKeywords00 
.00 
OR00 
,00 
TSQLKeywords11 
.11 
BETWEEN11 
,11 
TSQLKeywords22 
.22 
EXISTS22 
,22 
TSQLKeywords33 
.33 
END33 
,33 
TSQLKeywords44 
.44 
IN44 
,44 
TSQLKeywords55 
.55 
IS55 
,55 
TSQLKeywords66 
.66 
NOT66 
,66 
TSQLKeywords77 
.77 
LIKE77 
)88 
)99 
):: 
):: 
{;; 
where<< 	
.<<	 

Tokens<<
 
.<< 
Add<< 
(<< 
	tokenizer<< 
.<< 
Current<< &
)<<& '
;<<' (
if>> 
(>> 
	tokenizer>> 
.>> 
Current>> 
.>> 
Type>> 
==>> !
TSQLTokenType>>" /
.>>/ 0
	Character>>0 9
)>>9 :
{?? 
TSQLCharacters@@ 
	character@@ 
=@@ 
	tokenizer@@  )
.@@) *
Current@@* 1
.@@1 2
AsCharacter@@2 =
.@@= >
	Character@@> G
;@@G H
ifBB 
(BB 	
	characterBB	 
==BB 
TSQLCharactersBB $
.BB$ %
OpenParenthesesBB% 4
)BB4 5
{CC 
nestedLevelEE 
++EE 
;EE 
ifGG 
(GG	 

	tokenizerGG
 
.GG 
MoveNextGG 
(GG 
)GG 
)GG 
{HH 
ifII 	
(II
 
	tokenizerII 
.II 
CurrentII 
.II 
	IsKeywordII &
(II& '
TSQLKeywordsII' 3
.II3 4
SELECTII4 :
)II: ;
)II; <
{JJ 
TSQLSelectStatementKK 
selectStatementKK +
=KK, -
newKK. 1%
TSQLSelectStatementParserKK2 K
(KKK L
)KKL M
.KKM N
ParseKKN S
(KKS T
	tokenizerKKT ]
)KK] ^
;KK^ _
whereMM 
.MM 
TokensMM 
.MM 
AddRangeMM 
(MM 
selectStatementMM -
.MM- .
TokensMM. 4
)MM4 5
;MM5 6
ifOO 

(OO 
	tokenizerOO 
.OO 
CurrentOO 
.OO 
IsCharacterOO )
(OO) *
TSQLCharactersOO* 8
.OO8 9
CloseParenthesesOO9 I
)OOI J
)OOJ K
{PP 	
nestedLevelQQ	 
--QQ 
;QQ 
whereRR	 
.RR 
TokensRR 
.RR 
AddRR 
(RR 
	tokenizerRR #
.RR# $
CurrentRR$ +
)RR+ ,
;RR, -
}SS 	
}TT 
elseUU 
ifUU 
(UU 
	tokenizerUU 
.UU 
CurrentUU !
.UU! "
IsCharacterUU" -
(UU- .
TSQLCharactersVV 
.VV 
CloseParenthesesVV '
)VV' (
)VV( )
{WW 
nestedLevelXX 
--XX 
;XX 
whereYY 
.YY 
TokensYY 
.YY 
AddYY 
(YY 
	tokenizerYY "
.YY" #
CurrentYY# *
)YY* +
;YY+ ,
}ZZ 
else[[ 
{\\ 
where]] 
.]] 
Tokens]] 
.]] 
Add]] 
(]] 
	tokenizer]] "
.]]" #
Current]]# *
)]]* +
;]]+ ,
}^^ 
}__ 
}`` 
elseaa 	
ifaa
 
(aa 
	characteraa 
==aa 
TSQLCharactersaa )
.aa) *
CloseParenthesesaa* :
)aa: ;
{bb 
nestedLevelcc 
--cc 
;cc 
}dd 
}ee 
}ff 
returnhh 	
wherehh
 
;hh 
}ii 

TSQLClausekk 
ITSQLClauseParserkk 
.kk 
Parsekk $
(kk$ %
ITSQLTokenizerkk% 3
	tokenizerkk4 =
)kk= >
{ll 
returnmm 	
Parsemm
 
(mm 
	tokenizermm 
)mm 
;mm 
}nn 
}oo 
}pp �
UC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{		 
public

 
abstract

 
class

 

TSQLClause

 !
{ 
private 	
List
 
< 
	TSQLToken 
> 
_tokens !
=" #
new$ '
List( ,
<, -
	TSQLToken- 6
>6 7
(7 8
)8 9
;9 :
public 
List	 
< 
	TSQLToken 
> 
Tokens 
{ 
get 
{ 
return 

_tokens 
; 
} 
} 
} 
} �
YC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLFromClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLFromClause 
: 

TSQLClause )
{		 
internal

 

TSQLFromClause

 
(

 
)

 
{ 
} 
} 
} �
\C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLGroupByClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLGroupByClause 
:  !

TSQLClause" ,
{		 
internal

 

TSQLGroupByClause

 
(

 
)

 
{ 
} 
} 
} �
[C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLHavingClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLHavingClause 
:  

TSQLClause! +
{		 
internal

 

TSQLHavingClause

 
(

 
)

 
{ 
} 
} 
} �
YC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLIntoClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLIntoClause 
: 

TSQLClause )
{		 
internal

 

TSQLIntoClause

 
(

 
)

 
{ 
} 
} 
} �
[C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLOptionClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLOptionClause 
:  

TSQLClause! +
{		 
internal

 

TSQLOptionClause

 
(

 
)

 
{ 
} 
} 
} �
\C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLOrderByClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLOrderByClause 
:  !

TSQLClause" ,
{		 
internal

 

TSQLOrderByClause

 
(

 
)

 
{ 
} 
} 
} �
[C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLSelectClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLSelectClause 
:  

TSQLClause! +
{		 
internal

 

TSQLSelectClause

 
(

 
)

 
{ 
} 
} 
} �
ZC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLWhereClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLWhereClause 
: 

TSQLClause  *
{		 
internal

 

TSQLWhereClause

 
(

 
)

 
{ 
} 
} 
} �
YC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Clauses\TSQLWithClause.cs
	namespace 	
TSQL
 
. 
Clauses 
{ 
public 
class 
TSQLWithClause 
: 

TSQLClause )
{		 
}

 
} �*
XC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\IO\BufferedTextReader.cs
	namespace 	
TSQL
 
. 
IO 
{ 
internal 	
class
 
BufferedTextReader "
:# $
ICharacterReader% 5
{		 
private

 	

TextReader


 
_inputStream

 !
=

" #
null

$ (
;

( )
private 	
char
 
[ 
] 
_buffer 
= 
new 
char #
[# $
$num$ (
]( )
;) *
private 	
int
 
	_position 
= 
$num 
; 
private 	
int
 
_read 
= 
$num 
; 
private 	
bool
 
_hasMore 
= 
true 
; 
public 
BufferedTextReader	 
( 

TextReader &
inputStream' 2
)2 3
{ 
_inputStream 
= 
inputStream 
; 
} 
char 
IEnumerator 
< 
char 
> 
. 
Current  
{ 
get 
{ 
if 
( 
_hasMore 
) 
{ 
return 
_buffer 
[ 
	_position 
] 
; 
} 
else 
{ 
return 
char 
. 
MinValue 
; 
}   
}!! 
}"" 
bool$$ 
IEnumerator$$ 
.$$ 
MoveNext$$ 
($$ 
)$$ 
{%% 
if&& 
(&& 
_hasMore&& 
)&& 
{'' 
if(( 
((( 
	_position(( 
>=(( 
_read(( 
-(( 
$num(( 
)(( 
{)) 
_read** 

=** 
_inputStream** 
.** 
Read** 
(** 
_buffer** &
,**& '
$num**( )
,**) *
_buffer**+ 2
.**2 3
Length**3 9
)**9 :
;**: ;
	_position++ 
=++ 
$num++ 
;++ 
_hasMore,, 
=,, 
_read,, 
>,, 
$num,, 
;,, 
return-- 
_hasMore-- 
;-- 
}.. 
	_position00 
++00 
;00 
return11 

true11 
;11 
}22 
else33 
{44 
return55 

false55 
;55 
}66 
}77 
object99 
IEnumerator99	 
.99 
Current99 
{:: 
get;; 
{<< 
return== 

(== 
this== 
as== 
IEnumerator== 
<==  
char==  $
>==$ %
)==% &
.==& '
Current==' .
;==. /
}>> 
}?? 
voidAA 
IEnumeratorAA 
.AA 
ResetAA 
(AA 
)AA 
{BB 
throwCC 
newCC	 !
NotSupportedExceptionCC "
(CC" #
$strCC# t
+CCu v
GetTypeCCw ~
(CC~ 
)	CC �
.
CC� �
FullName
CC� �
+
CC� �
$str
CC� �
)
CC� �
;
CC� �
}DD 
IEnumeratorFF 
<FF 
charFF 
>FF 
IEnumerableFF 
<FF  
charFF  $
>FF$ %
.FF% &
GetEnumeratorFF& 3
(FF3 4
)FF4 5
{GG 
returnHH 	
thisHH
 
;HH 
}II 
IEnumeratorKK 
IEnumerableKK 
.KK 
GetEnumeratorKK '
(KK' (
)KK( )
{LL 
returnMM 	
thisMM
 
;MM 
}NN 
privateRR 	
boolRR
 
disposedRR 
=RR 
falseRR 
;RR  
voidTT 
IDisposableTT 
.TT 
DisposeTT 
(TT 
)TT 
{UU 
ifVV 
(VV 
!VV 
disposedVV 
)VV 
{WW 
DisposeXX 
(XX 
trueXX 
)XX 
;XX 
}YY 
}ZZ 
privatecc 	
voidcc
 
Disposecc 
(cc 
boolcc 
	disposingcc %
)cc% &
{dd 
ifee 
(ee 
!ee 
disposedee 
)ee 
{ff 
ifhh 
(hh 
	disposinghh 
)hh 
{ii 
}kk 
trynn 
{oo 
(pp 
_inputStreampp 
aspp 
IDisposablepp !
)pp! "
.pp" #
Disposepp# *
(pp* +
)pp+ ,
;pp, -
}qq 
catchrr 	
(rr
 
	Exceptionrr 
)rr 
{ss 
}uu 
_inputStreamvv 
=vv 
nullvv 
;vv 
disposedxx 
=xx 
truexx 
;xx 
}yy 
}zz 
}}} 
}~~ �
VC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\IO\ICharacterReader.cs
	namespace 	
TSQL
 
. 
IO 
{ 
internal		 	
	interface		
 
ICharacterReader		 $
:		% &
IDisposable		' 2
,		2 3
IEnumerator		4 ?
,		? @
IEnumerable		A L
,		L M
IEnumerator		N Y
<		Y Z
char		Z ^
>		^ _
,		_ `
IEnumerable		a l
<		l m
char		m q
>		q r
{

 
} 
} �
YC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\IO\TSQLCharacterReader.cs
	namespace		 	
TSQL		
 
.		 
IO		 
{

 
internal 	
partial
 
class 
TSQLCharacterReader +
{ 
private 	
ICharacterReader
 
_inputStream '
=( )
null* .
;. /
private 	
bool
 
_hasMore 
= 
true 
; 
private 	
bool
 
	_hasExtra 
= 
false  
;  !
private 	
char
 

_extraChar 
; 
public 
TSQLCharacterReader	 
( 

TextReader '
inputStream( 3
)3 4
{ 
_inputStream 
= 
new 
BufferedTextReader (
(( )
inputStream) 4
)4 5
;5 6
Position 
= 
- 
$num 
; 
} 
public 
bool	 
Read 
( 
) 
{ 
if 
( 
_hasMore 
) 
{ 
if 
( 
	_hasExtra 
) 
{ 
Current   
=   

_extraChar   
;   
	_hasExtra!! 
=!! 
false!! 
;!! 
}"" 
else## 
{$$ 
_hasMore%% 
=%% 
_inputStream%% 
.%% 
MoveNext%% %
(%%% &
)%%& '
;%%' (
if&& 
(&& 	
_hasMore&&	 
)&& 
{'' 
Current(( 
=(( 
_inputStream(( 
.(( 
Current(( $
;(($ %
Position)) 
++)) 
;)) 
}** 
else++ 	
{,, 
Current-- 
=-- 
char-- 
.-- 
MinValue-- 
;-- 
}.. 
}// 
}00 
return22 	
_hasMore22
 
;22 
}33 
public55 
bool55	 !
ReadNextNonWhitespace55 #
(55# $
)55$ %
{66 
bool77 
hasNext77 
;77 
do99 
{:: 
hasNext;; 
=;; 
Read;; 
(;; 
);; 
;;; 
}<< 
while<< 

(<< 
hasNext<< 
&&<< 
char== 
.== 	
IsWhiteSpace==	 
(== 
Current== 
)== 
)== 
;==  
return?? 	
hasNext??
 
;?? 
}@@ 
publicBB 
voidBB	 
PutbackBB 
(BB 
)BB 
{CC 
	_hasExtraDD 
=DD 
trueDD 
;DD 

_extraCharEE 
=EE 
CurrentEE 
;EE 
_hasMoreFF 
=FF 
trueFF 
;FF 
}GG 
publicII 
charII	 
CurrentII 
{JJ 
getKK 
;KK 
privateMM 

setMM 
;MM 
}NN 
publicPP 
intPP	 
PositionPP 
{QQ 
getRR 
;RR 
privateTT 

setTT 
;TT 
}UU 
publicWW 
boolWW	 
EOFWW 
{XX 
getYY 
{ZZ 
return[[ 

![[ 
_hasMore[[ 
;[[ 
}\\ 
}]] 
}^^ 
}__ �
eC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\IO\TSQLCharacterReader.IDisposable.cs
	namespace 	
TSQL
 
. 
IO 
{ 
partial 
class	 
TSQLCharacterReader "
:# $
IDisposable% 0
{ 
private		 	
bool		
 
	_disposed		 
=		 
false		  
;		  !
void 
IDisposable 
. 
Dispose 
( 
) 
{ 
if 
( 
! 
	_disposed 
) 
{ 
Dispose 
( 
true 
) 
; 
} 
} 
private 	
void
 
Dispose 
( 
bool 
	disposing %
)% &
{ 
if 
( 
! 
	_disposed 
) 
{ 
if 
( 
	disposing 
) 
{   
}"" 
try%% 
{&& 
('' 
_inputStream'' 
as'' 
IDisposable'' !
)''! "
.''" #
Dispose''# *
(''* +
)''+ ,
;'', -
}(( 
catch)) 	
())
 
	Exception)) 
))) 
{** 
},, 
_inputStream-- 
=-- 
null-- 
;-- 
	_disposed// 
=// 
true// 
;// 
}00 
}11 
}44 
}55 �
QC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\ITSQLTokenizer.cs
	namespace		 	
TSQL		
 
{

 
internal 	
	interface
 
ITSQLTokenizer "
:# $
IEnumerator% 0
,0 1
IEnumerable2 =
,= >
IEnumerator? J
<J K
	TSQLTokenK T
>T U
,U V
IEnumerableW b
<b c
	TSQLTokenc l
>l m
{ 
void 
Putback 
( 
) 
; 
} 
} �
ZC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 L
)		L M
]		M N
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *
[&& 
assembly&& 	
:&&	 

InternalsVisibleTo&& 
(&& 
$str&& %
)&&% &
]&&& '�
jC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\Parsers\ITSQLStatementParser.cs
	namespace

 	
TSQL


 
.

 

Statements

 
.

 
Parsers

 !
{ 
internal 	
	interface
  
ITSQLStatementParser (
{ 
TSQLStatement 
Parse 
( 
ITSQLTokenizer $
	tokenizer% .
). /
;/ 0
} 
} �=
oC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\Parsers\TSQLSelectStatementParser.cs
	namespace

 	
TSQL


 
.

 

Statements

 
.

 
Parsers

 !
{ 
internal 	
class
 %
TSQLSelectStatementParser )
:* + 
ITSQLStatementParser, @
{ 
public 
TSQLSelectStatement	 
Parse "
(" #
ITSQLTokenizer# 1
	tokenizer2 ;
); <
{ 
TSQLSelectStatement 
select 
= 
new  #
TSQLSelectStatement$ 7
(7 8
)8 9
;9 :
TSQLSelectClause 
selectClause  
=! "
new# &"
TSQLSelectClauseParser' =
(= >
)> ?
.? @
Parse@ E
(E F
	tokenizerF O
)O P
;P Q
select 	
.	 

Select
 
= 
selectClause 
;  
select 	
.	 

Tokens
 
. 
AddRange 
( 
selectClause &
.& '
Tokens' -
)- .
;. /
if 
( 
	tokenizer 
. 
Current 
. 
	IsKeyword "
(" #
TSQLKeywords# /
./ 0
INTO0 4
)4 5
)5 6
{ 
TSQLIntoClause 

intoClause 
= 
new  # 
TSQLIntoClauseParser$ 8
(8 9
)9 :
.: ;
Parse; @
(@ A
	tokenizerA J
)J K
;K L
select 

.
 
Into 
= 

intoClause 
; 
select 

.
 
Tokens 
. 
AddRange 
( 

intoClause %
.% &
Tokens& ,
), -
;- .
} 
if!! 
(!! 
	tokenizer!! 
.!! 
Current!! 
.!! 
	IsKeyword!! "
(!!" #
TSQLKeywords!!# /
.!!/ 0
FROM!!0 4
)!!4 5
)!!5 6
{"" 
TSQLFromClause## 

fromClause## 
=## 
new##  # 
TSQLFromClauseParser##$ 8
(##8 9
)##9 :
.##: ;
Parse##; @
(##@ A
	tokenizer##A J
)##J K
;##K L
select%% 

.%%
 
From%% 
=%% 

fromClause%% 
;%% 
select'' 

.''
 
Tokens'' 
.'' 
AddRange'' 
('' 

fromClause'' %
.''% &
Tokens''& ,
)'', -
;''- .
}(( 
if** 
(** 
	tokenizer** 
.** 
Current** 
.** 
	IsKeyword** "
(**" #
TSQLKeywords**# /
.**/ 0
WHERE**0 5
)**5 6
)**6 7
{++ 
TSQLWhereClause,, 
whereClause,, 
=,,  !
new,," %!
TSQLWhereClauseParser,,& ;
(,,; <
),,< =
.,,= >
Parse,,> C
(,,C D
	tokenizer,,D M
),,M N
;,,N O
select.. 

...
 
Where.. 
=.. 
whereClause.. 
;.. 
select00 

.00
 
Tokens00 
.00 
AddRange00 
(00 
whereClause00 &
.00& '
Tokens00' -
)00- .
;00. /
}11 
if33 
(33 
	tokenizer33 
.33 
Current33 
.33 
	IsKeyword33 "
(33" #
TSQLKeywords33# /
.33/ 0
GROUP330 5
)335 6
)336 7
{44 
TSQLGroupByClause55 
groupByClause55 #
=55$ %
new55& )#
TSQLGroupByClauseParser55* A
(55A B
)55B C
.55C D
Parse55D I
(55I J
	tokenizer55J S
)55S T
;55T U
select77 

.77
 
GroupBy77 
=77 
groupByClause77 "
;77" #
select99 

.99
 
Tokens99 
.99 
AddRange99 
(99 
groupByClause99 (
.99( )
Tokens99) /
)99/ 0
;990 1
}:: 
if<< 
(<< 
	tokenizer<< 
.<< 
Current<< 
.<< 
	IsKeyword<< "
(<<" #
TSQLKeywords<<# /
.<</ 0
HAVING<<0 6
)<<6 7
)<<7 8
{== 
TSQLHavingClause>> 
havingClause>> !
=>>" #
new>>$ '"
TSQLHavingClauseParser>>( >
(>>> ?
)>>? @
.>>@ A
Parse>>A F
(>>F G
	tokenizer>>G P
)>>P Q
;>>Q R
select@@ 

.@@
 
Having@@ 
=@@ 
havingClause@@  
;@@  !
selectBB 

.BB
 
TokensBB 
.BB 
AddRangeBB 
(BB 
havingClauseBB '
.BB' (
TokensBB( .
)BB. /
;BB/ 0
}CC 
ifEE 
(EE 
	tokenizerEE 
.EE 
CurrentEE 
.EE 
	IsKeywordEE "
(EE" #
TSQLKeywordsEE# /
.EE/ 0
ORDEREE0 5
)EE5 6
)EE6 7
{FF 
TSQLOrderByClauseGG 
orderByClauseGG #
=GG$ %
newGG& )#
TSQLOrderByClauseParserGG* A
(GGA B
)GGB C
.GGC D
ParseGGD I
(GGI J
	tokenizerGGJ S
)GGS T
;GGT U
selectII 

.II
 
OrderByII 
=II 
orderByClauseII "
;II" #
selectKK 

.KK
 
TokensKK 
.KK 
AddRangeKK 
(KK 
orderByClauseKK (
.KK( )
TokensKK) /
)KK/ 0
;KK0 1
}LL 
ifNN 
(NN 
	tokenizerNN 
.NN 
CurrentNN 
.NN 
	IsKeywordNN "
(NN" #
TSQLKeywordsNN# /
.NN/ 0
OPTIONNN0 6
)NN6 7
)NN7 8
{OO 
TSQLOptionClausePP 
optionClausePP !
=PP" #
newPP$ '"
TSQLOptionClauseParserPP( >
(PP> ?
)PP? @
.PP@ A
ParsePPA F
(PPF G
	tokenizerPPG P
)PPP Q
;PPQ R
selectRR 

.RR
 
OptionRR 
=RR 
optionClauseRR  
;RR  !
selectTT 

.TT
 
TokensTT 
.TT 
AddRangeTT 
(TT 
optionClauseTT '
.TT' (
TokensTT( .
)TT. /
;TT/ 0
}UU 
ifWW 
(WW 
	tokenizerXX 
.XX 
CurrentXX 
!=XX 
nullXX 
&&XX  
	tokenizerYY 
.YY 
CurrentYY 
.YY 
TypeYY 
==YY 
TSQLTokenTypeYY +
.YY+ ,
KeywordYY, 3
)YY3 4
{ZZ 
	tokenizer[[ 
.[[ 
Putback[[ 
([[ 
)[[ 
;[[ 
}\\ 
return^^ 	
select^^
 
;^^ 
}__ 
TSQLStatementaa  
ITSQLStatementParseraa $
.aa$ %
Parseaa% *
(aa* +
ITSQLTokenizeraa+ 9
	tokenizeraa: C
)aaC D
{bb 
returncc 	
Parsecc
 
(cc 
	tokenizercc 
)cc 
;cc 
}dd 
}ee 
}ff �
pC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\Parsers\TSQLStatementParserFactory.cs
	namespace 	
TSQL
 
. 

Statements 
. 
Parsers !
{		 
internal

 	
class


 &
TSQLStatementParserFactory

 *
{ 
public  
ITSQLStatementParser	 
Create $
($ %
	TSQLToken% .
token/ 4
)4 5
{ 
if 
( 
token 
. 
Type 
== 
TSQLTokenType "
." #
Keyword# *
)* +
{ 
TSQLKeywords 
keyword 
= 
token  
.  !
	AsKeyword! *
.* +
Keyword+ 2
;2 3
if 
( 
keyword 
== 
TSQLKeywords 
.  
SELECT  &
)& '
{ 
return 
new %
TSQLSelectStatementParser )
() *
)* +
;+ ,
} 
else++ 
{,, 
return-- 
new-- &
TSQLUnknownStatementParser-- *
(--* +
)--+ ,
;--, -
}.. 
}// 
else00 
{11 
return22 

new22 &
TSQLUnknownStatementParser22 )
(22) *
)22* +
;22+ ,
}66 
}77 
}88 
}99 �
pC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\Parsers\TSQLUnknownStatementParser.cs
	namespace 	
TSQL
 
. 

Statements 
. 
Parsers !
{		 
internal

 	
class


 &
TSQLUnknownStatementParser

 *
:

+ , 
ITSQLStatementParser

- A
{ 
public  
TSQLUnknownStatement	 
Parse #
(# $
ITSQLTokenizer$ 2
	tokenizer3 <
)< =
{  
TSQLUnknownStatement 
	statement !
=" #
new$ ' 
TSQLUnknownStatement( <
(< =
)= >
;> ?
	statement 
. 
Tokens 
. 
Add 
( 
	tokenizer !
.! "
Current" )
)) *
;* +
while 
(	 

	tokenizer 
. 
MoveNext 
( 
) 
&& 
! 
( 
	tokenizer 
. 
Current 
is 
TSQLCharacter '
&&( *
	tokenizer 
. 
Current 
. 
AsCharacter "
." #
	Character# ,
==- /
TSQLCharacters0 >
.> ?
	Semicolon? H
) 
) 
{ 
	statement 
. 
Tokens 
. 
Add 
( 
	tokenizer "
." #
Current# *
)* +
;+ ,
} 
if 
( 
	tokenizer 
. 
Current 
!= 
null 
&&  
	tokenizer 
. 
Current 
is 
TSQLCharacter &
&&' )
	tokenizer 
. 
Current 
. 
AsCharacter !
.! "
	Character" +
==, .
TSQLCharacters/ =
.= >
	Semicolon> G
)G H
{   
	statement!! 
.!! 
Tokens!! 
.!! 
Add!! 
(!! 
	tokenizer!! "
.!!" #
Current!!# *
)!!* +
;!!+ ,
}"" 
return$$ 	
	statement$$
 
;$$ 
}%% 
TSQLStatement''  
ITSQLStatementParser'' $
.''$ %
Parse''% *
(''* +
ITSQLTokenizer''+ 9
	tokenizer'': C
)''C D
{(( 
return)) 	
Parse))
 
()) 
	tokenizer)) 
))) 
;)) 
}** 
}++ 
},, �
aC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\TSQLSelectStatement.cs
	namespace 	
TSQL
 
. 

Statements 
{		 
public

 
class

 
TSQLSelectStatement

 !
:

" #
TSQLStatement

$ 1
{ 
internal 

TSQLSelectStatement 
( 
)  
{ 
} 
public 
override	 
TSQLStatementType #
Type$ (
{ 
get 
{ 
return 

TSQLStatementType 
. 
Select #
;# $
} 
} 
public 
TSQLSelectClause	 
Select  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
TSQLIntoClause	 
Into 
{ 
get "
;" #
set$ '
;' (
}) *
public!! 
TSQLFromClause!!	 
From!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
public## 
TSQLWhereClause##	 
Where## 
{##  
get##! $
;##$ %
set##& )
;##) *
}##+ ,
public%% 
TSQLGroupByClause%%	 
GroupBy%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
public'' 
TSQLHavingClause''	 
Having''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
public)) 
TSQLOrderByClause))	 
OrderBy)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
public++ 
TSQLOptionClause++	 
Option++  
{++! "
get++# &
;++& '
set++( +
;+++ ,
}++- .
},, 
}-- �
[C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\TSQLStatement.cs
	namespace 	
TSQL
 
. 

Statements 
{		 
public

 
abstract

 
class

 
TSQLStatement

 $
{ 
private 	
List
 
< 
	TSQLToken 
> 
_tokens !
=" #
new$ '
List( ,
<, -
	TSQLToken- 6
>6 7
(7 8
)8 9
;9 :
public 
abstract	 
TSQLStatementType #
Type$ (
{ 
get 
; 
} 
public 
List	 
< 
	TSQLToken 
> 
Tokens 
{ 
get 
{ 
return 

_tokens 
; 
} 
} 
} 
} �
^C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLSystemIdentifier.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class  
TSQLSystemIdentifier "
:# $
TSQLIdentifier% 3
{		 
internal

 
 
TSQLSystemIdentifier

 
(

  
int 
beginPostion 
, 
string 	
text
 
) 
: 
base 
( 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
SystemIdentifier )
;) *
} 
} 
public   
TSQLIdentifiers  	 

Identifier   #
{!! 
get"" 
;"" 
private## 

set## 
;## 
}$$ 
}%% 
}&& �
\C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLSystemVariable.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLSystemVariable  
:! "
TSQLVariable# /
{		 
internal

 

TSQLSystemVariable

 
(

 
int 
beginPostion 
, 
string 	
text
 
) 
: 
base 
( 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
SystemVariable '
;' (
} 
} 
public   
TSQLVariables  	 
Variable   
{!! 
get"" 
;"" 
private## 

set## 
;## 
}$$ 
}%% 
}&& �
[C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLBinaryLiteral.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLBinaryLiteral 
:  !
TSQLLiteral" -
{		 
internal

 

TSQLBinaryLiteral

 
(

 
int 
beginPostion 
, 
string 	
text
 
) 
: 
base 
( 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
BinaryLiteral &
;& '
} 
} 
} 
}   �
ZC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLMoneyLiteral.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLMoneyLiteral 
:  
TSQLLiteral! ,
{		 
internal

 

TSQLMoneyLiteral

 
(

 
int 
beginPostion 
, 
string 	
text
 
) 
: 
base 
( 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
MoneyLiteral %
;% &
} 
} 
} 
}   �]
RC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLIdentifiers.cs
	namespace 	
TSQL
 
{ 
public 
class 
TSQLIdentifiers 
{		 
private

 	
static


 

Dictionary

 
<

 
string

 "
,

" #
TSQLIdentifiers

$ 3
>

3 4
identifierLookup

5 E
=

F G
new 

Dictionary 
< 
string 
, 
TSQLIdentifiers )
>) *
(* +
StringComparer+ 9
.9 :&
InvariantCultureIgnoreCase: T
)T U
;U V
public 
static	 
readonly 
TSQLIdentifiers (
None) -
=. /
new0 3
TSQLIdentifiers4 C
(C D
$strD F
)F G
;G H
public 
static	 
readonly 
TSQLIdentifiers (
COALESCE) 1
=2 3
new4 7
TSQLIdentifiers8 G
(G H
$strH R
)R S
;S T
public 
static	 
readonly 
TSQLIdentifiers (
CONTAINS) 1
=2 3
new4 7
TSQLIdentifiers8 G
(G H
$strH R
)R S
;S T
public 
static	 
readonly 
TSQLIdentifiers (
CONTAINSTABLE) 6
=7 8
new9 <
TSQLIdentifiers= L
(L M
$strM \
)\ ]
;] ^
public 
static	 
readonly 
TSQLIdentifiers (
CONVERT) 0
=1 2
new3 6
TSQLIdentifiers7 F
(F G
$strG P
)P Q
;Q R
public 
static	 
readonly 
TSQLIdentifiers (
CURRENT_DATE) 5
=6 7
new8 ;
TSQLIdentifiers< K
(K L
$strL Z
)Z [
;[ \
public 
static	 
readonly 
TSQLIdentifiers (
CURRENT_TIME) 5
=6 7
new8 ;
TSQLIdentifiers< K
(K L
$strL Z
)Z [
;[ \
public 
static	 
readonly 
TSQLIdentifiers (
CURRENT_TIMESTAMP) :
=; <
new= @
TSQLIdentifiersA P
(P Q
$strQ d
)d e
;e f
public 
static	 
readonly 
TSQLIdentifiers (
CURRENT_USER) 5
=6 7
new8 ;
TSQLIdentifiers< K
(K L
$strL Z
)Z [
;[ \
public 
static	 
readonly 
TSQLIdentifiers (
FREETEXT) 1
=2 3
new4 7
TSQLIdentifiers8 G
(G H
$strH R
)R S
;S T
public 
static	 
readonly 
TSQLIdentifiers (
FREETEXTTABLE) 6
=7 8
new9 <
TSQLIdentifiers= L
(L M
$strM \
)\ ]
;] ^
public 
static	 
readonly 
TSQLIdentifiers (
NULLIF) /
=0 1
new2 5
TSQLIdentifiers6 E
(E F
$strF N
)N O
;O P
public 
static	 
readonly 
TSQLIdentifiers (
OPENDATASOURCE) 7
=8 9
new: =
TSQLIdentifiers> M
(M N
$strN ^
)^ _
;_ `
public 
static	 
readonly 
TSQLIdentifiers (
	OPENQUERY) 2
=3 4
new5 8
TSQLIdentifiers9 H
(H I
$strI T
)T U
;U V
public 
static	 
readonly 
TSQLIdentifiers (

OPENROWSET) 3
=4 5
new6 9
TSQLIdentifiers: I
(I J
$strJ V
)V W
;W X
public 
static	 
readonly 
TSQLIdentifiers (
OPENXML) 0
=1 2
new3 6
TSQLIdentifiers7 F
(F G
$strG P
)P Q
;Q R
public   
static  	 
readonly   
TSQLIdentifiers   (
	RAISERROR  ) 2
=  3 4
new  5 8
TSQLIdentifiers  9 H
(  H I
$str  I T
)  T U
;  U V
public!! 
static!!	 
readonly!! 
TSQLIdentifiers!! ("
SEMANTICKEYPHRASETABLE!!) ?
=!!@ A
new!!B E
TSQLIdentifiers!!F U
(!!U V
$str!!V n
)!!n o
;!!o p
public"" 
static""	 
readonly"" 
TSQLIdentifiers"" (*
SEMANTICSIMILARITYDETAILSTABLE"") G
=""H I
new""J M
TSQLIdentifiers""N ]
(""] ^
$str""^ ~
)""~ 
;	"" �
public## 
static##	 
readonly## 
TSQLIdentifiers## (#
SEMANTICSIMILARITYTABLE##) @
=##A B
new##C F
TSQLIdentifiers##G V
(##V W
$str##W p
)##p q
;##q r
public$$ 
static$$	 
readonly$$ 
TSQLIdentifiers$$ (
SESSION_USER$$) 5
=$$6 7
new$$8 ;
TSQLIdentifiers$$< K
($$K L
$str$$L Z
)$$Z [
;$$[ \
public%% 
static%%	 
readonly%% 
TSQLIdentifiers%% (
SYSTEM_USER%%) 4
=%%5 6
new%%7 :
TSQLIdentifiers%%; J
(%%J K
$str%%K X
)%%X Y
;%%Y Z
public&& 
static&&	 
readonly&& 
TSQLIdentifiers&& (
TRY_CONVERT&&) 4
=&&5 6
new&&7 :
TSQLIdentifiers&&; J
(&&J K
$str&&K X
)&&X Y
;&&Y Z
private** 	
string**
 

Identifier** 
;** 
private,, 	
TSQLIdentifiers,,
 
(,, 
string-- 	

identifier--
 
)-- 
{.. 

Identifier// 
=// 

identifier// 
;// 
if00 
(00 

identifier00 
.00 
Length00 
>00 
$num00 
)00 
{11 
identifierLookup22 
[22 

identifier22 
]22  
=22! "
this22# '
;22' (
}33 
}44 
public66 
static66	 
TSQLIdentifiers66 
Parse66  %
(66% &
string77 	
token77
 
)77 
{88 
if99 
(99 
!:: 
string:: 
.:: 
IsNullOrEmpty:: 
(:: 
token:: 
)::  
&&::! #
identifierLookup;; 
.;; 
ContainsKey;;  
(;;  !
token;;! &
);;& '
);;' (
{<< 
return== 

identifierLookup== 
[== 
token== !
]==! "
;==" #
}>> 
else?? 
{@@ 
returnAA 

TSQLIdentifiersAA 
.AA 
NoneAA 
;AA  
}BB 
}CC 
publicEE 
staticEE	 
boolEE 
IsIdentifierEE !
(EE! "
stringFF 	
tokenFF
 
)FF 
{GG 
ifHH 
(HH 
!HH 
stringHH 
.HH 
IsNullOrWhiteSpaceHH !
(HH! "
tokenHH" '
)HH' (
)HH( )
{II 
returnJJ 

identifierLookupJJ 
.JJ 
ContainsKeyJJ '
(JJ' (
tokenJJ( -
)JJ- .
;JJ. /
}KK 
elseLL 
{MM 
returnNN 

falseNN 
;NN 
}OO 
}PP 
publicRR 
boolRR	 
InRR 
(RR 
paramsRR 
TSQLIdentifiersRR '
[RR' (
]RR( )
identifiersRR* 5
)RR5 6
{SS 
returnTT 	
identifiersUU 
!=UU 
nullUU 
&&UU 
identifiersVV 
.VV 
ContainsVV 
(VV 
thisVV 
)VV 
;VV 
}WW 
public[[ 
static[[	 
bool[[ 
operator[[ 
==[[  
([[  !
TSQLIdentifiers\\ 
a\\ 
,\\ 
TSQLIdentifiers]] 
b]] 
)]] 
{^^ 
if__ 
(__ 
Object__ 
.__ 
ReferenceEquals__ 
(__ 
a__ 
,__  
null__! %
)__% &
)__& '
{`` 
ifaa 
(aa 
Objectaa 
.aa 
ReferenceEqualsaa 
(aa 
baa  
,aa  !
nullaa" &
)aa& '
)aa' (
{bb 
returndd 
truedd 
;dd 
}ee 
returnhh 

falsehh 
;hh 
}ii 
returnll 	
all
 
.ll 
Equalsll 
(ll 
bll 
)ll 
;ll 
}mm 
publicoo 
staticoo	 
booloo 
operatoroo 
!=oo  
(oo  !
TSQLIdentifierspp 
app 
,pp 
TSQLIdentifiersqq 
bqq 
)qq 
{rr 
returnss 	
!ss
 
(ss 
ass 
==ss 
bss 
)ss 
;ss 
}tt 
publicvv 
boolvv	 
Equalsvv 
(vv 
TSQLIdentifiersvv $
objvv% (
)vv( )
{ww 
ifyy 
(yy 
Objectyy 
.yy 
ReferenceEqualsyy 
(yy 
objyy !
,yy! "
nullyy# '
)yy' (
)yy( )
{zz 
return{{ 

false{{ 
;{{ 
}|| 
if 
( 
Object 
. 
ReferenceEquals 
( 
this "
," #
obj$ '
)' (
)( )
{
�� 
return
�� 

true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
GetType
�� 
(
�� 
)
�� 
!=
�� 
obj
�� 
.
�� 
GetType
�� $
(
��$ %
)
��% &
)
��& '
return
�� 

false
�� 
;
�� 
return
�� 	

Identifier
��
 
==
�� 
obj
�� 
.
�� 

Identifier
�� &
;
��& '
}
�� 
public
�� 
override
��	 
bool
�� 
Equals
�� 
(
�� 
object
�� $
obj
��% (
)
��( )
{
�� 
return
�� 	
Equals
��
 
(
�� 
obj
�� 
as
�� 
TSQLIdentifiers
�� '
)
��' (
;
��( )
}
�� 
public
�� 
override
��	 
int
�� 
GetHashCode
�� !
(
��! "
)
��" #
{
�� 
return
�� 	

Identifier
��
 
.
�� 
GetHashCode
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 
}�� �,
VC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLStatementReader.cs
	namespace 	
TSQL
 
{ 
public 
partial 
class 
TSQLStatementReader )
{ 
private 	
TSQLTokenizer
 

_tokenizer "
=# $
null% )
;) *
private 	
bool
 
_hasMore 
= 
true 
; 
private 	
TSQLStatement
 
_current  
=! "
null# '
;' (
public 
TSQLStatementReader	 
( 
string 	
tsqlText
 
) 
{ 

_tokenizer 
= 
new 
TSQLTokenizer !
(! "
tsqlText" *
)* +
;+ ,
} 
public 
TSQLStatementReader	 
( 

TextReader 

tsqlStream 
) 
{ 

_tokenizer 
= 
new 
TSQLTokenizer !
(! "

tsqlStream" ,
), -
;- .
} 
public 
TSQLStatementReader	 
( 
TSQLTokenizer *
	tokenizer+ 4
)4 5
{   

_tokenizer!! 
=!! 
	tokenizer!! 
;!! 
}"" 
public$$ 
bool$$	  
UseQuotedIdentifiers$$ "
{%% 
get&& 
{'' 
return(( 


_tokenizer(( 
.((  
UseQuotedIdentifiers(( *
;((* +
})) 
set++ 
{,, 

_tokenizer-- 
.--  
UseQuotedIdentifiers-- #
=--$ %
value--& +
;--+ ,
}.. 
}// 
public11 
bool11	 
IncludeWhitespace11 
{22 
get33 
{44 
return55 


_tokenizer55 
.55 
IncludeWhitespace55 '
;55' (
}66 
set88 
{99 

_tokenizer:: 
.:: 
IncludeWhitespace::  
=::! "
value::# (
;::( )
};; 
}<< 
public>> 
bool>>	 
MoveNext>> 
(>> 
)>> 
{?? 
CheckDisposed@@ 
(@@ 
)@@ 
;@@ 
ifBB 
(BB 
_hasMoreBB 
)BB 
{CC 
whileDD 	
(DD
 

_tokenizerEE 
.EE 
MoveNextEE 
(EE 
)EE 
&&EE 
(FF 

_tokenizerGG 
.GG 
CurrentGG 
.GG 
TypeGG 
==GG  
TSQLTokenTypeGG! .
.GG. /
SingleLineCommentGG/ @
||GGA C

_tokenizerHH 
.HH 
CurrentHH 
.HH 
TypeHH 
==HH  
TSQLTokenTypeHH! .
.HH. /
MultilineCommentHH/ ?
||HH@ B

_tokenizerII 
.II 
CurrentII 
.II 
TypeII 
==II  
TSQLTokenTypeII! .
.II. /

WhitespaceII/ 9
||II: <
(JJ 

_tokenizerKK 
.KK 
CurrentKK 
.KK 
TypeKK 
==KK !
TSQLTokenTypeKK" /
.KK/ 0
	CharacterKK0 9
&&KK: <

_tokenizerLL 
.LL 
CurrentLL 
.LL 
AsCharacterLL %
.LL% &
	CharacterLL& /
==LL0 2
TSQLCharactersLL3 A
.LLA B
	SemicolonLLB K
)MM 
)NN 
)NN 
{PP 
}RR 
ifTT 
(TT 

_tokenizerTT 
.TT 
CurrentTT 
==TT 
nullTT "
)TT" #
{UU 
_hasMoreVV 
=VV 
falseVV 
;VV 
returnXX 
_hasMoreXX 
;XX 
}YY 
_current[[ 
=[[ 
new[[ &
TSQLStatementParserFactory[[ -
([[- .
)[[. /
.[[/ 0
Create[[0 6
([[6 7

_tokenizer[[7 A
.[[A B
Current[[B I
)[[I J
.[[J K
Parse[[K P
([[P Q

_tokenizer[[Q [
)[[[ \
;[[\ ]
}\\ 
return^^ 	
_hasMore^^
 
;^^ 
}__ 
publicaa 
TSQLStatementaa	 
Currentaa 
{bb 
getcc 
{dd 
CheckDisposedee 
(ee 
)ee 
;ee 
returngg 

_currentgg 
;gg 
}hh 
}ii 
publickk 
statickk	 
Listkk 
<kk 
TSQLStatementkk "
>kk" #
ParseStatementskk$ 3
(kk3 4
stringll 	
tsqlTextll
 
,ll 
boolmm  
useQuotedIdentifiersmm 
=mm 
falsemm $
,mm$ %
boolnn 
includeWhitespacenn 
=nn 
falsenn !
)nn! "
{oo 
returnpp 	
newpp
 
TSQLStatementReaderpp !
(pp! "
tsqlTextqq 
)qq 
{rr 
IncludeWhitespacess 
=ss 
includeWhitespacess *
,ss* + 
UseQuotedIdentifierstt 
=tt  
useQuotedIdentifierstt 0
}uu 
.uu 
ToListuu 
(uu 
)uu 
;uu 
}vv 
}ww 
}xx �
bC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLStatementReader.IDisposable.cs
	namespace 	
TSQL
 
{ 
partial 
class	 
TSQLStatementReader "
:# $
IDisposable% 0
{ 
private		 	
bool		
 
	_disposed		 
=		 
false		  
;		  !
void 
IDisposable 
. 
Dispose 
( 
) 
{ 
if 
( 
! 
	_disposed 
) 
{ 
Dispose 
( 
true 
) 
; 
} 
} 
private 	
void
 
Dispose 
( 
bool 
	disposing %
)% &
{ 
if 
( 
! 
	_disposed 
) 
{ 
if 
( 
	disposing 
) 
{   
}"" 
try%% 
{&& 
('' 

_tokenizer'' 
as'' 
IDisposable'' 
)''  
.''  !
Dispose''! (
(''( )
)'') *
;''* +
}(( 
catch)) 	
())
 
	Exception)) 
))) 
{** 
},, 

_tokenizer-- 
=-- 
null-- 
;-- 
	_disposed// 
=// 
true// 
;// 
}00 
}11 
private:: 	
void::
 
CheckDisposed:: 
(:: 
):: 
{;; 
if<< 
(<< 
	_disposed<< 
)<< 
{== 
throw>> 	
new>>
 #
ObjectDisposedException>> %
(>>% &
GetType>>& -
(>>- .
)>>. /
.>>/ 0
FullName>>0 8
,>>8 9
$str>>: e
+>>f g
$str?? ,
+??- .
$str@@ 
)@@ 
;@@ 
}AA 
}BB 
}EE 
}FF �
bC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLStatementReader.IEnumerable.cs
	namespace		 	
TSQL		
 
{

 
partial 
class	 
TSQLStatementReader "
:# $
IEnumerator% 0
,0 1
IEnumerable2 =
,= >
IEnumerator? J
<J K
TSQLStatementK X
>X Y
,Y Z
IEnumerable[ f
<f g
TSQLStatementg t
>t u
{ 
IEnumerator 
< 
TSQLStatement 
> 
IEnumerable (
<( )
TSQLStatement) 6
>6 7
.7 8
GetEnumerator8 E
(E F
)F G
{ 
return 	
this
 
; 
} 
IEnumerator 
IEnumerable 
. 
GetEnumerator '
(' (
)( )
{ 
return 	
this
 
; 
} 
object 
IEnumerator	 
. 
Current 
{ 
get 
{ 
return 

( 
this 
as 
IEnumerator 
<  
TSQLStatement  -
>- .
). /
./ 0
Current0 7
;7 8
} 
} 
void 
IEnumerator 
. 
Reset 
( 
) 
{   
throw!! 
new!!	 #
NotImplementedException!! $
(!!$ %
)!!% &
;!!& '
}"" 
}## 
}$$ �
_C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\TSQLStatementType.cs
	namespace 	
TSQL
 
. 

Statements 
{ 
public 
enum 
TSQLStatementType 
{		 
Select 
, 	
Unknown 	
} 
} �
bC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Statements\TSQLUnknownStatement.cs
	namespace 	
TSQL
 
. 

Statements 
{ 
public 
class  
TSQLUnknownStatement "
:# $
TSQLStatement% 2
{		 
internal

 
 
TSQLUnknownStatement

 
(

  
)

  !
{ 
} 
public 
override	 
TSQLStatementType #
Type$ (
{ 
get 
{ 
return 

TSQLStatementType 
. 
Unknown $
;$ %
} 
} 
} 
} �
WC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLTokenType.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
enum 
TSQLTokenType 
{ 

Whitespace 
, 
	Character 
, 

Identifier 
, 
SystemIdentifier 
, 
Keyword## 	
,##	 

SingleLineComment)) 
,)) 
MultilineComment// 
,// 
Operator55 

,55
 
Variable;; 

,;;
 
SystemVariableAA 
,AA 
NumericLiteralGG 
,GG 
StringLiteralMM 
,MM 
MoneyLiteralSS 
,SS 
BinaryLiteralYY 
}ZZ 
}[[ �	
WC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLCharacter.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLCharacter 
: 
	TSQLToken '
{ 
internal 

TSQLCharacter 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
	Character 
= 
TSQLCharacters 
. 
Parse #
(# $
text$ (
)( )
;) *
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
	Character "
;" #
} 
} 
public 
TSQLCharacters	 
	Character !
{ 
get 
; 
private   

set   
;   
}!! 
}"" 
}## �
UC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLComment.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
abstract 
class 
TSQLComment "
:# $
	TSQLToken% .
{ 
internal 

TSQLComment 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
} 
public 
string	 
Comment 
{ 
get 
; 
	protected 
set 
; 
} 
} 
} �
XC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLIdentifier.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLIdentifier 
: 
	TSQLToken (
{ 
internal 

TSQLIdentifier 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
if 
( 
Text 
. 

StartsWith 
( 
$str 
) 
) 
{ 
Name 
=	 

Text 
. 
	Substring 
( 
$num 
, 
Text 
. 
Length 
-  
$num! "
)" #
. 
Replace 
( 
$str 
, 
$str 
) 
; 
} 
else 
if 

( 
Text 
. 

StartsWith 
( 
$str  
)  !
)! "
{ 
Name 
=	 

Text 
. 
	Substring 
( 
$num 
, 
Text 
. 
Length 
-  
$num! "
)" #
. 
Replace 
( 
$str 
, 
$str 
) 
; 
} 
else 
if 

( 
Text 
. 

StartsWith 
( 
$str !
)! "
)" #
{ 
Name 
=	 

Text 
. 
	Substring 
( 
$num 
, 
Text 
. 
Length 
-  
$num! "
)" #
. 
Replace 
( 
$str 
, 
$str 
) 
; 
}   
else!! 
{"" 
Name## 
=##	 

Text## 
;## 
}$$ 
}%% 
public)) 
override))	 
TSQLTokenType)) 
Type))  $
{** 
get++ 
{,, 
return-- 

TSQLTokenType-- 
.-- 

Identifier-- #
;--# $
}.. 
}// 
public66 
string66	 
Name66 
{77 
get88 
;88 
private99 

set99 
;99 
}:: 
};; 
}<< �	
UC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLKeyword.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLKeyword 
: 
	TSQLToken %
{ 
internal 

TSQLKeyword 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
Keyword 

= 
TSQLKeywords 
. 
Parse 
(  
text  $
)$ %
;% &
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
Keyword  
;  !
} 
} 
public 
TSQLKeywords	 
Keyword 
{ 
get 
; 
private   

set   
;   
}!! 
}"" 
}## �
UC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLLiteral.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
abstract 
class 
TSQLLiteral "
:# $
	TSQLToken% .
{ 
internal 

	protected 
TSQLLiteral  
(  !
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
} 
} 
} �	
^C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLMultilineComment.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class  
TSQLMultilineComment "
:# $
TSQLComment% 0
{ 
internal 
 
TSQLMultilineComment 
(  
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
Comment 

= 
Text 
. 
	Substring 
( 
$num 
, 
Text #
.# $
Length$ *
-+ ,
$num- .
). /
;/ 0
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
MultilineComment )
;) *
} 
} 
} 
} �
\C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLNumericLiteral.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLNumericLiteral  
:! "
TSQLLiteral# .
{ 
internal 

TSQLNumericLiteral 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
NumericLiteral '
;' (
} 
} 
} 
} �
VC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLOperator.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLOperator 
: 
	TSQLToken &
{ 
internal 

TSQLOperator 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
Operator !
;! "
} 
} 
} 
} �
_C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLSingleLineComment.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class !
TSQLSingleLineComment #
:$ %
TSQLComment& 1
{ 
internal 
!
TSQLSingleLineComment  
(  !
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
Comment 

= 
Text 
. 
	Substring 
( 
$num 
) 
; 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
SingleLineComment *
;* +
} 
} 
} 
} �
[C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLStringLiteral.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLStringLiteral 
:  !
TSQLLiteral" -
{ 
internal 

TSQLStringLiteral 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
int 
quotePosition 
= 
$num 
; 
int 
length 
= 
text 
. 
Length 
- 
$num 
;  
if 
( 
text 
[ 
$num 
] 
== 
$char 
) 
{ 
quotePosition 
++ 
; 
length 

--
 
; 
	IsUnicode 
= 
true 
; 
} 
else 
{ 
	IsUnicode 
= 
false 
; 
} 
QuoteCharacter!! 
=!! 
text!! 
[!! 
quotePosition!! &
]!!& '
;!!' (
Value$$ 
=$$	 

text$$ 
.$$ 
	Substring$$ 
($$ 
quotePosition$$ '
+$$( )
$num$$* +
,$$+ ,
length$$- 3
)$$3 4
.%% 
Replace%% 
(%% 
new%% 
string%% 
(%% 
QuoteCharacter%% &
,%%& '
$num%%( )
)%%) *
,%%* +
QuoteCharacter%%, :
.%%: ;
ToString%%; C
(%%C D
)%%D E
)%%E F
;%%F G
}&& 
public** 
override**	 
TSQLTokenType** 
Type**  $
{++ 
get,, 
{-- 
return.. 

TSQLTokenType.. 
... 
StringLiteral.. &
;..& '
}// 
}00 
public77 
string77	 
Value77 
{88 
get99 
;99 
private;; 

set;; 
;;; 
}<< 
public>> 
char>>	 
QuoteCharacter>> 
{?? 
get@@ 
;@@ 
privateBB 

setBB 
;BB 
}CC 
publicEE 
boolEE	 
	IsUnicodeEE 
{FF 
getGG 
;GG 
privateII 

setII 
;II 
}JJ 
}KK 
}LL �^
SC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLToken.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
abstract 
class 
	TSQLToken  
{ 
internal 

	protected 
	TSQLToken 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
{

 
BeginPostion 
= 
beginPostion 
; 
if 
( 
text 
== 
null 
) 
{ 
throw 	
new
 !
ArgumentNullException #
(# $
$str$ *
)* +
;+ ,
} 
Text 
= 	
text
 
; 
} 
public 
int	 
BeginPostion 
{ 
get 
; 
private 

set 
; 
} 
public 
int	 
EndPosition 
{ 
get 
{ 
return 

BeginPostion 
+ 
Length  
-! "
$num# $
;$ %
} 
} 
public!! 
int!!	 
Length!! 
{"" 
get## 
{$$ 
return%% 

Text%% 
.%% 
Length%% 
;%% 
}&& 
}'' 
public)) 
string))	 
Text)) 
{** 
get++ 
;++ 
private,, 

set,, 
;,, 
}-- 
public// 
abstract//	 
TSQLTokenType// 
Type//  $
{00 
get11 
;11 
}22 
public66 
static66	 
bool66 
operator66 
==66  
(66  !
	TSQLToken77 
a77 
,77 
	TSQLToken88 
b88 
)88 
{99 
if:: 
(:: 
Object:: 
.:: 
ReferenceEquals:: 
(:: 
a:: 
,::  
null::! %
)::% &
)::& '
{;; 
if<< 
(<< 
Object<< 
.<< 
ReferenceEquals<< 
(<< 
b<<  
,<<  !
null<<" &
)<<& '
)<<' (
{== 
return?? 
true?? 
;?? 
}@@ 
returnCC 

falseCC 
;CC 
}DD 
returnGG 	
aGG
 
.GG 
EqualsGG 
(GG 
bGG 
)GG 
;GG 
}HH 
publicJJ 
staticJJ	 
boolJJ 
operatorJJ 
!=JJ  
(JJ  !
	TSQLTokenKK 
aKK 
,KK 
	TSQLTokenLL 
bLL 
)LL 
{MM 
returnNN 	
!NN
 
(NN 
aNN 
==NN 
bNN 
)NN 
;NN 
}OO 
privateQQ 	
boolQQ
 
EqualsQQ 
(QQ 
	TSQLTokenQQ 
objQQ  #
)QQ# $
{RR 
ifTT 
(TT 
ObjectTT 
.TT 
ReferenceEqualsTT 
(TT 
objTT !
,TT! "
nullTT# '
)TT' (
)TT( )
{UU 
returnVV 

falseVV 
;VV 
}WW 
ifZZ 
(ZZ 
ObjectZZ 
.ZZ 
ReferenceEqualsZZ 
(ZZ 
thisZZ "
,ZZ" #
objZZ$ '
)ZZ' (
)ZZ( )
{[[ 
return\\ 

true\\ 
;\\ 
}]] 
if`` 
(`` 
this`` 
.`` 
GetType`` 
(`` 
)`` 
!=`` 
obj`` 
.`` 
GetType`` $
(``$ %
)``% &
)``& '
returnaa 

falseaa 
;aa 
returnff 	
BeginPostiongg 
==gg 
objgg 
.gg 
BeginPostiongg $
&&gg% '
EndPositionhh 
==hh 
objhh 
.hh 
EndPositionhh "
&&hh# %
Textii 
==ii	 
objii 
.ii 
Textii 
;ii 
}jj 
publicll 
overridell	 
boolll 
Equalsll 
(ll 
objectll $
objll% (
)ll( )
{mm 
returnnn 	
Equalsnn
 
(nn 
objnn 
asnn 
	TSQLTokennn !
)nn! "
;nn" #
}oo 
publicqq 
overrideqq	 
intqq 
GetHashCodeqq !
(qq! "
)qq" #
{rr 
	uncheckedtt 
{uu 
intvv 
hashvv 
=vv 
$numvv 
;vv 
hashww 
=ww	 

hashww 
*ww 
$numww 
+ww 
BeginPostionww *
.ww* +
GetHashCodeww+ 6
(ww6 7
)ww7 8
;ww8 9
hashxx 
=xx	 

hashxx 
*xx 
$numxx 
+xx 
Textxx "
.xx" #
GetHashCodexx# .
(xx. /
)xx/ 0
;xx0 1
hashyy 
=yy	 

hashyy 
*yy 
$numyy 
+yy 
Typeyy "
.yy" #
GetHashCodeyy# .
(yy. /
)yy/ 0
;yy0 1
returnzz 

hashzz 
;zz 
}{{ 
}|| 
public
�� 
TSQLCharacter
��	 
AsCharacter
�� "
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLCharacter
��  
;
��  !
}
�� 
}
�� 
public
�� 
TSQLComment
��	 
	AsComment
�� 
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLComment
�� 
;
�� 
}
�� 
}
�� 
public
�� 
TSQLIdentifier
��	 
AsIdentifier
�� $
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLIdentifier
�� !
;
��! "
}
�� 
}
�� 
public
�� "
TSQLSystemIdentifier
��	  
AsSystemIdentifier
�� 0
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� "
TSQLSystemIdentifier
�� '
;
��' (
}
�� 
}
�� 
public
�� 
TSQLKeyword
��	 
	AsKeyword
�� 
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLKeyword
�� 
;
�� 
}
�� 
}
�� 
public
�� 
TSQLLiteral
��	 
	AsLiteral
�� 
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLLiteral
�� 
;
�� 
}
�� 
}
�� 
public
�� "
TSQLMultilineComment
��	  
AsMultilineComment
�� 0
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� "
TSQLMultilineComment
�� '
;
��' (
}
�� 
}
�� 
public
��  
TSQLNumericLiteral
��	 
AsNumericLiteral
�� ,
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
��  
TSQLNumericLiteral
�� %
;
��% &
}
�� 
}
�� 
public
�� 
TSQLOperator
��	 

AsOperator
��  
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLOperator
�� 
;
��  
}
�� 
}
�� 
public
�� #
TSQLSingleLineComment
��	 !
AsSingleLineComment
�� 2
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� #
TSQLSingleLineComment
�� (
;
��( )
}
�� 
}
�� 
public
�� 
TSQLStringLiteral
��	 
AsStringLiteral
�� *
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLStringLiteral
�� $
;
��$ %
}
�� 
}
�� 
public
�� 
TSQLVariable
��	 

AsVariable
��  
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLVariable
�� 
;
��  
}
�� 
}
�� 
public
��  
TSQLSystemVariable
��	 
AsSystemVariable
�� ,
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
��  
TSQLSystemVariable
�� %
;
��% &
}
�� 
}
�� 
public
�� 
TSQLWhitespace
��	 
AsWhitespace
�� $
{
�� 
get
�� 
{
�� 
return
�� 

this
�� 
as
�� 
TSQLWhitespace
�� !
;
��! "
}
�� 
}
�� 
}
�� 
public
�� 
static
�� 
class
�� !
TSQLTokenExtensions
�� (
{
�� 
public
�� 
static
��	 
bool
�� 
	IsKeyword
�� 
(
�� 
this
�� #
	TSQLToken
��$ -
token
��. 3
,
��3 4
TSQLKeywords
��5 A
keyword
��B I
)
��I J
{
�� 
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
Type
�� 
!=
�� 
TSQLTokenType
�� "
.
��" #
Keyword
��# *
)
��* +
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
	AsKeyword
�� 
.
�� 
Keyword
�� 
!=
�� !
keyword
��" )
)
��) *
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
return
�� 	
true
��
 
;
�� 
}
�� 
public
�� 
static
��	 
bool
�� 
IsCharacter
��  
(
��  !
this
��! %
	TSQLToken
��& /
token
��0 5
,
��5 6
TSQLCharacters
��7 E
	character
��F O
)
��O P
{
�� 
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
Type
�� 
!=
�� 
TSQLTokenType
�� "
.
��" #
	Character
��# ,
)
��, -
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
AsCharacter
�� 
.
�� 
	Character
�� "
!=
��# %
	character
��& /
)
��/ 0
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
return
�� 	
true
��
 
;
�� 
}
�� 
}
�� 
}�� �
VC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLVariable.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLVariable 
: 
	TSQLToken &
{ 
internal 

TSQLVariable 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 
Variable !
;! "
} 
} 
} 
} �
XC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\Tokens\TSQLWhitespace.cs
	namespace 	
TSQL
 
. 
Tokens 
{ 
public 
class 
TSQLWhitespace 
: 
	TSQLToken (
{ 
internal 

TSQLWhitespace 
( 
int 
beginPostion 
, 
string		 	
text		
 
)		 
:		 
base

 
(

 
beginPostion 
, 
text 
) 	
{ 
} 
public 
override	 
TSQLTokenType 
Type  $
{ 
get 
{ 
return 

TSQLTokenType 
. 

Whitespace #
;# $
} 
} 
} 
} �C
QC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLCharacters.cs
	namespace 	
TSQL
 
{ 
public 
class 
TSQLCharacters 
{ 
private		 	
static		
 

Dictionary		 
<		 
string		 "
,		" #
TSQLCharacters		$ 2
>		2 3
characterLookup		4 C
=		D E
new

 

Dictionary

 
<

 
string

 
,

 
TSQLCharacters

 (
>

( )
(

) *
StringComparer

* 8
.

8 9&
InvariantCultureIgnoreCase

9 S
)

S T
;

T U
public 
static	 
readonly 
TSQLCharacters '
None( ,
=- .
new/ 2
TSQLCharacters3 A
(A B
stringB H
.H I
EmptyI N
)N O
;O P
public 
static	 
readonly 
TSQLCharacters '
Comma( -
=. /
new0 3
TSQLCharacters4 B
(B C
$strC F
)F G
;G H
public 
static	 
readonly 
TSQLCharacters '
	Semicolon( 1
=2 3
new4 7
TSQLCharacters8 F
(F G
$strG J
)J K
;K L
public 
static	 
readonly 
TSQLCharacters '
OpenParentheses( 7
=8 9
new: =
TSQLCharacters> L
(L M
$strM P
)P Q
;Q R
public 
static	 
readonly 
TSQLCharacters '
CloseParentheses( 8
=9 :
new; >
TSQLCharacters? M
(M N
$strN Q
)Q R
;R S
public 
static	 
readonly 
TSQLCharacters '
Space( -
=. /
new0 3
TSQLCharacters4 B
(B C
$strC F
)F G
;G H
public 
static	 
readonly 
TSQLCharacters '
Tab( +
=, -
new. 1
TSQLCharacters2 @
(@ A
$strA E
)E F
;F G
public 
static	 
readonly 
TSQLCharacters '
CarriageReturn( 6
=7 8
new9 <
TSQLCharacters= K
(K L
$strL P
)P Q
;Q R
public 
static	 
readonly 
TSQLCharacters '
LineFeed( 0
=1 2
new3 6
TSQLCharacters7 E
(E F
$strF J
)J K
;K L
public 
static	 
readonly 
TSQLCharacters '
Period( .
=/ 0
new1 4
TSQLCharacters5 C
(C D
$strD G
)G H
;H I
private 	
string
 
Token 
; 
private 	
TSQLCharacters
 
( 
string 	
token
 
) 
{   
Token!! 
=!!	 

token!! 
;!! 
if"" 
("" 
token"" 
."" 
Length"" 
>"" 
$num"" 
)"" 
{## 
characterLookup$$ 
[$$ 
token$$ 
]$$ 
=$$ 
this$$ !
;$$! "
}%% 
}&& 
public(( 
static((	 
TSQLCharacters(( 
Parse(( $
((($ %
string)) 	
token))
 
))) 
{** 
if++ 
(++ 
!,, 
string,, 
.,, 
IsNullOrEmpty,, 
(,, 
token,, 
),,  
&&,,! #
characterLookup-- 
.-- 
ContainsKey-- 
(--  
token--  %
)--% &
)--& '
{.. 
return// 

characterLookup// 
[// 
token//  
]//  !
;//! "
}00 
else11 
{22 
return33 

TSQLCharacters33 
.33 
None33 
;33 
}44 
}55 
public77 
static77	 
bool77 
IsCharacter77  
(77  !
string88 	
token88
 
)88 
{99 
if:: 
(:: 
!:: 
string:: 
.:: 
IsNullOrWhiteSpace:: !
(::! "
token::" '
)::' (
)::( )
{;; 
return<< 

characterLookup<< 
.<< 
ContainsKey<< &
(<<& '
token<<' ,
)<<, -
;<<- .
}== 
else>> 
{?? 
return@@ 

false@@ 
;@@ 
}AA 
}BB 
publicDD 
boolDD	 
InDD 
(DD 
paramsDD 
TSQLCharactersDD &
[DD& '
]DD' (

charactersDD) 3
)DD3 4
{EE 
returnFF 	

charactersGG 
!=GG 
nullGG 
&&GG 

charactersHH 
.HH 
ContainsHH 
(HH 
thisHH 
)HH 
;HH 
}II 
publicMM 
staticMM	 
boolMM 
operatorMM 
==MM  
(MM  !
TSQLCharactersNN 
aNN 
,NN 
TSQLCharactersOO 
bOO 
)OO 
{PP 
ifQQ 
(QQ 
ObjectQQ 
.QQ 
ReferenceEqualsQQ 
(QQ 
aQQ 
,QQ  
nullQQ! %
)QQ% &
)QQ& '
{RR 
ifSS 
(SS 
ObjectSS 
.SS 
ReferenceEqualsSS 
(SS 
bSS  
,SS  !
nullSS" &
)SS& '
)SS' (
{TT 
returnVV 
trueVV 
;VV 
}WW 
returnZZ 

falseZZ 
;ZZ 
}[[ 
return^^ 	
a^^
 
.^^ 
Equals^^ 
(^^ 
b^^ 
)^^ 
;^^ 
}__ 
publicaa 
staticaa	 
boolaa 
operatoraa 
!=aa  
(aa  !
TSQLCharactersbb 
abb 
,bb 
TSQLCharacterscc 
bcc 
)cc 
{dd 
returnee 	
!ee
 
(ee 
aee 
==ee 
bee 
)ee 
;ee 
}ff 
publichh 
boolhh	 
Equalshh 
(hh 
TSQLCharactershh #
objhh$ '
)hh' (
{ii 
ifkk 
(kk 
Objectkk 
.kk 
ReferenceEqualskk 
(kk 
objkk !
,kk! "
nullkk# '
)kk' (
)kk( )
{ll 
returnmm 

falsemm 
;mm 
}nn 
ifqq 
(qq 
Objectqq 
.qq 
ReferenceEqualsqq 
(qq 
thisqq "
,qq" #
objqq$ '
)qq' (
)qq( )
{rr 
returnss 

truess 
;ss 
}tt 
ifww 
(ww 
thisww 
.ww 
GetTypeww 
(ww 
)ww 
!=ww 
objww 
.ww 
GetTypeww $
(ww$ %
)ww% &
)ww& '
returnxx 

falsexx 
;xx 
return}} 	
Token}}
 
==}} 
obj}} 
.}} 
Token}} 
;}} 
}~~ 
public
�� 
override
��	 
bool
�� 
Equals
�� 
(
�� 
object
�� $
obj
��% (
)
��( )
{
�� 
return
�� 	
Equals
��
 
(
�� 
obj
�� 
as
�� 
TSQLCharacters
�� &
)
��& '
;
��' (
}
�� 
public
�� 
override
��	 
int
�� 
GetHashCode
�� !
(
��! "
)
��" #
{
�� 
return
�� 	
Token
��
 
.
�� 
GetHashCode
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� ��
OC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLKeywords.cs
	namespace 	
TSQL
 
{ 
public 
class 
TSQLKeywords 
{ 
private		 	
static		
 

Dictionary		 
<		 
string		 "
,		" #
TSQLKeywords		$ 0
>		0 1
keywordLookup		2 ?
=		@ A
new

 

Dictionary

 
<

 
string

 
,

 
TSQLKeywords

 &
>

& '
(

' (
StringComparer

( 6
.

6 7&
InvariantCultureIgnoreCase

7 Q
)

Q R
;

R S
public 
static	 
readonly 
TSQLKeywords %
None& *
=+ ,
new- 0
TSQLKeywords1 =
(= >
$str> @
)@ A
;A B
public 
static	 
readonly 
TSQLKeywords %
ALTER& +
=, -
new. 1
TSQLKeywords2 >
(> ?
$str? F
)F G
;G H
public 
static	 
readonly 
TSQLKeywords %
CREATE& ,
=- .
new/ 2
TSQLKeywords3 ?
(? @
$str@ H
)H I
;I J
public 
static	 
readonly 
TSQLKeywords %
DROP& *
=+ ,
new- 0
TSQLKeywords1 =
(= >
$str> D
)D E
;E F
public 
static	 
readonly 
TSQLKeywords %
SELECT& ,
=- .
new/ 2
TSQLKeywords3 ?
(? @
$str@ H
)H I
;I J
public 
static	 
readonly 
TSQLKeywords %
INSERT& ,
=- .
new/ 2
TSQLKeywords3 ?
(? @
$str@ H
)H I
;I J
public 
static	 
readonly 
TSQLKeywords %
UPDATE& ,
=- .
new/ 2
TSQLKeywords3 ?
(? @
$str@ H
)H I
;I J
public 
static	 
readonly 
TSQLKeywords %
DELETE& ,
=- .
new/ 2
TSQLKeywords3 ?
(? @
$str@ H
)H I
;I J
public 
static	 
readonly 
TSQLKeywords %
MERGE& +
=, -
new. 1
TSQLKeywords2 >
(> ?
$str? F
)F G
;G H
public 
static	 
readonly 
TSQLKeywords %
TRUNCATE& .
=/ 0
new1 4
TSQLKeywords5 A
(A B
$strB L
)L M
;M N
public 
static	 
readonly 
TSQLKeywords %
DISABLE& -
=. /
new0 3
TSQLKeywords4 @
(@ A
$strA J
)J K
;K L
public 
static	 
readonly 
TSQLKeywords %
ENABLE& ,
=- .
new/ 2
TSQLKeywords3 ?
(? @
$str@ H
)H I
;I J
public 
static	 
readonly 
TSQLKeywords %
EXECUTE& -
=. /
new0 3
TSQLKeywords4 @
(@ A
$strA J
)J K
;K L
public 
static	 
readonly 
TSQLKeywords %
BULK& *
=+ ,
new- 0
TSQLKeywords1 =
(= >
$str> D
)D E
;E F
public   
static  	 
readonly   
TSQLKeywords   %
GRANT  & +
=  , -
new  . 1
TSQLKeywords  2 >
(  > ?
$str  ? F
)  F G
;  G H
public!! 
static!!	 
readonly!! 
TSQLKeywords!! %
DENY!!& *
=!!+ ,
new!!- 0
TSQLKeywords!!1 =
(!!= >
$str!!> D
)!!D E
;!!E F
public"" 
static""	 
readonly"" 
TSQLKeywords"" %
REVOKE""& ,
=""- .
new""/ 2
TSQLKeywords""3 ?
(""? @
$str""@ H
)""H I
;""I J
public$$ 
static$$	 
readonly$$ 
TSQLKeywords$$ %
GO$$& (
=$$) *
new$$+ .
TSQLKeywords$$/ ;
($$; <
$str$$< @
)$$@ A
;$$A B
public&& 
static&&	 
readonly&& 
TSQLKeywords&& %
ADD&&& )
=&&* +
new&&, /
TSQLKeywords&&0 <
(&&< =
$str&&= B
)&&B C
;&&C D
public(( 
static((	 
readonly(( 
TSQLKeywords(( %
BEGIN((& +
=((, -
new((. 1
TSQLKeywords((2 >
(((> ?
$str((? F
)((F G
;((G H
public)) 
static))	 
readonly)) 
TSQLKeywords)) %
COMMIT))& ,
=))- .
new))/ 2
TSQLKeywords))3 ?
())? @
$str))@ H
)))H I
;))I J
public** 
static**	 
readonly** 
TSQLKeywords** %
ROLLBACK**& .
=**/ 0
new**1 4
TSQLKeywords**5 A
(**A B
$str**B L
)**L M
;**M N
public++ 
static++	 
readonly++ 
TSQLKeywords++ %
DUMP++& *
=+++ ,
new++- 0
TSQLKeywords++1 =
(++= >
$str++> D
)++D E
;++E F
public,, 
static,,	 
readonly,, 
TSQLKeywords,, %
BACKUP,,& ,
=,,- .
new,,/ 2
TSQLKeywords,,3 ?
(,,? @
$str,,@ H
),,H I
;,,I J
public-- 
static--	 
readonly-- 
TSQLKeywords-- %
RESTORE--& -
=--. /
new--0 3
TSQLKeywords--4 @
(--@ A
$str--A J
)--J K
;--K L
public.. 
static..	 
readonly.. 
TSQLKeywords.. %
LOAD..& *
=..+ ,
new..- 0
TSQLKeywords..1 =
(..= >
$str..> D
)..D E
;..E F
public// 
static//	 
readonly// 
TSQLKeywords// %

CHECKPOINT//& 0
=//1 2
new//3 6
TSQLKeywords//7 C
(//C D
$str//D P
)//P Q
;//Q R
public00 
static00	 
readonly00 
TSQLKeywords00 %
WHILE00& +
=00, -
new00. 1
TSQLKeywords002 >
(00> ?
$str00? F
)00F G
;00G H
public11 
static11	 
readonly11 
TSQLKeywords11 %
IF11& (
=11) *
new11+ .
TSQLKeywords11/ ;
(11; <
$str11< @
)11@ A
;11A B
public22 
static22	 
readonly22 
TSQLKeywords22 %
BREAK22& +
=22, -
new22. 1
TSQLKeywords222 >
(22> ?
$str22? F
)22F G
;22G H
public33 
static33	 
readonly33 
TSQLKeywords33 %
CONTINUE33& .
=33/ 0
new331 4
TSQLKeywords335 A
(33A B
$str33B L
)33L M
;33M N
public44 
static44	 
readonly44 
TSQLKeywords44 %
GOTO44& *
=44+ ,
new44- 0
TSQLKeywords441 =
(44= >
$str44> D
)44D E
;44E F
public55 
static55	 
readonly55 
TSQLKeywords55 %
SET55& )
=55* +
new55, /
TSQLKeywords550 <
(55< =
$str55= B
)55B C
;55C D
public66 
static66	 
readonly66 
TSQLKeywords66 %
DECLARE66& -
=66. /
new660 3
TSQLKeywords664 @
(66@ A
$str66A J
)66J K
;66K L
public77 
static77	 
readonly77 
TSQLKeywords77 %
PRINT77& +
=77, -
new77. 1
TSQLKeywords772 >
(77> ?
$str77? F
)77F G
;77G H
public88 
static88	 
readonly88 
TSQLKeywords88 %
FETCH88& +
=88, -
new88. 1
TSQLKeywords882 >
(88> ?
$str88? F
)88F G
;88G H
public99 
static99	 
readonly99 
TSQLKeywords99 %
OPEN99& *
=99+ ,
new99- 0
TSQLKeywords991 =
(99= >
$str99> D
)99D E
;99E F
public:: 
static::	 
readonly:: 
TSQLKeywords:: %
CLOSE::& +
=::, -
new::. 1
TSQLKeywords::2 >
(::> ?
$str::? F
)::F G
;::G H
public;; 
static;;	 
readonly;; 
TSQLKeywords;; %

DEALLOCATE;;& 0
=;;1 2
new;;3 6
TSQLKeywords;;7 C
(;;C D
$str;;D P
);;P Q
;;;Q R
public== 
static==	 
readonly== 
TSQLKeywords== %
WITH==& *
===+ ,
new==- 0
TSQLKeywords==1 =
(=== >
$str==> D
)==D E
;==E F
public>> 
static>>	 
readonly>> 
TSQLKeywords>> %
DBCC>>& *
=>>+ ,
new>>- 0
TSQLKeywords>>1 =
(>>= >
$str>>> D
)>>D E
;>>E F
public?? 
static??	 
readonly?? 
TSQLKeywords?? %
KILL??& *
=??+ ,
new??- 0
TSQLKeywords??1 =
(??= >
$str??> D
)??D E
;??E F
publicAA 
staticAA	 
readonlyAA 
TSQLKeywordsAA %
MOVEAA& *
=AA+ ,
newAA- 0
TSQLKeywordsAA1 =
(AA= >
$strAA> D
)AAD E
;AAE F
publicCC 
staticCC	 
readonlyCC 
TSQLKeywordsCC %
GETCC& )
=CC* +
newCC, /
TSQLKeywordsCC0 <
(CC< =
$strCC= B
)CCB C
;CCC D
publicDD 
staticDD	 
readonlyDD 
TSQLKeywordsDD %
RECEIVEDD& -
=DD. /
newDD0 3
TSQLKeywordsDD4 @
(DD@ A
$strDDA J
)DDJ K
;DDK L
publicEE 
staticEE	 
readonlyEE 
TSQLKeywordsEE %
SENDEE& *
=EE+ ,
newEE- 0
TSQLKeywordsEE1 =
(EE= >
$strEE> D
)EED E
;EEE F
publicFF 
staticFF	 
readonlyFF 
TSQLKeywordsFF %
WAITFORFF& -
=FF. /
newFF0 3
TSQLKeywordsFF4 @
(FF@ A
$strFFA J
)FFJ K
;FFK L
publicGG 
staticGG	 
readonlyGG 
TSQLKeywordsGG %
READTEXTGG& .
=GG/ 0
newGG1 4
TSQLKeywordsGG5 A
(GGA B
$strGGB L
)GGL M
;GGM N
publicHH 
staticHH	 
readonlyHH 
TSQLKeywordsHH %

UPDATETEXTHH& 0
=HH1 2
newHH3 6
TSQLKeywordsHH7 C
(HHC D
$strHHD P
)HHP Q
;HHQ R
publicII 
staticII	 
readonlyII 
TSQLKeywordsII %
	WRITETEXTII& /
=II0 1
newII2 5
TSQLKeywordsII6 B
(IIB C
$strIIC N
)IIN O
;IIO P
publicJJ 
staticJJ	 
readonlyJJ 
TSQLKeywordsJJ %
USEJJ& )
=JJ* +
newJJ, /
TSQLKeywordsJJ0 <
(JJ< =
$strJJ= B
)JJB C
;JJC D
publicKK 
staticKK	 
readonlyKK 
TSQLKeywordsKK %
SHUTDOWNKK& .
=KK/ 0
newKK1 4
TSQLKeywordsKK5 A
(KKA B
$strKKB L
)KKL M
;KKM N
publicLL 
staticLL	 
readonlyLL 
TSQLKeywordsLL %
RETURNLL& ,
=LL- .
newLL/ 2
TSQLKeywordsLL3 ?
(LL? @
$strLL@ H
)LLH I
;LLI J
publicMM 
staticMM	 
readonlyMM 
TSQLKeywordsMM %
REVERTMM& ,
=MM- .
newMM/ 2
TSQLKeywordsMM3 ?
(MM? @
$strMM@ H
)MMH I
;MMI J
publicSS 
staticSS	 
readonlySS 
TSQLKeywordsSS %
ALLSS& )
=SS* +
newSS, /
TSQLKeywordsSS0 <
(SS< =
$strSS= B
)SSB C
;SSC D
publicTT 
staticTT	 
readonlyTT 
TSQLKeywordsTT %
ANDTT& )
=TT* +
newTT, /
TSQLKeywordsTT0 <
(TT< =
$strTT= B
)TTB C
;TTC D
publicUU 
staticUU	 
readonlyUU 
TSQLKeywordsUU %
ANYUU& )
=UU* +
newUU, /
TSQLKeywordsUU0 <
(UU< =
$strUU= B
)UUB C
;UUC D
publicVV 
staticVV	 
readonlyVV 
TSQLKeywordsVV %
ASVV& (
=VV) *
newVV+ .
TSQLKeywordsVV/ ;
(VV; <
$strVV< @
)VV@ A
;VVA B
publicWW 
staticWW	 
readonlyWW 
TSQLKeywordsWW %
ASCWW& )
=WW* +
newWW, /
TSQLKeywordsWW0 <
(WW< =
$strWW= B
)WWB C
;WWC D
publicXX 
staticXX	 
readonlyXX 
TSQLKeywordsXX %
AUTHORIZATIONXX& 3
=XX4 5
newXX6 9
TSQLKeywordsXX: F
(XXF G
$strXXG V
)XXV W
;XXW X
publicYY 
staticYY	 
readonlyYY 
TSQLKeywordsYY %
BETWEENYY& -
=YY. /
newYY0 3
TSQLKeywordsYY4 @
(YY@ A
$strYYA J
)YYJ K
;YYK L
publicZZ 
staticZZ	 
readonlyZZ 
TSQLKeywordsZZ %
BROWSEZZ& ,
=ZZ- .
newZZ/ 2
TSQLKeywordsZZ3 ?
(ZZ? @
$strZZ@ H
)ZZH I
;ZZI J
public[[ 
static[[	 
readonly[[ 
TSQLKeywords[[ %
BY[[& (
=[[) *
new[[+ .
TSQLKeywords[[/ ;
([[; <
$str[[< @
)[[@ A
;[[A B
public\\ 
static\\	 
readonly\\ 
TSQLKeywords\\ %
CASCADE\\& -
=\\. /
new\\0 3
TSQLKeywords\\4 @
(\\@ A
$str\\A J
)\\J K
;\\K L
public]] 
static]]	 
readonly]] 
TSQLKeywords]] %
CASE]]& *
=]]+ ,
new]]- 0
TSQLKeywords]]1 =
(]]= >
$str]]> D
)]]D E
;]]E F
public^^ 
static^^	 
readonly^^ 
TSQLKeywords^^ %
CHECK^^& +
=^^, -
new^^. 1
TSQLKeywords^^2 >
(^^> ?
$str^^? F
)^^F G
;^^G H
public__ 
static__	 
readonly__ 
TSQLKeywords__ %
	CLUSTERED__& /
=__0 1
new__2 5
TSQLKeywords__6 B
(__B C
$str__C N
)__N O
;__O P
public`` 
static``	 
readonly`` 
TSQLKeywords`` %
COLLATE``& -
=``. /
new``0 3
TSQLKeywords``4 @
(``@ A
$str``A J
)``J K
;``K L
publicaa 
staticaa	 
readonlyaa 
TSQLKeywordsaa %
COLUMNaa& ,
=aa- .
newaa/ 2
TSQLKeywordsaa3 ?
(aa? @
$straa@ H
)aaH I
;aaI J
publicbb 
staticbb	 
readonlybb 
TSQLKeywordsbb %
	COMMITTEDbb& /
=bb0 1
newbb2 5
TSQLKeywordsbb6 B
(bbB C
$strbbC N
)bbN O
;bbO P
publiccc 
staticcc	 
readonlycc 
TSQLKeywordscc %
COMPUTEcc& -
=cc. /
newcc0 3
TSQLKeywordscc4 @
(cc@ A
$strccA J
)ccJ K
;ccK L
publicdd 
staticdd	 
readonlydd 
TSQLKeywordsdd %

CONSTRAINTdd& 0
=dd1 2
newdd3 6
TSQLKeywordsdd7 C
(ddC D
$strddD P
)ddP Q
;ddQ R
publicee 
staticee	 
readonlyee 
TSQLKeywordsee %
CROSSee& +
=ee, -
newee. 1
TSQLKeywordsee2 >
(ee> ?
$stree? F
)eeF G
;eeG H
publicff 
staticff	 
readonlyff 
TSQLKeywordsff %
CURRENTff& -
=ff. /
newff0 3
TSQLKeywordsff4 @
(ff@ A
$strffA J
)ffJ K
;ffK L
publicgg 
staticgg	 
readonlygg 
TSQLKeywordsgg %
CURSORgg& ,
=gg- .
newgg/ 2
TSQLKeywordsgg3 ?
(gg? @
$strgg@ H
)ggH I
;ggI J
publichh 
statichh	 
readonlyhh 
TSQLKeywordshh %
DATABASEhh& .
=hh/ 0
newhh1 4
TSQLKeywordshh5 A
(hhA B
$strhhB L
)hhL M
;hhM N
publicii 
staticii	 
readonlyii 
TSQLKeywordsii %
DEFAULTii& -
=ii. /
newii0 3
TSQLKeywordsii4 @
(ii@ A
$striiA J
)iiJ K
;iiK L
publicjj 
staticjj	 
readonlyjj 
TSQLKeywordsjj %
DESCjj& *
=jj+ ,
newjj- 0
TSQLKeywordsjj1 =
(jj= >
$strjj> D
)jjD E
;jjE F
publickk 
statickk	 
readonlykk 
TSQLKeywordskk %
DISKkk& *
=kk+ ,
newkk- 0
TSQLKeywordskk1 =
(kk= >
$strkk> D
)kkD E
;kkE F
publicll 
staticll	 
readonlyll 
TSQLKeywordsll %
DISTINCTll& .
=ll/ 0
newll1 4
TSQLKeywordsll5 A
(llA B
$strllB L
)llL M
;llM N
publicmm 
staticmm	 
readonlymm 
TSQLKeywordsmm %
DISTRIBUTEDmm& 1
=mm2 3
newmm4 7
TSQLKeywordsmm8 D
(mmD E
$strmmE R
)mmR S
;mmS T
publicoo 
staticoo	 
readonlyoo 
TSQLKeywordsoo %
DOUBLEoo& ,
=oo- .
newoo/ 2
TSQLKeywordsoo3 ?
(oo? @
$stroo@ H
)ooH I
;ooI J
publicpp 
staticpp	 
readonlypp 
TSQLKeywordspp %
ELSEpp& *
=pp+ ,
newpp- 0
TSQLKeywordspp1 =
(pp= >
$strpp> D
)ppD E
;ppE F
publicqq 
staticqq	 
readonlyqq 
TSQLKeywordsqq %
ENDqq& )
=qq* +
newqq, /
TSQLKeywordsqq0 <
(qq< =
$strqq= B
)qqB C
;qqC D
publicss 
staticss	 
readonlyss 
TSQLKeywordsss %
ESCAPEss& ,
=ss- .
newss/ 2
TSQLKeywordsss3 ?
(ss? @
$strss@ H
)ssH I
;ssI J
publictt 
statictt	 
readonlytt 
TSQLKeywordstt %
EXCEPTtt& ,
=tt- .
newtt/ 2
TSQLKeywordstt3 ?
(tt? @
$strtt@ H
)ttH I
;ttI J
publicuu 
staticuu	 
readonlyuu 
TSQLKeywordsuu %
EXISTSuu& ,
=uu- .
newuu/ 2
TSQLKeywordsuu3 ?
(uu? @
$struu@ H
)uuH I
;uuI J
publicww 
staticww	 
readonlyww 
TSQLKeywordsww %
EXTERNALww& .
=ww/ 0
newww1 4
TSQLKeywordsww5 A
(wwA B
$strwwB L
)wwL M
;wwM N
publicxx 
staticxx	 
readonlyxx 
TSQLKeywordsxx %
FILExx& *
=xx+ ,
newxx- 0
TSQLKeywordsxx1 =
(xx= >
$strxx> D
)xxD E
;xxE F
publicyy 
staticyy	 
readonlyyy 
TSQLKeywordsyy %

FILLFACTORyy& 0
=yy1 2
newyy3 6
TSQLKeywordsyy7 C
(yyC D
$stryyD P
)yyP Q
;yyQ R
publiczz 
staticzz	 
readonlyzz 
TSQLKeywordszz %
FORzz& )
=zz* +
newzz, /
TSQLKeywordszz0 <
(zz< =
$strzz= B
)zzB C
;zzC D
public{{ 
static{{	 
readonly{{ 
TSQLKeywords{{ %
FOREIGN{{& -
={{. /
new{{0 3
TSQLKeywords{{4 @
({{@ A
$str{{A J
){{J K
;{{K L
public|| 
static||	 
readonly|| 
TSQLKeywords|| %
FROM||& *
=||+ ,
new||- 0
TSQLKeywords||1 =
(||= >
$str||> D
)||D E
;||E F
public}} 
static}}	 
readonly}} 
TSQLKeywords}} %
FULL}}& *
=}}+ ,
new}}- 0
TSQLKeywords}}1 =
(}}= >
$str}}> D
)}}D E
;}}E F
public~~ 
static~~	 
readonly~~ 
TSQLKeywords~~ %
FUNCTION~~& .
=~~/ 0
new~~1 4
TSQLKeywords~~5 A
(~~A B
$str~~B L
)~~L M
;~~M N
public 
static	 
readonly 
TSQLKeywords %
GROUP& +
=, -
new. 1
TSQLKeywords2 >
(> ?
$str? F
)F G
;G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
HAVING
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
HOLDLOCK
��& .
=
��/ 0
new
��1 4
TSQLKeywords
��5 A
(
��A B
$str
��B L
)
��L M
;
��M N
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
IDENTITY
��& .
=
��/ 0
new
��1 4
TSQLKeywords
��5 A
(
��A B
$str
��B L
)
��L M
;
��M N
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
IDENTITY_INSERT
��& 5
=
��6 7
new
��8 ;
TSQLKeywords
��< H
(
��H I
$str
��I Z
)
��Z [
;
��[ \
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
IDENTITYCOL
��& 1
=
��2 3
new
��4 7
TSQLKeywords
��8 D
(
��D E
$str
��E R
)
��R S
;
��S T
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
IN
��& (
=
��) *
new
��+ .
TSQLKeywords
��/ ;
(
��; <
$str
��< @
)
��@ A
;
��A B
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
INDEX
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
INNER
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
	INTERSECT
��& /
=
��0 1
new
��2 5
TSQLKeywords
��6 B
(
��B C
$str
��C N
)
��N O
;
��O P
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
INTO
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
IS
��& (
=
��) *
new
��+ .
TSQLKeywords
��/ ;
(
��; <
$str
��< @
)
��@ A
;
��A B
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
JOIN
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
KEY
��& )
=
��* +
new
��, /
TSQLKeywords
��0 <
(
��< =
$str
��= B
)
��B C
;
��C D
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
LEFT
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
LIKE
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
LINENO
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
NOCHECK
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
NONCLUSTERED
��& 2
=
��3 4
new
��5 8
TSQLKeywords
��9 E
(
��E F
$str
��F T
)
��T U
;
��U V
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
NOT
��& )
=
��* +
new
��, /
TSQLKeywords
��0 <
(
��< =
$str
��= B
)
��B C
;
��C D
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
NULL
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
OFF
��& )
=
��* +
new
��, /
TSQLKeywords
��0 <
(
��< =
$str
��= B
)
��B C
;
��C D
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
OFFSETS
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
ON
��& (
=
��) *
new
��+ .
TSQLKeywords
��/ ;
(
��; <
$str
��< @
)
��@ A
;
��A B
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
OPTION
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
OR
��& (
=
��) *
new
��+ .
TSQLKeywords
��/ ;
(
��; <
$str
��< @
)
��@ A
;
��A B
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
ORDER
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
OUTER
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
OVER
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
PERCENT
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
PIVOT
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
PLAN
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
	PRECISION
��& /
=
��0 1
new
��2 5
TSQLKeywords
��6 B
(
��B C
$str
��C N
)
��N O
;
��O P
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
PRIMARY
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
	PROCEDURE
��& /
=
��0 1
new
��2 5
TSQLKeywords
��6 B
(
��B C
$str
��C N
)
��N O
;
��O P
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
PUBLIC
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
READ
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %

REPEATABLE
��& 0
=
��1 2
new
��3 6
TSQLKeywords
��7 C
(
��C D
$str
��D P
)
��P Q
;
��Q R
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
RECONFIGURE
��& 1
=
��2 3
new
��4 7
TSQLKeywords
��8 D
(
��D E
$str
��E R
)
��R S
;
��S T
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %

REFERENCES
��& 0
=
��1 2
new
��3 6
TSQLKeywords
��7 C
(
��C D
$str
��D P
)
��P Q
;
��Q R
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
REPLICATION
��& 1
=
��2 3
new
��4 7
TSQLKeywords
��8 D
(
��D E
$str
��E R
)
��R S
;
��S T
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
RETURNS
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
RIGHT
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
ROWCOUNT
��& .
=
��/ 0
new
��1 4
TSQLKeywords
��5 A
(
��A B
$str
��B L
)
��L M
;
��M N
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %

ROWGUIDCOL
��& 0
=
��1 2
new
��3 6
TSQLKeywords
��7 C
(
��C D
$str
��D P
)
��P Q
;
��Q R
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
RULE
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
SAVE
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
SCHEMA
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
SETUSER
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
SOME
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %

STATISTICS
��& 0
=
��1 2
new
��3 6
TSQLKeywords
��7 C
(
��C D
$str
��D P
)
��P Q
;
��Q R
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
TABLE
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
TABLESAMPLE
��& 1
=
��2 3
new
��4 7
TSQLKeywords
��8 D
(
��D E
$str
��E R
)
��R S
;
��S T
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
TEXTSIZE
��& .
=
��/ 0
new
��1 4
TSQLKeywords
��5 A
(
��A B
$str
��B L
)
��L M
;
��M N
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
THEN
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
TOP
��& )
=
��* +
new
��, /
TSQLKeywords
��0 <
(
��< =
$str
��= B
)
��B C
;
��C D
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
TRANSACTION
��& 1
=
��2 3
new
��4 7
TSQLKeywords
��8 D
(
��D E
$str
��E R
)
��R S
;
��S T
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
TRIGGER
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
UNION
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
UNIQUE
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
UNPIVOT
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
VALUES
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
VARYING
��& -
=
��. /
new
��0 3
TSQLKeywords
��4 @
(
��@ A
$str
��A J
)
��J K
;
��K L
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
VIEW
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
WHEN
��& *
=
��+ ,
new
��- 0
TSQLKeywords
��1 =
(
��= >
$str
��> D
)
��D E
;
��E F
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
WHERE
��& +
=
��, -
new
��. 1
TSQLKeywords
��2 >
(
��> ?
$str
��? F
)
��F G
;
��G H
public
�� 
static
��	 
readonly
�� 
TSQLKeywords
�� %
WITHIN
��& ,
=
��- .
new
��/ 2
TSQLKeywords
��3 ?
(
��? @
$str
��@ H
)
��H I
;
��I J
private
�� 	
string
��
 
Keyword
�� 
;
�� 
private
�� 	
TSQLKeywords
��
 
(
�� 
string
�� 	
keyword
��
 
)
�� 
{
�� 
Keyword
�� 

=
�� 
keyword
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
keyword
��" )
)
��) *
)
��* +
{
�� 
keywordLookup
�� 
[
�� 
keyword
�� 
]
�� 
=
�� 
this
�� !
;
��! "
if
�� 
(
�� 
keyword
�� 
.
�� 
Equals
�� 
(
�� 
$str
��  
,
��  !
StringComparison
��" 2
.
��2 3(
InvariantCultureIgnoreCase
��3 M
)
��M N
)
��N O
{
�� 
keywordLookup
�� 
[
�� 
$str
�� 
]
�� 
=
�� 
this
�� !
;
��! "
}
�� 
else
�� 
if
��	 
(
�� 
keyword
�� 
.
�� 
Equals
�� 
(
�� 
$str
�� )
,
��) *
StringComparison
��+ ;
.
��; <(
InvariantCultureIgnoreCase
��< V
)
��V W
)
��W X
{
�� 
keywordLookup
�� 
[
�� 
$str
�� 
]
�� 
=
�� 
this
�� !
;
��! "
}
�� 
else
�� 
if
��	 
(
�� 
keyword
�� 
.
�� 
Equals
�� 
(
�� 
$str
�� '
,
��' (
StringComparison
��) 9
.
��9 :(
InvariantCultureIgnoreCase
��: T
)
��T U
)
��U V
{
�� 
keywordLookup
�� 
[
�� 
$str
�� 
]
�� 
=
�� 
this
�� !
;
��! "
}
�� 
}
�� 
}
�� 
public
�� 
static
��	 
TSQLKeywords
�� 
Parse
�� "
(
��" #
string
�� 	
token
��
 
)
�� 
{
�� 
if
�� 
(
�� 
keywordLookup
�� 
.
�� 
ContainsKey
��  
(
��  !
token
��! &
)
��& '
)
��' (
{
�� 
return
�� 

keywordLookup
�� 
[
�� 
token
�� 
]
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 

TSQLKeywords
�� 
.
�� 
None
�� 
;
�� 
}
�� 
}
�� 
public
�� 
static
��	 
bool
�� 
	IsKeyword
�� 
(
�� 
string
�� 	
token
��
 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
token
��" '
)
��' (
)
��( )
{
�� 
return
�� 

keywordLookup
�� 
.
�� 
ContainsKey
�� $
(
��$ %
token
��% *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
}
�� 
public
�� 
bool
��	 
In
�� 
(
�� 
params
�� 
TSQLKeywords
�� $
[
��$ %
]
��% &
keywords
��' /
)
��/ 0
{
�� 
return
�� 	
keywords
�� 
!=
�� 
null
�� 
&&
�� 
keywords
�� 
.
�� 
Contains
�� 
(
�� 
this
�� 
)
�� 
;
�� 
}
�� 
public
�� 
static
��	 
bool
�� 
operator
�� 
==
��  
(
��  !
TSQLKeywords
�� 
a
�� 
,
�� 
TSQLKeywords
�� 
b
�� 
)
�� 
{
�� 
if
�� 
(
�� 
Object
�� 
.
�� 
ReferenceEquals
�� 
(
�� 
a
�� 
,
��  
null
��! %
)
��% &
)
��& '
{
�� 
if
�� 
(
�� 
Object
�� 
.
�� 
ReferenceEquals
�� 
(
�� 
b
��  
,
��  !
null
��" &
)
��& '
)
��' (
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 

false
�� 
;
�� 
}
�� 
return
�� 	
a
��
 
.
�� 
Equals
�� 
(
�� 
b
�� 
)
�� 
;
�� 
}
�� 
public
�� 
static
��	 
bool
�� 
operator
�� 
!=
��  
(
��  !
TSQLKeywords
�� 
a
�� 
,
�� 
TSQLKeywords
�� 
b
�� 
)
�� 
{
�� 
return
�� 	
!
��
 
(
�� 
a
�� 
==
�� 
b
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
bool
��
 
Equals
�� 
(
�� 
TSQLKeywords
�� "
obj
��# &
)
��& '
{
�� 
if
�� 
(
�� 
Object
�� 
.
�� 
ReferenceEquals
�� 
(
�� 
obj
�� !
,
��! "
null
��# '
)
��' (
)
��( )
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
Object
�� 
.
�� 
ReferenceEquals
�� 
(
�� 
this
�� "
,
��" #
obj
��$ '
)
��' (
)
��( )
{
�� 
return
�� 

true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
GetType
�� 
(
�� 
)
�� 
!=
�� 
obj
�� 
.
�� 
GetType
�� $
(
��$ %
)
��% &
)
��& '
return
�� 

false
�� 
;
�� 
return
�� 	
Keyword
��
 
==
�� 
obj
�� 
.
�� 
Keyword
��  
;
��  !
}
�� 
public
�� 
override
��	 
bool
�� 
Equals
�� 
(
�� 
object
�� $
obj
��% (
)
��( )
{
�� 
return
�� 	
Equals
��
 
(
�� 
obj
�� 
as
�� 
TSQLKeywords
�� $
)
��$ %
;
��% &
}
�� 
public
�� 
override
��	 
int
�� 
GetHashCode
�� !
(
��! "
)
��" #
{
�� 
return
�� 	
Keyword
��
 
.
�� 
GetHashCode
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 
}�� ��
PC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLTokenizer.cs
	namespace 	
TSQL
 
{ 
public 
partial 
class 
TSQLTokenizer #
{ 
private 	
TSQLCharacterReader
 
_charReader )
=* +
null, 0
;0 1
private 	
	TSQLToken
 
_current 
= 
null #
;# $
private 	
bool
 
_hasMore 
= 
true 
; 
private 	
bool
 
	_hasExtra 
= 
false  
;  !
private 	
	TSQLToken
 
_extraToken 
;  
public 
TSQLTokenizer	 
( 
string 	
tsqlText
 
) 
: 
this 
( 	
new	 
StringReader 
( 
tsqlText "
)" #
)# $
{ 
} 
public 
TSQLTokenizer	 
( 

TextReader 

tsqlStream 
) 
{ 
_charReader 
= 
new 
TSQLCharacterReader (
(( )

tsqlStream) 3
)3 4
;4 5
}   
public"" 
bool""	  
UseQuotedIdentifiers"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
public$$ 
bool$$	 
IncludeWhitespace$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 
bool&&	 
MoveNext&& 
(&& 
)&& 
{'' 
CheckDisposed(( 
((( 
)(( 
;(( 
_current** 
=** 
null** 
;** 
if,, 
(,, 
_hasMore,, 
),, 
{-- 
if.. 
(.. 
	_hasExtra.. 
).. 
{// 
_current00 
=00 
_extraToken00 
;00 
	_hasExtra11 
=11 
false11 
;11 
}22 
else33 
{44 
if55 
(55 	
IncludeWhitespace55	 
)55 
{66 
_hasMore77 
=77 
_charReader77 
.77 
Read77 !
(77! "
)77" #
;77# $
}88 
else99 	
{:: 
_hasMore;; 
=;; 
_charReader;; 
.;; !
ReadNextNonWhitespace;; 2
(;;2 3
);;3 4
;;;4 5
}<< 
if>> 
(>> 	
_hasMore>>	 
)>> 
{?? 

SetCurrent@@ 
(@@ 
)@@ 
;@@ 
}AA 
}BB 
}CC 
returnEE 	
_hasMoreEE
 
;EE 
}FF 
privateHH 	
StringBuilderHH
 
characterHolderHH '
=HH( )
newHH* -
StringBuilderHH. ;
(HH; <
)HH< =
;HH= >
privateJJ 	
voidJJ
 

SetCurrentJJ 
(JJ 
)JJ 
{KK 
characterHolderLL 
.LL 
LengthLL 
=LL 
$numLL 
;LL 
intMM 
startPositionMM 
=MM 
_charReaderMM "
.MM" #
PositionMM# +
;MM+ ,
ifOO 
(OO 
IncludeWhitespacePP 
&&PP 
charQQ 
.QQ 	
IsWhiteSpaceQQ	 
(QQ 
_charReaderQQ !
.QQ! "
CurrentQQ" )
)QQ) *
)QQ* +
{RR 
doSS 
{TT 
characterHolderUU 
.UU 
AppendUU 
(UU 
_charReaderUU '
.UU' (
CurrentUU( /
)UU/ 0
;UU0 1
}VV 
whileVV 
(VV 
_charReaderWW 
.WW 
ReadWW 
(WW 
)WW 
&&WW 
charXX 	
.XX	 

IsWhiteSpaceXX
 
(XX 
_charReaderXX "
.XX" #
CurrentXX# *
)XX* +
)XX+ ,
;XX, -
ifZZ 
(ZZ 
!ZZ 	
_charReaderZZ	 
.ZZ 
EOFZZ 
)ZZ 
{[[ 
_charReader\\ 
.\\ 
Putback\\ 
(\\ 
)\\ 
;\\ 
}]] 
}^^ 
else__ 
{`` 
characterHolderaa 
.aa 
Appendaa 
(aa 
_charReaderaa &
.aa& '
Currentaa' .
)aa. /
;aa/ 0
switchcc 

(cc 
_charReadercc 
.cc 
Currentcc 
)cc  
{dd 
caseff 	
$charff
 
:ff 
{gg 
ifhh 	
(hh
 
_charReaderhh 
.hh 
Readhh 
(hh 
)hh 
)hh 
{ii 
ifjj 

(jj 
_charReaderkk	 
.kk 
Currentkk 
==kk 
$charkk  #
||kk$ &
_charReaderll	 
.ll 
Currentll 
==ll 
$charll  #
||ll$ &
_charReadermm	 
.mm 
Currentmm 
==mm 
$charmm  #
||mm$ &
_charReadernn	 
.nn 
Currentnn 
==nn 
$charnn  #
||nn$ &
_charReaderoo	 
.oo 
Currentoo 
==oo 
$charoo  #
||oo$ &
_charReaderpp	 
.pp 
Currentpp 
==pp 
$charpp  #
||pp$ &
_charReaderqq	 
.qq 
Currentqq 
==qq 
$charqq  #
||qq$ &
_charReaderrr	 
.rr 
Currentrr 
==rr 
$charrr  #
||rr$ &
_charReaderss	 
.ss 
Currentss 
==ss 
$charss  #
||ss$ &
_charReadertt	 
.tt 
Currenttt 
==tt 
$chartt  #
)uu 	
{vv 	
characterHolderww	 
.ww 
Appendww 
(ww  
_charReaderww  +
.ww+ ,
Currentww, 3
)ww3 4
;ww4 5
gotoyy	 
caseyy 
$charyy 
;yy 
}zz 	
else{{ 
{|| 	
_charReader}}	 
.}} 
Putback}} 
(}} 
)}} 
;}} 
}~~ 	
} 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
�� 
.
�� 
Current
�� 
==
��  "
$char
��# &
)
��& '
{
�� 	
do
��	 
{
��	 

characterHolder
��
 
.
�� 
Append
��  
(
��  !
_charReader
��! ,
.
��, -
Current
��- 4
)
��4 5
;
��5 6
}
��	 

while
�� 
(
�� 
_charReader
��
 
.
�� 
Read
�� 
(
�� 
)
�� 
&&
�� 
_charReader
��
 
.
�� 
Current
�� 
!=
��  
$char
��! %
&&
��& (
_charReader
��
 
.
�� 
Current
�� 
!=
��  
$char
��! %
)
��% &
;
��& '
if
��	 
(
�� 
!
�� 
_charReader
�� 
.
�� 
EOF
�� 
)
�� 
{
��	 

_charReader
��
 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
��  
}
��	 

}
�� 	
else
�� 
if
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� $
==
��% '
$char
��( +
)
��+ ,
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
�� 
.
�� 
Current
�� 
==
��  "
$char
��# &
)
��& '
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
int
��	 
currentLevel
�� 
=
�� 
$num
�� 
;
�� 
bool
��	 
lastWasStar
�� 
=
�� 
false
�� !
;
��! "
bool
��	 
lastWasSlash
�� 
=
�� 
false
�� "
;
��" #
while
��	 
(
�� 
_charReader
��
 
.
�� 
Read
�� 
(
�� 
)
�� 
&&
�� 
(
��
 
currentLevel
�� 
>
�� 
$num
�� 
||
�� 
!
�� 
(
�� 
lastWasStar
�� 
&&
�� 
_charReader
�� 
.
�� 
Current
�� 
==
��  "
$char
��# &
)
�� 
)
��
 
)
�� 
{
��	 

if
��
 
(
�� 
lastWasSlash
�� 
&&
�� 
_charReader
�� 
.
�� 
Current
�� 
==
�� !
$char
��" %
)
��% &
{
��
 
currentLevel
�� 
++
�� 
;
�� 
lastWasSlash
�� 
=
�� 
false
�� 
;
��  
lastWasStar
�� 
=
�� 
false
�� 
;
�� 
}
��
 
else
��
 
if
�� 
(
�� 
lastWasStar
�� 
&&
�� 
_charReader
�� 
.
�� 
Current
�� 
==
�� !
$char
��" %
)
��% &
{
��
 
currentLevel
�� 
--
�� 
;
�� 
lastWasSlash
�� 
=
�� 
false
�� 
;
��  
lastWasStar
�� 
=
�� 
false
�� 
;
�� 
}
��
 
else
��
 
{
��
 
lastWasSlash
�� 
=
�� 
_charReader
�� %
.
��% &
Current
��& -
==
��. 0
$char
��1 4
;
��4 5
lastWasStar
�� 
=
�� 
_charReader
�� $
.
��$ %
Current
��% ,
==
��- /
$char
��0 3
;
��3 4
}
��
 
characterHolder
��
 
.
�� 
Append
��  
(
��  !
_charReader
��! ,
.
��, -
Current
��- 4
)
��4 5
;
��5 6
}
��	 

if
��	 
(
�� 
!
�� 
_charReader
�� 
.
�� 
EOF
�� 
)
�� 
{
��	 

characterHolder
��
 
.
�� 
Append
��  
(
��  !
_charReader
��! ,
.
��, -
Current
��- 4
)
��4 5
;
��5 6
}
��	 

}
�� 	
else
�� 
if
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� $
==
��% '
$char
��( +
)
��+ ,
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
)
�� 	
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
)
�� 	
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
)
�� 	
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
�� 
.
�� 
Current
�� 
==
��  "
$char
��# &
)
��& '
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
�� 
.
�� 
Current
�� 
==
��  "
$char
��# '
)
��' (
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
goto
��	 
case
�� 
$char
�� 
;
�� 
}
�� 	
else
�� 
if
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� $
==
��% '
$char
��( ,
)
��, -
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
goto
��	 
case
�� 
$char
�� 
;
�� 
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
goto
��	 
default
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
�� 
.
�� 
Current
�� 
==
��  "
$char
��# &
)
��& '
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
char
�� 

escapeChar
�� 
;
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Current
�� 
==
�� !
$char
��" %
)
��% &
{
�� 

escapeChar
�� 
=
�� 
$char
�� 
;
�� 
}
�� 
else
�� 
{
�� 

escapeChar
�� 
=
�� 
_charReader
��  
.
��  !
Current
��! (
;
��( )
}
�� 
bool
�� 
stillEscaped
�� 
;
�� 
do
�� 	
{
�� 
while
�� 
(
�� 
_charReader
��	 
.
�� 
Read
�� 
(
�� 
)
�� 
&&
�� 
_charReader
��	 
.
�� 
Current
�� 
!=
�� 

escapeChar
��  *
)
��* +
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
;
��	 

if
�� 

(
�� 
!
�� 
_charReader
�� 
.
�� 
EOF
�� 
)
�� 
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
stillEscaped
�� 
=
�� 
!
��	 

_charReader
��
 
.
�� 
EOF
�� 
&&
�� 
_charReader
��	 
.
�� 
Read
�� 
(
�� 
)
�� 
&&
�� 
_charReader
��	 
.
�� 
Current
�� 
==
�� 

escapeChar
��  *
;
��* +
if
�� 

(
�� 
stillEscaped
�� 
)
�� 
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
}
�� 	
}
�� 
while
��	 
(
�� 
stillEscaped
�� 
)
�� 
;
�� 
if
�� 	
(
��
 
!
�� 
_charReader
�� 
.
�� 
EOF
�� 
)
�� 
{
�� 
_charReader
�� 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
)
��# $
{
�� 	
characterHolder
��	 
.
�� 
Append
�� 
(
��  
_charReader
��  +
.
��+ ,
Current
��, 3
)
��3 4
;
��4 5
bool
��	 
foundEnd
�� 
=
�� 
false
�� 
;
�� 
while
��	 
(
�� 
!
��
 
foundEnd
�� 
&&
�� 
_charReader
��
 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
��	 

switch
��
 
(
�� 
_charReader
�� 
.
�� 
Current
�� %
)
��% &
{
��
 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
{
�� 
characterHolder
�� 
.
�� 
Append
�� #
(
��# $
_charReader
��$ /
.
��/ 0
Current
��0 7
)
��7 8
;
��8 9
break
�� 
;
�� 
}
�� 
default
�� 
:
�� 
{
�� 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
break
�� 
;
�� 
}
�� 
}
��
 
}
��	 

if
��	 
(
�� 
foundEnd
�� 
)
�� 
{
��	 

_charReader
��
 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
��  
}
��	 

}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
goto
��	 
case
�� 
$char
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
bool
�� 
foundEnd
�� 
=
�� 
false
�� 
;
�� 
bool
�� 
foundPeriod
�� 
=
�� 
false
�� 
;
��  
while
�� 
(
�� 
!
�� 	
foundEnd
��	 
&&
�� 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
switch
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� #
)
��# $
{
�� 	
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
{
��
 
characterHolder
�� 
.
�� 
Append
�� !
(
��! "
_charReader
��" -
.
��- .
Current
��. 5
)
��5 6
;
��6 7
if
�� 
(
�� 
_charReader
�� 
.
�� 
Read
�� 
(
��  
)
��  !
)
��! "
{
�� 
switch
�� 
(
�� 
_charReader
�� 
.
��  
Current
��  '
)
��' (
{
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
{
�� 
characterHolder
�� 
.
�� 
Append
�� %
(
��% &
_charReader
��& 1
.
��1 2
Current
��2 9
)
��9 :
;
��: ;
break
�� 
;
�� 
}
�� 
default
�� 
:
�� 
{
�� 
_charReader
�� 
.
�� 
Putback
�� "
(
��" #
)
��# $
;
��$ %
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
while
�� 
(
�� 
!
�� 
foundEnd
�� 
&&
�� 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
switch
�� 
(
�� 
_charReader
�� 
.
��  
Current
��  '
)
��' (
{
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
case
�� 
$char
�� 
:
�� 
{
�� 
characterHolder
�� 
.
�� 
Append
�� %
(
��% &
_charReader
��& 1
.
��1 2
Current
��2 9
)
��9 :
;
��: ;
break
�� 
;
�� 
}
�� 
default
�� 
:
�� 
{
�� 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
break
�� 
;
�� 
}
��
 
case
��	 
$char
�� 
:
�� 
{
��
 
if
�� 
(
�� 
foundPeriod
�� 
)
�� 
{
�� 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
characterHolder
�� 
.
�� 
Append
�� "
(
��" #
_charReader
��# .
.
��. /
Current
��/ 6
)
��6 7
;
��7 8
foundPeriod
�� 
=
�� 
true
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
��
 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
{
��
 
characterHolder
�� 
.
�� 
Append
�� !
(
��! "
_charReader
��" -
.
��- .
Current
��. 5
)
��5 6
;
��6 7
break
�� 
;
�� 
}
��
 
default
��	 
:
�� 
{
��
 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
break
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
if
�� 	
(
��
 
foundEnd
�� 
)
�� 
{
�� 
_charReader
�� 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 

(
�� 
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
||
��$ &
_charReader
��	 
.
�� 
Current
�� 
==
�� 
$char
��  #
)
��	 

{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
goto
��	 
case
�� 
$char
�� 
;
�� 
}
�� 	
else
�� 
{
�� 	
_charReader
��	 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
goto
��	 
default
�� 
;
�� 
}
�� 	
}
�� 
break
�� 
;
�� 
}
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
case
�� 	
$char
��
 
:
�� 
{
�� 
bool
�� 
foundEnd
�� 
=
�� 
false
�� 
;
�� 
bool
�� 
foundPeriod
�� 
=
�� 
false
�� 
;
��  
if
�� 	
(
��
 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
switch
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� #
)
��# $
{
�� 	
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
{
��
 
characterHolder
�� 
.
�� 
Append
�� !
(
��! "
_charReader
��" -
.
��- .
Current
��. 5
)
��5 6
;
��6 7
break
�� 
;
�� 
}
��
 
default
��	 
:
�� 
{
��
 
_charReader
�� 
.
�� 
Putback
�� 
(
�� 
)
��  
;
��  !
break
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
while
�� 
(
�� 
!
�� 	
foundEnd
��	 
&&
�� 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
switch
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� #
)
��# $
{
�� 	
case
��	 
$char
�� 
:
�� 
{
��
 
if
�� 
(
�� 
foundPeriod
�� 
)
�� 
{
�� 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
characterHolder
�� 
.
�� 
Append
�� "
(
��" #
_charReader
��# .
.
��. /
Current
��/ 6
)
��6 7
;
��7 8
foundPeriod
�� 
=
�� 
true
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
��
 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
{
��
 
characterHolder
�� 
.
�� 
Append
�� !
(
��! "
_charReader
��" -
.
��- .
Current
��. 5
)
��5 6
;
��6 7
break
�� 
;
�� 
}
��
 
default
��	 
:
�� 
{
��
 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
break
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
if
�� 	
(
��
 
foundEnd
�� 
)
�� 
{
�� 
_charReader
�� 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
�� 
default
�� 
:
�� 
{
�� 
bool
�� 
foundEnd
�� 
=
�� 
false
�� 
;
�� 
while
�� 
(
�� 
!
�� 	
foundEnd
��	 
&&
�� 
_charReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
)
�� 
{
�� 
switch
�� 
(
�� 
_charReader
�� 
.
�� 
Current
�� #
)
��# $
{
�� 	
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
case
��	 
$char
�� 
:
�� 
{
��
 
foundEnd
�� 
=
�� 
true
�� 
;
�� 
break
�� 
;
�� 
}
��
 
default
��	 
:
�� 
{
��
 
characterHolder
�� 
.
�� 
Append
�� !
(
��! "
_charReader
��" -
.
��- .
Current
��. 5
)
��5 6
;
��6 7
break
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
if
�� 	
(
��
 
foundEnd
�� 
)
�� 
{
�� 
_charReader
�� 
.
�� 
Putback
�� 
(
�� 
)
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
_current
�� 
=
��  
DetermineTokenType
��  
(
��  !
characterHolder
�� 
.
�� 
ToString
�� 
(
�� 
)
�� 
,
�� 
startPosition
�� 
,
�� 
startPosition
�� 
+
�� 
characterHolder
�� #
.
��# $
Length
��$ *
-
��+ ,
$num
��- .
)
��. /
;
��/ 0
}
�� 
private
�� 	
	TSQLToken
��
  
DetermineTokenType
�� &
(
��& '
string
�� 	

tokenValue
��
 
,
�� 
int
�� 
startPosition
�� 
,
�� 
int
�� 
endPosition
�� 
)
�� 
{
�� 
if
�� 
(
�� 
char
�� 
.
�� 	
IsWhiteSpace
��	 
(
�� 

tokenValue
��  
[
��  !
$num
��! "
]
��" #
)
��# $
)
��$ %
{
�� 
return
�� 

new
�� 
TSQLWhitespace
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
)
�� 
{
�� 
if
�� 
(
�� 
TSQLVariables
�� 
.
�� 

IsVariable
��  
(
��  !

tokenValue
��! +
)
��+ ,
)
��, -
{
�� 
return
�� 
new
�� 	 
TSQLSystemVariable
��
 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 	
TSQLVariable
��
 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
.
�� 

StartsWith
�� !
(
��! "
$str
��" &
)
��& '
)
��' (
{
�� 
return
�� 

new
�� #
TSQLSingleLineComment
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
.
�� 

StartsWith
�� !
(
��! "
$str
��" &
)
��& '
)
��' (
{
�� 
return
�� 

new
�� "
TSQLMultilineComment
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
.
�� 

StartsWith
�� 
(
�� 
$str
�� 
)
�� 
||
��  "

tokenValue
�� 
.
�� 

StartsWith
�� 
(
�� 
$str
�� 
)
��  
||
��! #
(
�� 
!
�� "
UseQuotedIdentifiers
�� 
&&
�� 
(
�� 

tokenValue
�� 
.
�� 

StartsWith
�� 
(
�� 
$str
��  
)
��  !
||
��" $

tokenValue
�� 
.
�� 

StartsWith
�� 
(
�� 
$str
�� !
)
��! "
)
�� 
)
�� 
)
�� 
{
�� 
return
�� 

new
�� 
TSQLStringLiteral
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
)
�� 
{
�� 
if
�� 
(
�� 

tokenValue
�� 
.
�� 
Length
�� 
>
�� 
$num
�� 
&&
�� 
char
�� 	
.
��	 

IsLetter
��
 
(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
��  
)
��  !
)
��! "
{
�� 
return
�� 
new
�� 	
TSQLIdentifier
��
 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 	
TSQLMoneyLiteral
��
 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
}
�� 
else
�� 
if
�� 

(
�� 
CharUnicodeInfo
�� 
.
��  
GetUnicodeCategory
�� .
(
��. /

tokenValue
��/ 9
[
��9 :
$num
��: ;
]
��; <
)
��< =
==
��> @
UnicodeCategory
��A P
.
��P Q
CurrencySymbol
��Q _
)
��_ `
{
�� 
return
�� 

new
�� 
TSQLMoneyLiteral
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
.
�� 

StartsWith
�� !
(
��! "
$str
��" &
,
��& '
StringComparison
��( 8
.
��8 9(
InvariantCultureIgnoreCase
��9 S
)
��S T
)
��T U
{
�� 
return
�� 

new
�� 
TSQLBinaryLiteral
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 
char
�� 
.
�� 	
IsDigit
��	 
(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
)
�� 
||
��  "
(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
&&
�� 

tokenValue
�� 
.
�� 
Length
�� 
>
�� 
$num
�� 
&&
�� 
char
�� 	
.
��	 

IsDigit
��
 
(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
)
��  
)
�� 
)
�� 
{
�� 
return
�� 

new
��  
TSQLNumericLiteral
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
||
�� 

tokenValue
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$char
�� 
)
�� 
{
�� 
return
�� 

new
�� 
TSQLOperator
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 
TSQLCharacters
�� 
.
�� 
IsCharacter
�� &
(
��& '

tokenValue
��' 1
)
��1 2
)
��2 3
{
�� 
return
�� 

new
�� 
TSQLCharacter
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 
TSQLKeywords
�� 
.
�� 
	IsKeyword
�� "
(
��" #

tokenValue
��# -
)
��- .
)
��. /
{
�� 
return
�� 

new
�� 
TSQLKeyword
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 

(
�� 
TSQLIdentifiers
�� 
.
�� 
IsIdentifier
�� (
(
��( )

tokenValue
��) 3
)
��3 4
)
��4 5
{
�� 
return
�� 

new
�� "
TSQLSystemIdentifier
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 

new
�� 
TSQLIdentifier
��	 
(
�� 
startPosition
�� 
,
�� 

tokenValue
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 
void
��	 
Putback
�� 
(
�� 
)
�� 
{
�� 
	_hasExtra
�� 
=
�� 
true
�� 
;
�� 
_extraToken
�� 
=
�� 
_current
�� 
;
�� 
_hasMore
�� 
=
�� 
true
�� 
;
�� 
}
�� 
public
�� 
	TSQLToken
��	 
Current
�� 
{
�� 
get
�� 
{
�� 
CheckDisposed
�� 
(
�� 
)
�� 
;
�� 
return
�� 

_current
�� 
;
�� 
}
�� 
}
�� 
public
�� 
static
��	 
List
�� 
<
�� 
	TSQLToken
�� 
>
�� 
ParseTokens
��  +
(
��+ ,
string
�� 	
tsqlText
��
 
,
�� 
bool
�� "
useQuotedIdentifiers
�� 
=
�� 
false
�� $
,
��$ %
bool
�� 
includeWhitespace
�� 
=
�� 
false
�� !
)
��! "
{
�� 
return
�� 	
new
��
 
TSQLTokenizer
�� 
(
�� 
tsqlText
�� $
)
��$ %
{
�� "
UseQuotedIdentifiers
�� 
=
�� "
useQuotedIdentifiers
�� /
,
��/ 0
IncludeWhitespace
�� 
=
�� 
includeWhitespace
�� )
}
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� �
\C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLTokenizer.IDisposable.cs
	namespace 	
TSQL
 
{ 
partial 
class	 
TSQLTokenizer 
: 
IDisposable *
{		 
private 	
bool
 
	_disposed 
= 
false  
;  !
void 
IDisposable 
. 
Dispose 
( 
) 
{ 
if 
( 
! 
	_disposed 
) 
{ 
Dispose 
( 
true 
) 
; 
} 
} 
private 	
void
 
Dispose 
( 
bool 
	disposing %
)% &
{ 
if 
( 
! 
	_disposed 
) 
{   
if"" 
("" 
	disposing"" 
)"" 
{## 
}%% 
try(( 
{)) 
(** 
_charReader** 
as** 
IDisposable**  
)**  !
.**! "
Dispose**" )
(**) *
)*** +
;**+ ,
}++ 
catch,, 	
(,,
 
	Exception,, 
),, 
{-- 
}// 
_charReader00 
=00 
null00 
;00 
	_disposed22 
=22 
true22 
;22 
}33 
}44 
private== 	
void==
 
CheckDisposed== 
(== 
)== 
{>> 
if?? 
(?? 
	_disposed?? 
)?? 
{@@ 
throwAA 	
newAA
 #
ObjectDisposedExceptionAA %
(AA% &
GetTypeAA& -
(AA- .
)AA. /
.AA/ 0
FullNameAA0 8
,AA8 9
$strAA: e
+AAf g
$strBB ,
+BB- .
$strCC 
)CC 
;CC 
}DD 
}EE 
}HH 
}II �
\C:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLTokenizer.IEnumerable.cs
	namespace 	
TSQL
 
{ 
partial		 
class			 
TSQLTokenizer		 
:		 
ITSQLTokenizer		 -
{

 
IEnumerator 
IEnumerable 
. 
GetEnumerator '
(' (
)( )
{ 
return 	
this
 
; 
} 
IEnumerator 
< 
	TSQLToken 
> 
IEnumerable $
<$ %
	TSQLToken% .
>. /
./ 0
GetEnumerator0 =
(= >
)> ?
{ 
return 	
this
 
; 
} 
object 
IEnumerator	 
. 
Current 
{ 
get 
{ 
return 

( 
this 
as 
IEnumerator 
<  
	TSQLToken  )
>) *
)* +
.+ ,
Current, 3
;3 4
} 
} 
void 
IEnumerator 
. 
Reset 
( 
) 
{   
throw!! 
new!!	 !
NotSupportedException!! "
(!!" #
$str!!# t
+!!u v
GetType!!w ~
(!!~ 
)	!! �
.
!!� �
FullName
!!� �
+
!!� �
$str
!!� �
)
!!� �
;
!!� �
}"" 
}%% 
}&& �Y
PC:\Users\shrio\Source\Repos\tsql-parser\TSQL_Parser\TSQL_Parser\TSQLVariables.cs
	namespace 	
TSQL
 
{ 
public 
class 
TSQLVariables 
{		 
private

 	
static


 

Dictionary

 
<

 
string

 "
,

" #
TSQLVariables

$ 1
>

1 2
variableLookup

3 A
=

B C
new 

Dictionary 
< 
string 
, 
TSQLVariables '
>' (
(( )
StringComparer) 7
.7 8&
InvariantCultureIgnoreCase8 R
)R S
;S T
public 
static	 
TSQLVariables 
None "
=# $
new% (
TSQLVariables) 6
(6 7
$str7 9
)9 :
;: ;
public 
static	 
TSQLVariables 
CONNECTIONS )
=* +
new, /
TSQLVariables0 =
(= >
$str> M
)M N
;N O
public 
static	 
TSQLVariables 
MAX_CONNECTIONS -
=. /
new0 3
TSQLVariables4 A
(A B
$strB U
)U V
;V W
public 
static	 
TSQLVariables 
CPU_BUSY &
=' (
new) ,
TSQLVariables- :
(: ;
$str; G
)G H
;H I
public 
static	 
TSQLVariables 
ERROR #
=$ %
new& )
TSQLVariables* 7
(7 8
$str8 A
)A B
;B C
public 
static	 
TSQLVariables 
IDENTITY &
=' (
new) ,
TSQLVariables- :
(: ;
$str; G
)G H
;H I
public 
static	 
TSQLVariables 
IDLE "
=# $
new% (
TSQLVariables) 6
(6 7
$str7 ?
)? @
;@ A
public 
static	 
TSQLVariables 
IO_BUSY %
=& '
new( +
TSQLVariables, 9
(9 :
$str: E
)E F
;F G
public 
static	 
TSQLVariables 
LANGID $
=% &
new' *
TSQLVariables+ 8
(8 9
$str9 C
)C D
;D E
public 
static	 
TSQLVariables 
LANGUAGE &
=' (
new) ,
TSQLVariables- :
(: ;
$str; G
)G H
;H I
public 
static	 
TSQLVariables 

MAXCHARLEN (
=) *
new+ .
TSQLVariables/ <
(< =
$str= K
)K L
;L M
public 
static	 
TSQLVariables 
PACK_RECEIVED +
=, -
new. 1
TSQLVariables2 ?
(? @
$str@ Q
)Q R
;R S
public 
static	 
TSQLVariables 
	PACK_SENT '
=( )
new* -
TSQLVariables. ;
(; <
$str< I
)I J
;J K
public 
static	 
TSQLVariables 
PACKET_ERRORS +
=, -
new. 1
TSQLVariables2 ?
(? @
$str@ Q
)Q R
;R S
public 
static	 
TSQLVariables 
ROWCOUNT &
=' (
new) ,
TSQLVariables- :
(: ;
$str; G
)G H
;H I
public 
static	 
TSQLVariables 

SERVERNAME (
=) *
new+ .
TSQLVariables/ <
(< =
$str= K
)K L
;L M
public   
static  	 
TSQLVariables   
SPID   "
=  # $
new  % (
TSQLVariables  ) 6
(  6 7
$str  7 ?
)  ? @
;  @ A
public!! 
static!!	 
TSQLVariables!! 
TEXTSIZE!! &
=!!' (
new!!) ,
TSQLVariables!!- :
(!!: ;
$str!!; G
)!!G H
;!!H I
public"" 
static""	 
TSQLVariables"" 
	TIMETICKS"" '
=""( )
new""* -
TSQLVariables"". ;
(""; <
$str""< I
)""I J
;""J K
public## 
static##	 
TSQLVariables## 
TOTAL_ERRORS## *
=##+ ,
new##- 0
TSQLVariables##1 >
(##> ?
$str##? O
)##O P
;##P Q
public$$ 
static$$	 
TSQLVariables$$ 

TOTAL_READ$$ (
=$$) *
new$$+ .
TSQLVariables$$/ <
($$< =
$str$$= K
)$$K L
;$$L M
public%% 
static%%	 
TSQLVariables%% 
TOTAL_WRITE%% )
=%%* +
new%%, /
TSQLVariables%%0 =
(%%= >
$str%%> M
)%%M N
;%%N O
public&& 
static&&	 
TSQLVariables&& 
	TRANCOUNT&& '
=&&( )
new&&* -
TSQLVariables&&. ;
(&&; <
$str&&< I
)&&I J
;&&J K
public'' 
static''	 
TSQLVariables'' 
VERSION'' %
=''& '
new''( +
TSQLVariables'', 9
(''9 :
$str'': E
)''E F
;''F G
private++ 	
string++
 
Variable++ 
;++ 
private-- 	
TSQLVariables--
 
(-- 
string.. 	
variable..
 
).. 
{// 
Variable00 
=00 
variable00 
;00 
if11 
(11 
variable11 
.11 
Length11 
>11 
$num11 
)11 
{22 
variableLookup33 
[33 
variable33 
]33 
=33 
this33 #
;33# $
}44 
}55 
public77 
static77	 
TSQLVariables77 
Parse77 #
(77# $
string88 	
token88
 
)88 
{99 
if:: 
(:: 
!;; 
string;; 
.;; 
IsNullOrEmpty;; 
(;; 
token;; 
);;  
&&;;! #
variableLookup<< 
.<< 
ContainsKey<< 
(<< 
token<< $
)<<$ %
)<<% &
{== 
return>> 

variableLookup>> 
[>> 
token>> 
]>>  
;>>  !
}?? 
else@@ 
{AA 
returnBB 

TSQLVariablesBB 
.BB 
NoneBB 
;BB 
}CC 
}DD 
publicFF 
staticFF	 
boolFF 

IsVariableFF 
(FF  
stringGG 	
tokenGG
 
)GG 
{HH 
ifII 
(II 
!II 
stringII 
.II 
IsNullOrWhiteSpaceII !
(II! "
tokenII" '
)II' (
)II( )
{JJ 
returnKK 

variableLookupKK 
.KK 
ContainsKeyKK %
(KK% &
tokenKK& +
)KK+ ,
;KK, -
}LL 
elseMM 
{NN 
returnOO 

falseOO 
;OO 
}PP 
}QQ 
publicSS 
boolSS	 
InSS 
(SS 
paramsSS 
TSQLVariablesSS %
[SS% &
]SS& '
	variablesSS( 1
)SS1 2
{TT 
returnUU 	
	variablesVV 
!=VV 
nullVV 
&&VV 
	variablesWW 
.WW 
ContainsWW 
(WW 
thisWW 
)WW 
;WW 
}XX 
public\\ 
static\\	 
bool\\ 
operator\\ 
==\\  
(\\  !
TSQLVariables]] 
a]] 
,]] 
TSQLVariables^^ 
b^^ 
)^^ 
{__ 
if`` 
(`` 
Object`` 
.`` 
ReferenceEquals`` 
(`` 
a`` 
,``  
null``! %
)``% &
)``& '
{aa 
ifbb 
(bb 
Objectbb 
.bb 
ReferenceEqualsbb 
(bb 
bbb  
,bb  !
nullbb" &
)bb& '
)bb' (
{cc 
returnee 
trueee 
;ee 
}ff 
returnii 

falseii 
;ii 
}jj 
returnmm 	
amm
 
.mm 
Equalsmm 
(mm 
bmm 
)mm 
;mm 
}nn 
publicpp 
staticpp	 
boolpp 
operatorpp 
!=pp  
(pp  !
TSQLVariablesqq 
aqq 
,qq 
TSQLVariablesrr 
brr 
)rr 
{ss 
returntt 	
!tt
 
(tt 
att 
==tt 
btt 
)tt 
;tt 
}uu 
publicww 
boolww	 
Equalsww 
(ww 
TSQLVariablesww "
objww# &
)ww& '
{xx 
ifzz 
(zz 
Objectzz 
.zz 
ReferenceEqualszz 
(zz 
objzz !
,zz! "
nullzz# '
)zz' (
)zz( )
{{{ 
return|| 

false|| 
;|| 
}}} 
if
�� 
(
�� 
Object
�� 
.
�� 
ReferenceEquals
�� 
(
�� 
this
�� "
,
��" #
obj
��$ '
)
��' (
)
��( )
{
�� 
return
�� 

true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
GetType
�� 
(
�� 
)
�� 
!=
�� 
obj
�� 
.
�� 
GetType
�� $
(
��$ %
)
��% &
)
��& '
return
�� 

false
�� 
;
�� 
return
�� 	
Variable
��
 
==
�� 
obj
�� 
.
�� 
Variable
�� "
;
��" #
}
�� 
public
�� 
override
��	 
bool
�� 
Equals
�� 
(
�� 
object
�� $
obj
��% (
)
��( )
{
�� 
return
�� 	
Equals
��
 
(
�� 
obj
�� 
as
�� 
TSQLVariables
�� %
)
��% &
;
��& '
}
�� 
public
�� 
override
��	 
int
�� 
GetHashCode
�� !
(
��! "
)
��" #
{
�� 
return
�� 	
Variable
��
 
.
�� 
GetHashCode
�� 
(
�� 
)
��  
;
��  !
}
�� 
}
�� 
}�� 