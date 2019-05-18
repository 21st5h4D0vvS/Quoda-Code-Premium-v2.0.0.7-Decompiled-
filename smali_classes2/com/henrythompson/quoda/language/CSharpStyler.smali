.class public Lcom/henrythompson/quoda/language/CSharpStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private CStyleBlockCommentEnd:[C

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v1, 0x6

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->CStyleBlockCommentEnd:[C

    nop

    return-void

    const/4 v1, 0x0

    nop

    :array_0
    .array-data 2
        0x2as
        0x2fs
    .end array-data
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x6

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->getParseEnd()I

    move-result v6

    const/4 v13, 0x7

    const-string v10, "\\b(?!((if|else|do|while|catch|synchronized|for|switch)\\s*|@))([a-zA-Z_][a-zA-Z0-9_]+)\\s*\\("

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v9, 0x5

    const/4 v13, 0x4

    :cond_0
    const-string v10, "\\b(namespace|using|internal|public|protected|private|static|const|new|sealed|abstract|override|extern|unsafe|readonly|volatile|operator|event|delegate|explicit|implicit|in|set|get|new|public|protected|internal|private|abstract|sealed|static|if|else|while|for|foreach|do|return|continue|break|switch|case|default|goto|throw|try|catch|finally|lock|yield)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v9, 0x5

    const/4 v13, 0x1

    :cond_1
    const-string v10, "\\b(bool|byte|sbyte|char|decimal|double|float|int|uint|long|ulong|object|short|ushort|string|void|class|struct|enum|interface)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v1, 0x6

    const/4 v13, 0x4

    :cond_2
    const-string v10, "\\b(new)\\s*(\\w+)\\s*\\("

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v6, 0x4

    const/4 v13, 0x6

    :cond_3
    const-string v10, "((?:\\b(?:new|public|protected|internal|private|abstract|sealed|static)\\b\\s)*)(class)\\s+([A-Za-z_]\\w+)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v4, 0x1

    const/4 v13, 0x7

    :cond_4
    const-string v10, "^\\s*(using)([^;]*;)"

    const/16 v11, 0x8

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNormalTextStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v7, 0x6

    const/4 v13, 0x6

    :cond_5
    const-string v10, "^\\s*(#)\\s*(if|else|elif|endif|define|undef|warning|error|line|region|endregion)\\b"

    const/16 v11, 0x8

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v5, 0x5

    const/4 v13, 0x3

    :cond_6
    const-string v10, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|\\b(new|is|checked|unchecked|typeof|sizeof|override|in|out|ref|readonly|params|stackalloc|as)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v8, 0x6

    const/4 v13, 0x4

    :cond_7
    const-string v10, "\\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)(L|l|UL|ul|u|U|F|f|ll|LL|ull|ULL)?\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v8, 0x2

    const/4 v13, 0x3

    :cond_8
    const-string v10, "\\b(true|false|null|this|base)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v13, 0x0

    const/4 v13, 0x1

    :cond_9
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_25

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x3

    const/4 v13, 0x5

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v13, 0x1

    :cond_a
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x4

    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_2b

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v6, :cond_2b

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x3

    const/4 v3, 0x0

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_c

    const/4 v13, 0x3

    add-int/lit8 v8, v8, -0x1

    const/4 v13, 0x6

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v13, 0x0

    if-nez v3, :cond_f

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x3

    :cond_d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x0

    if-nez v9, :cond_11

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    :cond_e
    :goto_d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_b

    const/4 v7, 0x1

    const/4 v13, 0x4

    :cond_f
    if-nez v3, :cond_10

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v13, 0x5

    const/4 v3, 0x1

    const/4 v13, 0x2

    goto :goto_c

    const/4 v7, 0x1

    const/4 v13, 0x3

    :cond_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v13, 0x7

    const/4 v3, 0x0

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_c

    const/4 v3, 0x7

    const/4 v13, 0x5

    :cond_11
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v1, 0x2

    const/4 v13, 0x4

    :cond_12
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x4

    :cond_13
    :goto_e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    if-nez v9, :cond_23

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v6, 0x0

    const/4 v13, 0x7

    :cond_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x75

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v13, 0x4

    const/4 v9, 0x0

    const/4 v13, 0x4

    const/4 v4, 0x0

    :goto_f
    const/4 v10, 0x4

    if-ge v4, v10, :cond_15

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v13, 0x1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_16

    const/16 v10, 0x61

    if-eq v1, v10, :cond_16

    const/16 v10, 0x62

    if-eq v1, v10, :cond_16

    const/16 v10, 0x63

    if-eq v1, v10, :cond_16

    const/16 v10, 0x64

    if-eq v1, v10, :cond_16

    const/16 v10, 0x65

    if-eq v1, v10, :cond_16

    const/16 v10, 0x66

    if-eq v1, v10, :cond_16

    const/16 v10, 0x41

    if-eq v1, v10, :cond_16

    const/16 v10, 0x42

    if-eq v1, v10, :cond_16

    const/16 v10, 0x43

    if-eq v1, v10, :cond_16

    const/16 v10, 0x44

    if-eq v1, v10, :cond_16

    const/16 v10, 0x45

    if-eq v1, v10, :cond_16

    const/16 v10, 0x46

    if-eq v1, v10, :cond_16

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v13, 0x6

    :cond_15
    :goto_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x4

    const/4 v9, 0x1

    const/4 v13, 0x7

    :goto_11
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_11

    const/4 v1, 0x6

    const/4 v13, 0x0

    :cond_16
    const/16 v10, 0x27

    if-ne v1, v10, :cond_17

    const/4 v13, 0x1

    const/4 v9, 0x1

    const/4 v13, 0x5

    goto :goto_10

    const/4 v10, 0x0

    const/4 v13, 0x7

    :cond_17
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_f

    const/4 v13, 0x5

    const/4 v13, 0x5

    :cond_18
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x55

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v13, 0x2

    const/4 v9, 0x0

    const/4 v13, 0x7

    const/4 v4, 0x0

    :goto_12
    const/16 v10, 0x8

    if-ge v4, v10, :cond_19

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_1a

    const/16 v10, 0x61

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x62

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x63

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x64

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x65

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x66

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x41

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x42

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x43

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x44

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x45

    if-eq v1, v10, :cond_1a

    const/16 v10, 0x46

    if-eq v1, v10, :cond_1a

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v13, 0x6

    :cond_19
    :goto_13
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v13, 0x1

    :goto_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_14

    const/4 v13, 0x2

    const/4 v13, 0x7

    :cond_1a
    const/16 v10, 0x27

    if-ne v1, v10, :cond_1b

    const/4 v13, 0x6

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_13

    const/4 v7, 0x3

    const/4 v13, 0x0

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_12

    const/4 v4, 0x7

    const/4 v13, 0x2

    :cond_1c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_20

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x3

    const/4 v4, 0x0

    :goto_15
    const/4 v10, 0x4

    if-ge v4, v10, :cond_1d

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_1e

    const/4 v13, 0x4

    const/4 v9, 0x0

    const/4 v13, 0x7

    :cond_1d
    :goto_16
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x6

    const/4 v9, 0x1

    const/4 v13, 0x5

    :goto_17
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_17

    const/4 v3, 0x2

    const/4 v13, 0x2

    :cond_1e
    const/16 v10, 0x27

    if-ne v1, v10, :cond_1f

    const/4 v13, 0x6

    const/4 v9, 0x1

    const/4 v13, 0x4

    goto :goto_16

    const/4 v0, 0x4

    const/4 v13, 0x1

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_15

    const/4 v11, 0x4

    const/4 v13, 0x1

    :cond_20
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v13, 0x7

    const/4 v9, 0x0

    goto/16 :goto_e

    const/4 v9, 0x5

    const/4 v13, 0x7

    :cond_21
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v13, 0x5

    const/4 v9, 0x0

    goto/16 :goto_e

    const/4 v11, 0x2

    const/4 v13, 0x4

    :cond_22
    :goto_18
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_18

    const/4 v11, 0x6

    const/4 v13, 0x3

    :cond_23
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_d

    const/4 v8, 0x2

    const/4 v13, 0x2

    :cond_24
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_a

    const/4 v2, 0x1

    const/4 v13, 0x2

    :cond_25
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x4

    :goto_19
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_26

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_26

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v10

    if-eqz v10, :cond_27

    const/4 v13, 0x0

    :cond_26
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_b

    const/4 v12, 0x4

    const/4 v13, 0x7

    :cond_27
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_19

    const/4 v2, 0x2

    const/4 v13, 0x1

    :cond_28
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x1

    :goto_1a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CSharpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_29

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_29

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v13, 0x0

    :cond_29
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CSharpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_b

    const/4 v6, 0x0

    const/4 v13, 0x5

    :cond_2a
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1a

    const/4 v12, 0x1

    const/4 v13, 0x1

    :cond_2b
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/henrythompson/quoda/language/CSharpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x5

    nop

    return-void

    const/4 v1, 0x0
.end method
