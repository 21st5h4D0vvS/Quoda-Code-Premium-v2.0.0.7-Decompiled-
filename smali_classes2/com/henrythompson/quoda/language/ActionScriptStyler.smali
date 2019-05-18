.class public Lcom/henrythompson/quoda/language/ActionScriptStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    const-string v0, "actionscript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x0
.end method

.method public parse()V
    .locals 15

    const/4 v14, 0x5

    const/16 v13, 0x22

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v14, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v14, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v14, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->getParseEnd()I

    move-result v3

    const/4 v14, 0x7

    const-string v6, "\\b(function)\\s+([a-zA-Z_]\\w*)\\s*(\\()"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x5

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v3, 0x0

    const/4 v14, 0x3

    :cond_0
    const-string v6, "\\b(class)\\s+([a-zA-Z_](?:\\w|\\.)*)(?:\\s+(extends)\\s+([a-zA-Z_](?:\\w|\\.)*))?"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v10, 0x3

    const/4 v14, 0x1

    :cond_1
    const-string v6, "\\b(parameter|const|get|namespace|package|use|include|set|final|internal|native|override|try|catch|finally|with|throw|defuault|label|each|function|dynamic|extends|import|implements|interface|public|private|new|static|super|var|for|in|break|continue|while|do|return|if|else|case|switch)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x6

    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v10, 0x3

    const/4 v14, 0x5

    :cond_2
    const-string v6, "\\b(Boolean|Number|String|Void)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x6

    :goto_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v7, 0x3

    const/4 v14, 0x3

    :cond_3
    const-string v6, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|\\binstanceof\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x2

    :goto_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v0, 0x4

    const/4 v14, 0x6

    :cond_4
    const-string v6, "^[ \t]*(#)[a-zA-Z]+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x5

    :goto_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v2, 0x2

    const/4 v14, 0x0

    :cond_5
    const-string v6, "\\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)(L|l|UL|ul|u|U|F|f)?\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x6

    :goto_6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v13, 0x4

    const/4 v14, 0x6

    :cond_6
    const-string v6, "\\b(null|undefined|true|false|BACKSPACE|CAPSLOCK|CONTROL|DELETEKEY|DOWN|END|ENTER|HOME|INSERT|LEFT|LN10|LN2|LOG10E|LOG2E|MAX_VALUE|MIN_VALUE|NEGATIVE_INFINITY|NaN|PGDN|PGUP|PI|POSITIVE_INFINITY|RIGHT|SPACE|SQRT1_2|SQRT2|UP|__proto__|__resolve|_accProps|_alpha|_changed|_currentframe|_droptarget|_flash|_focusrect|_framesloaded|_global|_height|_highquality|_level|_listeners|_lockroot|_name|_parent|_quality|_root|_rotation|_soundbuftime|_target|_totalframes|_url|_visible|_width|_x|_xmouse|_xscale|_y|_ymouse|_yscale)\\b"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v14, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, 0x3

    :goto_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v12, 0x2

    const/4 v14, 0x5

    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    if-ge v6, v3, :cond_14

    const/4 v14, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v14, 0x7

    const/4 v1, 0x0

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    const/4 v14, 0x4

    :goto_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v14, 0x4

    if-nez v1, :cond_9

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v14, 0x0

    :cond_8
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v0, 0x2

    const/4 v14, 0x3

    :cond_9
    if-nez v1, :cond_a

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v14, 0x7

    const/4 v1, 0x1

    const/4 v14, 0x5

    goto :goto_9

    const/4 v8, 0x7

    const/4 v14, 0x0

    :cond_a
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v14, 0x2

    const/4 v1, 0x0

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_9

    const/4 v0, 0x1

    const/4 v14, 0x1

    :cond_b
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v14, 0x5

    const/4 v1, 0x0

    const/4 v14, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    const/4 v14, 0x2

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v14, 0x0

    if-nez v1, :cond_d

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v14, 0x5

    :cond_c
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v1, 0x4

    const/4 v14, 0x1

    :cond_d
    if-nez v1, :cond_e

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v14, 0x1

    const/4 v1, 0x1

    const/4 v14, 0x0

    goto :goto_a

    const/4 v11, 0x6

    const/4 v14, 0x1

    :cond_e
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v14, 0x5

    const/4 v1, 0x0

    const/4 v14, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_a

    const/4 v4, 0x6

    const/4 v14, 0x4

    :cond_f
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "//"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x2

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v0

    const/4 v14, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v1, 0x7

    const/4 v14, 0x1

    :cond_10
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v5, v6, -0x2

    const/4 v14, 0x3

    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v14, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v7, "*/"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v14, 0x7

    :cond_11
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v14, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/henrythompson/quoda/language/ActionScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v2, 0x7

    const/4 v14, 0x0

    :cond_12
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v5, 0x6

    const/4 v14, 0x1

    :cond_13
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ActionScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_8

    const/4 v8, 0x3

    const/4 v14, 0x7

    :cond_14
    nop

    return-void

    const/4 v3, 0x2
.end method
