.class public Lcom/henrythompson/quoda/language/SqlStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    const-string v0, "sql"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x3
.end method

.method public parse()V
    .locals 15

    const/4 v14, 0x3

    const/16 v13, 0x27

    const/16 v12, 0x22

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v14, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v14, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v14, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->getParseEnd()I

    move-result v3

    const/4 v14, 0x6

    const-string v6, "\\b(INTERSECT|MINUS|NOT|AND|OR|IN|ANY|SOME|BETWEEN|EXISTS|LIKE|ESCAPE|PRIOR|aggregate|alter|cascade|conversion|create|database|drop|domain|function|group|(unique\\s+)?index|language|operator\\s+class|operator|rule|schema|sequence|table|tablespace|trigger|type|user|view|select(\\s+distinct)?|insert\\s+(ignore\\s+)?into|update|delete|from|set|where|group\\sby|union(\\s+all)?|having|order\\sby|limit|(inner|cross)\\s+join|straight_join|(left|right)(\\s+outer)?\\s+join|natural(\\s+(left|right)(\\s+outer)?)?\\s+join|on|((is\\s+)?not\\s+)?null|values|begin(\\s+work)?|start\\s+transaction|commit(\\s+work)?|rollback(\\s+work)?|grant(\\swith\\sgrant\\soption)?|revoke|in|comment\\s+on\\s+(table|column|aggregate|constraint|database|domain|function|index|operator|rule|schema|sequence|trigger|type|view)\\s+.*?\\s+(is)\\s+|as|desc|asc|((?:primary|foreign)\\s+key|references|on\\sdelete(\\s+cascade)?|check|constraint))\\b"

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x6

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v9, 0x6

    const/4 v14, 0x5

    :cond_0
    const-string v6, "\\b(bigint|bigserial|bit|boolean|box|bytea|cidr|circle|date|double\\sprecision|inet|int|integer|line|lseg|macaddr|money|oid|path|point|polygon|real|serial|smallint|sysdate|text|bit\\svarying|character\\s(?:varying)?|tinyint|var\\schar|float|interval|char|number|varchar|numeric|times|timestamp)\\b"

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x2

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v12, 0x6

    const/4 v14, 0x0

    :cond_1
    const-string v6, "\\b(withoutstimeszone|NULL)\\b"

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x7

    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v3, 0x2

    const/4 v14, 0x2

    :cond_2
    const-string v6, "\\b(\\d+)\\b"

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x6

    :goto_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v11, 0x7

    const/4 v14, 0x4

    :cond_3
    const-string v6, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x5

    :goto_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v7, 0x6

    const/4 v14, 0x5

    :cond_4
    const-string v6, "\\b((SESSION|SYSTEM)_USER|(AVG|COUNT|FIRST|LAST|MID|UCASE|LCASE|LEN|ROUND|NOW|FORMAT|MIN|MAX|SUM)(?=\\s*\\())\\b"

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x5

    :goto_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v12, 0x0

    const/4 v14, 0x2

    :cond_5
    const-string v6, "\\b(CONCATENATE|CONVERT|LOWER|SUBSTRING|TRANSLATE|TRIM|UPPER|CURRENT_(DATE|TIME(STAMP)?|USER))\\b"

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x3

    :goto_6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v7, 0x3

    const/4 v14, 0x0

    :cond_6
    const-string v6, "\\b(\\w+?)(\\.)(\\w+)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x5

    :goto_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v12, 0x4

    const/4 v14, 0x1

    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    if-ge v6, v3, :cond_16

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v14, 0x2

    const/4 v1, 0x0

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    const/4 v14, 0x0

    :goto_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v14, 0x2

    if-nez v1, :cond_9

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v14, 0x2

    :cond_8
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v0, 0x6

    const/4 v14, 0x5

    :cond_9
    if-nez v1, :cond_a

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v14, 0x5

    const/4 v1, 0x1

    const/4 v14, 0x7

    goto :goto_9

    const/4 v11, 0x6

    const/4 v14, 0x0

    :cond_a
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v14, 0x4

    const/4 v1, 0x0

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_9

    const/4 v4, 0x6

    const/4 v14, 0x0

    :cond_b
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    const/4 v14, 0x3

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v14, 0x3

    if-nez v1, :cond_d

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v14, 0x4

    :cond_c
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v6, 0x3

    const/4 v14, 0x4

    :cond_d
    if-nez v1, :cond_e

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v14, 0x6

    const/4 v1, 0x1

    const/4 v14, 0x2

    goto :goto_a

    const/4 v8, 0x3

    const/4 v14, 0x1

    :cond_e
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_a

    const/4 v5, 0x0

    const/4 v14, 0x4

    :cond_f
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "%{"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "%r{"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v14, 0x2

    :cond_10
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v0

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v4, 0x7

    const/4 v14, 0x6

    :cond_11
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "--"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x2

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v0

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v1, 0x3

    const/4 v14, 0x1

    :cond_12
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x2

    const/4 v14, 0x6

    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/SqlStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_13

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "*/"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v14, 0x1

    :cond_13
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/SqlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v2, 0x1

    const/4 v14, 0x0

    :cond_14
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v1, 0x4

    const/4 v14, 0x4

    :cond_15
    iget-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_8

    const/4 v9, 0x7

    const/4 v14, 0x2

    :cond_16
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/henrythompson/quoda/language/SqlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v14, 0x0

    nop

    return-void

    const/4 v13, 0x3
.end method
