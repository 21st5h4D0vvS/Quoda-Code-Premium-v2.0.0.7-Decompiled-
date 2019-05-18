.class public Lcom/henrythompson/quoda/language/PhpStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private CStyleBlockCommentEnd:[C

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/PhpStyler;->CStyleBlockCommentEnd:[C

    nop

    return-void

    const/4 v0, 0x5

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

    const/4 v1, 0x6

    const/4 v1, 0x4

    const-string v0, "php"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x5

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->getParseEnd()I

    move-result v5

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x4

    const-string v10, "\\b(?:[a-z]\\w*(\\.))*([A-Z]+\\w*)(?!\\()\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v3, 0x3

    const/4 v13, 0x7

    :cond_0
    const-string v10, "\\b(function|(require|include)(_once)?|echo|print|parent|self|clone|class|interface|global|abstract|const|extends|implements|final|p(r(ivate|otected)|ublic)|static|catch|try|throw|exception|break|c(ase|ontinue)|d(e(clare|fault)|ie|o)|e(lse(if)?|nd(declare|for(each)?|if|switch|while)|xit)|for(each)?|if|return|switch|use|while|require|include)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v10, 0x2

    const/4 v13, 0x7

    :cond_1
    const-string v10, "\\b(real|double|float|int(eger)?|bool(ean)?|rawBuilder|var|object|array)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v12, 0x7

    const/4 v13, 0x1

    :cond_2
    const-string v10, "\\b(?!((if|do|while|catch|synchronized|for|switch|return)\\s*|@))(\\w+)(\\s)*\\("

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v5, 0x1

    const/4 v13, 0x5

    :cond_3
    const-string v10, "((?i)\\b(new)\\s+)((?:(\\$[a-zA-Z_\\x{7f}-\\x{ff}][a-zA-Z0-9_\\x{7f}-\\x{ff}]*)|(\\w+))|(\\w+)(?=::))"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v11, 0x3

    const/4 v13, 0x0

    :cond_4
    const-string v10, "(?i)^\\s*(abstract|final)?\\s*(class)\\s+([a-z0-9_]+)\\s*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v6, 0x6

    const/4 v13, 0x5

    :cond_5
    const-string v10, "(\\.)?\\b([A-Z][A-Z0-9_]+)(?!<|\\.class|\\s*\\w+\\s*=)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_6
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v0, 0x4

    const/4 v13, 0x2

    :cond_6
    const-string v10, "\\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_7
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v13, 0x6

    const/4 v13, 0x2

    :cond_7
    const-string v10, "!|\\$|[^<]%[^>]|&|\\*|\\-|\\+|~|=|<[^?%]|[^?%]>|[^<]\\?[^>]|\\:|\\^|\\.(\\b(or|xor|and|not|instanceof)\\b)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_8
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v10, 0x6

    const/4 v13, 0x2

    :cond_8
    const-string v10, "\\b(((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)([LlFfUuDd]|UL|ul)?)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    :goto_9
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v0, 0x2

    const/4 v13, 0x3

    :cond_9
    const-string v10, "\\b(TRUE|FALSE|NULL|__(FILE|FUNCTION|CLASS|METHOD|LINE)__|ON|OFF|YES|NO|NL|BR|TAB|DEFAULT_INCLUDE_PATH|E_(ALL|COMPILE_(ERROR|WARNING)|CORE_(ERROR|WARNING)|(RECOVERABLE_)?ERROR|NOTICE|PARSE|STRICT|USER_(ERROR|NOTICE|WARNING)|WARNING)|PEAR_(EXTENSION_DIR|INSTALL_DIR)|PHP_(BINDIR|CONFIG_FILE_PATH|DATADIR|E(OL|XTENSION_DIR)|L(IBDIR|OCALSTATEDIR)|O(S|UTPUT_HANDLER_CONT|UTPUT_HANDLER_END|UTPUT_HANDLER_START)|SYSCONFDIR|VERSION)|A(B(DAY_([1-7])|MON_([0-9]{1,2}))|LT_DIGITS|M_STR|SSERT_(ACTIVE|BAIL|CALLBACK|QUIET_EVAL|WARNING))|C(ASE_(LOWER|UPPER)|HAR_MAX|O(DESET|NNECTION_(ABORTED|NORMAL|TIMEOUT)|UNT_(NORMAL|RECURSIVE))|REDITS_(ALL|DOCS|FULLPAGE|GENERAL|GROUP|MODULES|QA|SAPI)|RNCYSTR|RYPT_(BLOWFISH|EXT_DES|MD5|SALT_LENGTH|STD_DES)|URRENCY_SYMBOL)|D(AY_([1-7])|ECIMAL_POINT|IRECTORY_SEPARATOR|_(FMT|T_FMT))|E(NT_(COMPAT|NOQUOTES|QUOTES)|RA(|_D_FMT|_D_T_FMT|_T_FMT|_YEAR)|XTR_(IF_EXISTS|OVERWRITE|PREFIX_(ALL|IF_EXISTS|INVALID|SAME)|SKIP))|FRAC_DIGITS|GROUPING|HTML_(ENTITIES|SPECIALCHARS)|IN(FO_(ALL|CONFIGURATION|CREDITS|ENVIRONMENT|GENERAL|LICENSE|MODULES|VARIABLES)|I_(ALL|PERDIR|SYSTEM|USER)|T_(CURR_SYMBOL|FRAC_DIGITS))|L(C_(ALL|COLLATE|CTYPE|MESSAGES|MONETARY|NUMERIC|TIME)|O(CK_(EX|NB|SH|UN)|G_(ALERT|AUTH(|PRIV)|CONS|CRIT|CRON|DAEMON|DEBUG|EMERG|ERR|INFO|KERN|LOCAL([0-7])|LPR|MAIL|NDELAY|NEWS|NOTICE|NOWAIT|ODELAY|PERROR|PID|SYSLOG|USER|UUCP|WARNING)))|M(ON_([0-9]{1,2}|DECIMAL_POINT|GROUPING|THOUSANDS_SEP)|YSQL_(ASSOC|BOTH|NUM)|_(1_PI|2_(PI|SQRTPI)|E|L(N10|N2|OG(10E|2E))|PI(|_2|_4)|SQRT1_2|SQRT2))|N(EGATIVE_SIGN|O(EXPR|STR)|_(CS_PRECEDES|SEP_BY_SPACE|SIGN_POSN))|P(ATH(INFO_(BASENAME|DIRNAME|EXTENSION|FILENAME)|_SEPARATOR)|M_STR|OSITIVE_SIGN|_(CS_PRECEDES|SEP_BY_SPACE|SIGN_POSN))|RADIXCHAR|S(EEK_(CUR|END|SET)|ORT_(ASC|DESC|NUMERIC|REGULAR|STRING)|TR_PAD_(BOTH|LEFT|RIGHT))|T(HOUS(ANDS_SEP|EP)|_(FMT(|_AMPM)))|YES(EXPR|STR))\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_a
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v12, 0x7

    const/4 v13, 0x6

    :cond_a
    const-string v10, "\\$[a-zA-Z_][a-zA-Z0-9_]*\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_b
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_b

    const/4 v10, 0x0

    const/4 v13, 0x6

    :cond_b
    const-string v10, "(->)([a-zA-Z_][a-zA-Z0-9_]*)(?!(\\s)*\\()\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v4, v10, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_c
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_c

    const/4 v4, 0x2

    const/4 v13, 0x6

    :cond_c
    const-string v10, "(<(\\?|%)(php)?)|((\\?|%)>)"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v13, 0x6

    :goto_d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v12, 0x5

    const/4 v13, 0x7

    :cond_d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    const/4 v13, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/PhpStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v13, 0x4

    :cond_e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x2

    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_26

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v5, :cond_26

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v13, 0x2

    :goto_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v5, :cond_10

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x5

    :cond_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x2

    if-nez v9, :cond_14

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x5

    :cond_11
    :goto_11
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_f

    const/4 v0, 0x4

    const/4 v13, 0x2

    :cond_12
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "\\"

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_10

    const/4 v9, 0x4

    const/4 v13, 0x5

    :cond_13
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_10

    const/4 v5, 0x7

    const/4 v13, 0x6

    :cond_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_11

    const/4 v12, 0x7

    const/4 v13, 0x7

    :cond_15
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x0

    :goto_12
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v5, :cond_16

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :cond_16
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x1

    if-nez v9, :cond_19

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_11

    const/4 v11, 0x5

    const/4 v13, 0x0

    :cond_17
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "\\"

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_12

    const/4 v4, 0x1

    const/4 v13, 0x0

    :cond_18
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_12

    const/4 v6, 0x6

    const/4 v13, 0x1

    :cond_19
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_11

    const/4 v5, 0x7

    const/4 v13, 0x2

    :cond_1a
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_e

    const/4 v3, 0x6

    const/4 v13, 0x6

    :cond_1b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    const/4 v13, 0x6

    :goto_13
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_1c

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_1c

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v13, 0x4

    :cond_1c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_f

    const/4 v11, 0x0

    const/4 v13, 0x6

    :cond_1d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_13

    const/4 v4, 0x5

    const/4 v13, 0x0

    :cond_1e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "<<<"

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v7, v10, -0x3

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v8

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    const/4 v13, 0x5

    :goto_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_1f

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    const/4 v11, 0x5

    const/4 v13, 0x4

    :cond_1f
    if-ne v8, v3, :cond_20

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    add-int/lit8 v11, v7, 0x3

    invoke-virtual {p0, v10, v7, v11}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_f

    const/4 v1, 0x6

    const/4 v13, 0x4

    :cond_20
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x7

    const/4 v9, 0x1

    const/4 v13, 0x2

    :cond_21
    :goto_15
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/PhpStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_23

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x6

    const/16 v10, 0x3b

    if-eq v0, v10, :cond_22

    const/16 v10, 0xa

    if-ne v0, v10, :cond_21

    const/4 v13, 0x4

    :cond_22
    const/4 v9, 0x0

    const/4 v13, 0x3

    :cond_23
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    if-nez v9, :cond_25

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_11

    const/4 v13, 0x3

    const/4 v13, 0x0

    :cond_24
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_15

    const/4 v6, 0x7

    const/4 v13, 0x5

    :cond_25
    iget-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v7, v2}, Lcom/henrythompson/quoda/language/PhpStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_11

    const/4 v8, 0x7

    const/4 v13, 0x6

    :cond_26
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/henrythompson/quoda/language/PhpStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x4

    nop

    return-void

    const/4 v7, 0x7
.end method
