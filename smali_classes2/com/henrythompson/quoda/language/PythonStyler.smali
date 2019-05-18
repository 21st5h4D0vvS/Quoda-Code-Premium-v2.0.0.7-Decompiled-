.class public Lcom/henrythompson/quoda/language/PythonStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    const-string v0, "python"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public parse()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x2

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v14, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v14, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v11}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v14, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->getParseEnd()I

    move-result v2

    const/4 v14, 0x4

    const-string v6, "\\b(as|assert|del|exec|print|global|import|from|elif|else|except|finally|for|if|try|while|with|break|continue|pass|raise|return|yield)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v12, 0x7

    const/4 v14, 0x5

    :cond_0
    const-string v6, "(def)\\s+(?=([A-Za-z_][A-Za-z0-9_]*)(\\s*\\()?)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v9, 0x2

    const/4 v14, 0x2

    :cond_1
    const-string v6, "\\b([a-zA-Z_][a-zA-Z0-9_]+)\\s*\\("

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x2

    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v8, 0x7

    const/4 v14, 0x7

    :cond_2
    const-string v6, "\\b(self|cls|__(all|bases|class|debug|dict|doc|file|members|metaclass|methods|name|slots|weakref)__)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x5

    :goto_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v12, 0x7

    const/4 v14, 0x5

    :cond_3
    const-string v6, "\\b(class|def|lambda|basestring|bool|buffer|classmethod|complex|dict|enumerate|file|float|frozenset|int|list|long|object|open|property|reversed|set|slice|staticmethod|str|super|tuple|type|unicode|xrange)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x7

    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v3, 0x4

    const/4 v14, 0x4

    :cond_4
    const-string v6, "!|\\||%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|~|(\\b(and|in|is|not|or)\\b)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x7

    :goto_5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v14, 0x7

    const/4 v14, 0x0

    :cond_5
    const-string v6, "\\b(((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)[jJL]?)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v3, 0x7

    const/4 v14, 0x0

    :cond_6
    const-string v6, "\\b(None|True|False|Ellipsis|NotImplemented)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x3

    :goto_7
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v6, 0x2

    const/4 v14, 0x7

    :cond_7
    const-string v6, "(class)\\s+(([a-zA-Z_][a-zA-Z0-9_]*)\\s*(\\(([a-zA-Z_][a-zA-Z_0-9]*)\\))?\\s*\\:)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v4, 0x3

    const/4 v14, 0x4

    :cond_8
    :goto_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    if-ge v6, v2, :cond_21

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v12}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v0

    const/4 v14, 0x4

    if-gez v0, :cond_9

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    const/4 v14, 0x4

    :cond_9
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v8, 0x3

    const/4 v14, 0x3

    :cond_a
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x72

    if-eq v6, v7, :cond_b

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_d

    const/4 v14, 0x5

    :cond_b
    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x75

    if-eq v6, v7, :cond_c

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x55

    if-ne v6, v7, :cond_d

    const/4 v14, 0x7

    :cond_c
    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x2

    :cond_d
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "\"\""

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "\"\"\""

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x3

    if-gez v0, :cond_e

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    const/4 v14, 0x2

    :cond_e
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x7

    :cond_f
    :goto_a
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_9

    const/4 v9, 0x2

    const/4 v14, 0x2

    :cond_10
    const/4 v5, 0x1

    const/4 v14, 0x3

    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v14, 0x2

    const/4 v5, 0x0

    const/4 v14, 0x0

    :cond_11
    :goto_c
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x1

    if-nez v5, :cond_15

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v3, 0x5

    const/4 v14, 0x5

    :cond_12
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v14, 0x1

    :cond_13
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v1, 0x3

    const/4 v14, 0x5

    :cond_14
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_c

    const/4 v4, 0x3

    const/4 v14, 0x7

    :cond_15
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v9, 0x3

    const/4 v14, 0x2

    :cond_16
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x72

    if-eq v6, v7, :cond_17

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_19

    const/4 v14, 0x6

    :cond_17
    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x75

    if-eq v6, v7, :cond_18

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x55

    if-ne v6, v7, :cond_19

    const/4 v14, 0x1

    :cond_18
    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x0

    :cond_19
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "\'\'"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "\'\'\'"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x4

    if-gez v0, :cond_1a

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    const/4 v14, 0x2

    :cond_1a
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_a

    const/4 v7, 0x7

    const/4 v14, 0x6

    :cond_1b
    const/4 v5, 0x1

    const/4 v14, 0x6

    :goto_d
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1c

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PythonStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1c

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x6

    :cond_1c
    :goto_e
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x4

    if-nez v5, :cond_20

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_a

    const/4 v8, 0x1

    const/4 v14, 0x4

    :cond_1d
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v14, 0x5

    :cond_1e
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_d

    const/4 v6, 0x0

    const/4 v14, 0x5

    :cond_1f
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-nez v6, :cond_1c

    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_e

    const/4 v0, 0x2

    const/4 v14, 0x7

    :cond_20
    iget-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/PythonStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_a

    const/4 v13, 0x5

    const/4 v14, 0x2

    :cond_21
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/henrythompson/quoda/language/PythonStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v14, 0x5

    nop

    return-void

    const/4 v8, 0x1
.end method
