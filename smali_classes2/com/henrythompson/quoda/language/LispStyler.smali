.class public Lcom/henrythompson/quoda/language/LispStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;

.field parseEnd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    const-string v0, "lisp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x4
.end method

.method public parse()V
    .locals 12

    const/4 v11, 0x7

    const/16 v10, 0x22

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v11, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LispStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v5

    iput-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v5

    iput-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v11, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LispStyler;->getParseEnd()I

    move-result v5

    iput v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    const/4 v11, 0x7

    const-string v5, "(\\b((defun|defmethod|defmacro))\\b)(\\s+)((\\w|\\-|\\!|\\?)*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x7

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v4, 0x5

    const/4 v11, 0x7

    :cond_0
    const-string v5, "\\b(cons|car|cdr|cond|lambda|format|setq|setf|quote|eval|append|list|listp|memberp|t|load|progn)\\b"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x4

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v11, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v11, 0x4

    const/4 v11, 0x5

    :cond_1
    const-string v5, "(#)(\\w|[\\\\+-=<>\'\"&#])+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x5

    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v11, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v8, 0x2

    const/4 v11, 0x5

    :cond_2
    const-string v5, "(\\*)(\\S*)(\\*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x6

    :goto_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v9, 0x0

    const/4 v11, 0x4

    :cond_3
    const-string v5, "\\b(case|do|let|loop|if|else|when)\\b"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v6, 0x0

    const/4 v11, 0x3

    :cond_4
    const-string v5, "\\b(eq|neq|and|or)\\b"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x6

    :goto_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v11, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v1, 0x1

    const/4 v11, 0x6

    :cond_5
    const-string v5, "\\b(null|nil)\\b"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x3

    :goto_6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v11, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v3, 0x5

    const/4 v11, 0x2

    :cond_6
    const-string v5, "\\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)(L|l|UL|ul|u|U|F|f|ll|LL|ull|ULL)?\\b"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v11, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v11, 0x4

    const/4 v11, 0x6

    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LispStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/language/LispStyler;->parseEnd:I

    if-ge v5, v6, :cond_d

    const/4 v11, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    const/4 v11, 0x7

    :goto_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LispStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LispStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v11, 0x7

    if-nez v1, :cond_a

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v11, 0x7

    :cond_8
    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v11, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v0}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v11, 0x4

    :cond_9
    :goto_a
    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_8

    const/4 v5, 0x7

    const/4 v11, 0x1

    :cond_a
    if-nez v1, :cond_b

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v11, 0x5

    const/4 v1, 0x1

    const/4 v11, 0x0

    goto :goto_9

    const/4 v11, 0x7

    const/4 v11, 0x3

    :cond_b
    const/4 v1, 0x0

    const/4 v11, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_9

    const/4 v9, 0x0

    const/4 v11, 0x3

    :cond_c
    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v11, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    const/4 v11, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v0

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/LispStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v0}, Lcom/henrythompson/quoda/language/LispStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v4, 0x4

    const/4 v11, 0x2

    :cond_d
    nop

    return-void

    const/4 v6, 0x7
.end method
