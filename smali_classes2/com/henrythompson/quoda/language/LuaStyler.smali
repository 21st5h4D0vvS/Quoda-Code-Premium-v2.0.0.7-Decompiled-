.class public Lcom/henrythompson/quoda/language/LuaStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    const-string v0, "lua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x2

    const/4 v13, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->getParseEnd()I

    move-result v6

    const/4 v13, 0x2

    const-string v10, "\\b(function)\\s+([a-zA-Z_.:]+[.:])?([a-zA-Z_]\\w*)\\s*(\\()([^)]*)(\\))"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x7

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v3, 0x3

    const/4 v13, 0x7

    :cond_0
    const-string v10, "\\b([a-zA-Z_][a-zA-Z0-9_.]*)\\s*\\("

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x7

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v9, 0x5

    const/4 v13, 0x1

    :cond_1
    const-string v10, "(?![^.]\\.|:)\\b(assert|collectgarbage|dofile|error|getfenv|getmetatable|ipairs|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawset|require|select|setfenv|setmetatable|tonumber|tostring|type|unpack|xpcall|coroutine\\.(create|resume|running|status|wrap|yield)|string\\.(byte|char|dump|find|format|gmatch|gsub|len|lower|match|rep|reverse|sub|upper)|table\\.(concat|insert|maxn|remove|sort)|math\\.(abs|acos|asin|atan2?|ceil|cosh?|deg|exp|floor|fmod|frexp|ldexp|log|log10|max|min|modf|pow|rad|random|randomseed|sinh?|sqrt|tanh?)|io\\.(close|flush|input|mTokens|open|output|popen|read|tmpfile|type|write)|os\\.(clock|date|difftime|execute|exit|getenv|remove|rename|setlocale|time|tmpname)|package\\.(cpath|loaded|loadlib|path|preload|seeall)|debug\\.(debug|[gs]etfenv|[gs]ethook|getinfo|[gs]etlocal|[gs]etmetatable|getregistry|[gs]etupvalue|traceback))\\b(?=[( {])"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v2, 0x7

    const/4 v13, 0x2

    :cond_2
    const-string v10, "(\\s0x[a-fA-F0-9]+)|(\\b[0-9]+(\\.[0-9]+)?([eE]-?[0-9]+)?)|(\\.[0-9]+([eE]-?[0-9]+)?)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v12, 0x7

    const/4 v13, 0x6

    :cond_3
    const-string v10, "\\b(break|do|else|for|if|elseif|return|then|repeat|while|until|end|function|local|in)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v2, 0x7

    const/4 v13, 0x1

    :cond_4
    const-string v10, "(?!\\.|:)\\b(false|nil|true|_G|_VERSION|math\\.(pi|huge))\\b|(?![.])\\.{3}(?!\\.)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v8, 0x1

    const/4 v13, 0x3

    :cond_5
    const-string v10, "(?![^.]\\.|:)\\b(self)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v9, 0x7

    const/4 v13, 0x2

    :cond_6
    const-string v10, "\\+|-|%|#|\\*|\\/|\\^|=|~|\\?|>|<|\\.|,|\\b(and|or|not)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x7

    :goto_7
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v10, 0x4

    const/4 v13, 0x7

    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v6, :cond_19

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v13, 0x1

    const/4 v9, 0x1

    const/4 v13, 0x3

    const/4 v3, 0x0

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x1

    :goto_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v13, 0x1

    if-nez v3, :cond_a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x5

    :cond_8
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    if-nez v9, :cond_c

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    :cond_9
    :goto_a
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_8

    const/4 v9, 0x3

    const/4 v13, 0x5

    :cond_a
    if-nez v3, :cond_b

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v13, 0x0

    const/4 v3, 0x1

    const/4 v13, 0x5

    goto :goto_9

    const/4 v4, 0x6

    const/4 v13, 0x2

    :cond_b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v13, 0x6

    const/4 v3, 0x0

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_9

    const/4 v9, 0x1

    const/4 v13, 0x2

    :cond_c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v10, 0x6

    const/4 v13, 0x7

    :cond_d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v13, 0x7

    const/4 v9, 0x0

    const/4 v13, 0x0

    :cond_e
    :goto_b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    if-nez v9, :cond_16

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v13, 0x4

    const/4 v13, 0x1

    :cond_f
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x75

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x5

    const/4 v4, 0x0

    :goto_c
    const/4 v10, 0x4

    if-ge v4, v10, :cond_10

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v13, 0x5

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_11

    const/16 v10, 0x61

    if-eq v1, v10, :cond_11

    const/16 v10, 0x62

    if-eq v1, v10, :cond_11

    const/16 v10, 0x63

    if-eq v1, v10, :cond_11

    const/16 v10, 0x64

    if-eq v1, v10, :cond_11

    const/16 v10, 0x65

    if-eq v1, v10, :cond_11

    const/16 v10, 0x66

    if-eq v1, v10, :cond_11

    const/16 v10, 0x41

    if-eq v1, v10, :cond_11

    const/16 v10, 0x42

    if-eq v1, v10, :cond_11

    const/16 v10, 0x43

    if-eq v1, v10, :cond_11

    const/16 v10, 0x44

    if-eq v1, v10, :cond_11

    const/16 v10, 0x45

    if-eq v1, v10, :cond_11

    const/16 v10, 0x46

    if-eq v1, v10, :cond_11

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v13, 0x0

    :cond_10
    :goto_d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v13, 0x6

    const/4 v9, 0x1

    const/4 v13, 0x2

    :goto_e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_e

    const/4 v5, 0x5

    const/4 v13, 0x6

    :cond_11
    const/16 v10, 0x27

    if-ne v1, v10, :cond_12

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto :goto_d

    const/4 v3, 0x0

    const/4 v13, 0x4

    :cond_12
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_c

    const/4 v8, 0x5

    const/4 v13, 0x7

    :cond_13
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v13, 0x5

    const/4 v9, 0x0

    goto/16 :goto_b

    const/4 v4, 0x6

    const/4 v13, 0x6

    :cond_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v13, 0x6

    const/4 v9, 0x0

    goto/16 :goto_b

    const/4 v9, 0x7

    const/4 v13, 0x7

    :cond_15
    :goto_f
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LuaStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_f

    const/4 v9, 0x1

    const/4 v13, 0x0

    :cond_16
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_a

    const/4 v6, 0x3

    const/4 v13, 0x5

    :cond_17
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "--"

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "[["

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v11, "]]"

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x5

    :goto_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/LuaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_a

    const/4 v8, 0x1

    const/4 v13, 0x2

    :cond_18
    iget-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v2

    goto :goto_10

    const/4 v2, 0x5

    const/4 v13, 0x2

    :cond_19
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/henrythompson/quoda/language/LuaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x3

    nop

    return-void

    const/4 v12, 0x4
.end method
