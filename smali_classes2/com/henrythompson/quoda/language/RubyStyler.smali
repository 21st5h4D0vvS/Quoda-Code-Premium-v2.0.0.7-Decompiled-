.class public Lcom/henrythompson/quoda/language/RubyStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    const-string v0, "ruby"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public parse()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->getParseEnd()I

    move-result v11

    const-string v17, "\\s*(module)(\\s+(([A-Z]\\w*(::))?([A-Z]\\w*(::))?([A-Z]\\w*(::))*[A-Z]\\w*))"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_0
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v5, 0x6

    :cond_0
    const-string v17, "\\b[A-Z_][A-Z0-9_]*\\b"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v12, 0x3

    :cond_1
    const-string v17, "(?!\\.)\\b(__END__|def|initialize|new|loop|include|extend|raise|attr_reader|attr_writer|attr_accessor|attr|catch|throw|private|module_function|public|protected|require|gem|alias|alias_method|break|next|redo|retry|return|super|undef|yield|BEGIN|begin|case|class|do|else|elsif|END|end|ensure|for|if|in|module|rescue|then|unless|until|when|while)\\b"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_2
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v3, 0x7

    :cond_2
    const-string v17, "\\s*(class)\\s+(([.a-zA-Z0-9_:]+(\\s*(<)\\s*[.a-zA-Z0-9_:]+)?)|((<<)\\s*[.a-zA-Z0-9_:]+))"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_3
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v2, 0x4

    :cond_3
    const-string v17, "\\b(def)\\s+([^\\s(]+)(\\s*\\()?"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v4, 0x7

    :cond_4
    const-string v17, "\\b[A-Z_][A-Za-z0-9_]*\\b"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_5
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v9, 0x7

    :cond_5
    const-string v17, "!|\\||%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|~|(\\b(and|not|or)\\b)"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_6
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v8, 0x5

    :cond_6
    const-string v17, "\\b(((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)([bB][01]+)?)\\b"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_7
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v9, 0x7

    :cond_7
    const-string v17, "\\b(TRUE|FALSE|NIL|ARGF|ARGV|DATA|ENV|RUBY(_PLATFORM|_RELEASE_DATE|_VERSION)|STDERR|STDIN|STDOUT|TOPLEVEL_BINDING)\\b"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_8
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v3, 0x2

    :cond_8
    const-string v17, "(@|@@)([a-zA-Z_]\\w*)"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_9
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v10, 0x4

    :cond_9
    const-string v17, "(__(FILE|LINE)__)|((#\\$)[a-zA-Z_]\\w*)|((#@)[a-zA-Z_]\\w*)|((@)[a-zA-Z_]\\w*)|((\\$)[a-zA-Z_]\\w*)|((\\$)(!|@|&|`|\'|\\+|\\d+|~|=|/|\\|,|;|\\.|<|>|_|\\*|\\$|\\?|:|\"|-[0adFiIlpv]))"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_a
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v8, 0x1

    :cond_a
    :goto_b
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_b

    const/4 v8, 0x0

    :cond_b
    const/4 v13, 0x0

    :cond_c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v11, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x23

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v5

    if-gez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    goto :goto_c

    const/4 v5, 0x4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const-string v18, "=begin"

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const-string v18, "\n=begin"

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x6

    if-gez v15, :cond_11

    const/4 v15, 0x0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const-string v18, "\n=end"

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    :cond_13
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_c

    const/4 v13, 0x6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_19

    const/16 v16, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v17

    if-nez v17, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_15

    if-nez v8, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v16, 0x0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    if-nez v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_f
    const/4 v13, 0x0

    goto :goto_d

    const/4 v13, 0x6

    :cond_16
    if-nez v8, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x5c

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_17

    const/4 v8, 0x1

    goto :goto_e

    const/4 v14, 0x2

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_15

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_e

    const/4 v12, 0x1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_f

    const/4 v13, 0x4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/16 v16, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v17

    if-nez v17, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_1a

    if-nez v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_1b

    const/16 v16, 0x0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    if-nez v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_11
    const/4 v13, 0x0

    goto/16 :goto_d

    const/4 v12, 0x1

    :cond_1b
    if-nez v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x5c

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/4 v8, 0x1

    goto :goto_10

    const/4 v12, 0x6

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_1a

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_10

    const/4 v8, 0x4

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_11

    const/4 v2, 0x3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x60

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_23

    const/16 v16, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v17

    if-nez v17, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_1f

    if-nez v8, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x60

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_20

    const/16 v16, 0x0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    if-nez v16, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_13
    const/4 v13, 0x0

    goto/16 :goto_d

    const/4 v14, 0x6

    :cond_20
    if-nez v8, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x5c

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_21

    const/4 v8, 0x1

    goto :goto_12

    const/4 v4, 0x1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v17

    if-nez v17, :cond_1f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_12

    const/4 v9, 0x1

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_13

    const/4 v13, 0x2

    :cond_23
    if-eqz v13, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x2f

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v18

    sub-int v7, v17, v18

    const/4 v9, 0x0

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/RubyStyler;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_27

    if-ge v9, v7, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v17

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    add-int/lit8 v9, v9, 0x1

    :cond_24
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    const/4 v4, 0x2

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v14, 0x0

    :goto_15
    const/16 v17, 0x8

    move/from16 v0, v17

    if-gt v14, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x65

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x69

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x6d

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x6e

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x6f

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x73

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x75

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x78

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-nez v17, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :cond_27
    :goto_16
    const/4 v13, 0x0

    goto/16 :goto_d

    const/4 v4, 0x4

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15

    const/4 v12, 0x1

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    goto :goto_16

    const/4 v2, 0x3

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x25

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v17

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x28

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_2c

    const/16 v6, 0x29

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v17

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15, v5}, Lcom/henrythompson/quoda/language/RubyStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    goto/16 :goto_d

    const/4 v13, 0x7

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x7b

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_2d

    const/16 v6, 0x7d

    goto :goto_17

    const/4 v2, 0x3

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x5b

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_2e

    const/16 v6, 0x5d

    goto :goto_17

    const/4 v7, 0x5

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    const/16 v18, 0x3c

    invoke-virtual/range {v17 .. v18}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v17

    if-eqz v17, :cond_2f

    const/16 v6, 0x3e

    goto :goto_17

    const/4 v5, 0x5

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_17

    const/4 v0, 0x3

    :cond_30
    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x7c

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x7b

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x28

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x3d

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x5b

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x26

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x3f

    move/from16 v0, v17

    if-eq v4, v0, :cond_31

    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v4, v0, :cond_32

    :cond_31
    const/4 v13, 0x1

    goto/16 :goto_d

    const/4 v13, 0x5

    :cond_32
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v17

    if-nez v17, :cond_13

    const/4 v13, 0x0

    goto/16 :goto_d

    const/4 v1, 0x4

    :cond_33
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/language/RubyStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    nop

    return-void

    const/4 v13, 0x3
.end method
