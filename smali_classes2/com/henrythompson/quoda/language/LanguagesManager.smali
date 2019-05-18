.class public Lcom/henrythompson/quoda/language/LanguagesManager;
.super Lcom/henrythompson/quoda/DataManager;


# static fields
.field private static mActionScriptLanguage:Lcom/henrythompson/quoda/language/ActionScriptLanguage;

.field private static mCLanguage:Lcom/henrythompson/quoda/language/CLanguage;

.field private static mCPlusPlusLanguage:Lcom/henrythompson/quoda/language/CPlusPlusLanguage;

.field private static mCSharpLanguage:Lcom/henrythompson/quoda/language/CSharpLanguage;

.field private static mCssLanguage:Lcom/henrythompson/quoda/language/CssLanguage;

.field private static mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

.field private static mHaskellLanguage:Lcom/henrythompson/quoda/language/HaskellLanguage;

.field private static mHtmlLanguage:Lcom/henrythompson/quoda/language/HtmlLanguage;

.field private static mJavaLanguage:Lcom/henrythompson/quoda/language/JavaLanguage;

.field private static mJavaScriptLanguage:Lcom/henrythompson/quoda/language/JavaScriptLanguage;

.field private static mLispLanguage:Lcom/henrythompson/quoda/language/LispLanguage;

.field private static mLuaLanguage:Lcom/henrythompson/quoda/language/LuaLanguage;

.field private static mMarkdownLanguage:Lcom/henrythompson/quoda/language/MarkdownLanguage;

.field private static mObjectiveCLanguage:Lcom/henrythompson/quoda/language/ObjectiveCLanguage;

.field private static mPerlLanguage:Lcom/henrythompson/quoda/language/PerlLanguage;

.field private static mPhpLanguage:Lcom/henrythompson/quoda/language/PhpLanguage;

.field private static mPythonLanguage:Lcom/henrythompson/quoda/language/PythonLanguage;

.field private static mRubyLanguage:Lcom/henrythompson/quoda/language/RubyLanguage;

.field private static mSqlLanguage:Lcom/henrythompson/quoda/language/SqlLanguage;

.field private static mVisualBasicLanguage:Lcom/henrythompson/quoda/language/VisualBasicLanguage;

.field private static mXmlLanguage:Lcom/henrythompson/quoda/language/XmlLanguage;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/DataController;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/DataManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public static getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-class v1, Lcom/henrythompson/quoda/language/LanguagesManager;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/language/LanguagesManager;

    return-object v0

    const/4 v1, 0x6
.end method


# virtual methods
.method public getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    if-nez p1, :cond_0

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/language/UnknownLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/UnknownLanguage;-><init>()V

    const/4 v1, 0x6

    :goto_0
    return-object v0

    const/4 v1, 0x7

    const/4 v1, 0x4

    :cond_0
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHtmlLanguage:Lcom/henrythompson/quoda/language/HtmlLanguage;

    if-nez v0, :cond_1

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/language/HtmlLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/HtmlLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHtmlLanguage:Lcom/henrythompson/quoda/language/HtmlLanguage;

    const/4 v1, 0x7

    :cond_1
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHtmlLanguage:Lcom/henrythompson/quoda/language/HtmlLanguage;

    goto :goto_0

    const/4 v0, 0x4

    const/4 v1, 0x5

    :cond_2
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mXmlLanguage:Lcom/henrythompson/quoda/language/XmlLanguage;

    if-nez v0, :cond_3

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/language/XmlLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/XmlLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mXmlLanguage:Lcom/henrythompson/quoda/language/XmlLanguage;

    const/4 v1, 0x3

    :cond_3
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mXmlLanguage:Lcom/henrythompson/quoda/language/XmlLanguage;

    goto :goto_0

    const/4 v1, 0x3

    const/4 v1, 0x1

    :cond_4
    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaLanguage:Lcom/henrythompson/quoda/language/JavaLanguage;

    if-nez v0, :cond_5

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/language/JavaLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/JavaLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaLanguage:Lcom/henrythompson/quoda/language/JavaLanguage;

    const/4 v1, 0x0

    :cond_5
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaLanguage:Lcom/henrythompson/quoda/language/JavaLanguage;

    goto :goto_0

    const/4 v1, 0x5

    const/4 v1, 0x7

    :cond_6
    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaScriptLanguage:Lcom/henrythompson/quoda/language/JavaScriptLanguage;

    if-nez v0, :cond_7

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/language/JavaScriptLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/JavaScriptLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaScriptLanguage:Lcom/henrythompson/quoda/language/JavaScriptLanguage;

    const/4 v1, 0x4

    :cond_7
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaScriptLanguage:Lcom/henrythompson/quoda/language/JavaScriptLanguage;

    goto :goto_0

    const/4 v1, 0x7

    const/4 v1, 0x0

    :cond_8
    const-string v0, "php"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x6

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPhpLanguage:Lcom/henrythompson/quoda/language/PhpLanguage;

    if-nez v0, :cond_9

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/language/PhpLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/PhpLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPhpLanguage:Lcom/henrythompson/quoda/language/PhpLanguage;

    const/4 v1, 0x2

    :cond_9
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPhpLanguage:Lcom/henrythompson/quoda/language/PhpLanguage;

    goto/16 :goto_0

    const/4 v1, 0x3

    const/4 v1, 0x7

    :cond_a
    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x7

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCssLanguage:Lcom/henrythompson/quoda/language/CssLanguage;

    if-nez v0, :cond_b

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/language/CssLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/CssLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCssLanguage:Lcom/henrythompson/quoda/language/CssLanguage;

    const/4 v1, 0x6

    :cond_b
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCssLanguage:Lcom/henrythompson/quoda/language/CssLanguage;

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v1, 0x3

    :cond_c
    const-string v0, "visualbasic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mVisualBasicLanguage:Lcom/henrythompson/quoda/language/VisualBasicLanguage;

    if-nez v0, :cond_d

    const/4 v1, 0x6

    new-instance v0, Lcom/henrythompson/quoda/language/VisualBasicLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/VisualBasicLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mVisualBasicLanguage:Lcom/henrythompson/quoda/language/VisualBasicLanguage;

    const/4 v1, 0x4

    :cond_d
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mVisualBasicLanguage:Lcom/henrythompson/quoda/language/VisualBasicLanguage;

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    :cond_e
    const-string v0, "markdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mMarkdownLanguage:Lcom/henrythompson/quoda/language/MarkdownLanguage;

    if-nez v0, :cond_f

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/language/MarkdownLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/MarkdownLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mMarkdownLanguage:Lcom/henrythompson/quoda/language/MarkdownLanguage;

    const/4 v1, 0x6

    :cond_f
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mMarkdownLanguage:Lcom/henrythompson/quoda/language/MarkdownLanguage;

    goto/16 :goto_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    :cond_10
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCLanguage:Lcom/henrythompson/quoda/language/CLanguage;

    if-nez v0, :cond_11

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/language/CLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/CLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCLanguage:Lcom/henrythompson/quoda/language/CLanguage;

    const/4 v1, 0x3

    :cond_11
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCLanguage:Lcom/henrythompson/quoda/language/CLanguage;

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v1, 0x6

    :cond_12
    const-string v0, "c++"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCPlusPlusLanguage:Lcom/henrythompson/quoda/language/CPlusPlusLanguage;

    if-nez v0, :cond_13

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/language/CPlusPlusLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/CPlusPlusLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCPlusPlusLanguage:Lcom/henrythompson/quoda/language/CPlusPlusLanguage;

    const/4 v1, 0x3

    :cond_13
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCPlusPlusLanguage:Lcom/henrythompson/quoda/language/CPlusPlusLanguage;

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v1, 0x6

    :cond_14
    const-string v0, "objective-c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x4

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mObjectiveCLanguage:Lcom/henrythompson/quoda/language/ObjectiveCLanguage;

    if-nez v0, :cond_15

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/language/ObjectiveCLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/ObjectiveCLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mObjectiveCLanguage:Lcom/henrythompson/quoda/language/ObjectiveCLanguage;

    const/4 v1, 0x1

    :cond_15
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mObjectiveCLanguage:Lcom/henrythompson/quoda/language/ObjectiveCLanguage;

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v1, 0x3

    :cond_16
    const-string v0, "ruby"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x4

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mRubyLanguage:Lcom/henrythompson/quoda/language/RubyLanguage;

    if-nez v0, :cond_17

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/language/RubyLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/RubyLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mRubyLanguage:Lcom/henrythompson/quoda/language/RubyLanguage;

    const/4 v1, 0x0

    :cond_17
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mRubyLanguage:Lcom/henrythompson/quoda/language/RubyLanguage;

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v1, 0x3

    :cond_18
    const-string v0, "python"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPythonLanguage:Lcom/henrythompson/quoda/language/PythonLanguage;

    if-nez v0, :cond_19

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/language/PythonLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/PythonLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPythonLanguage:Lcom/henrythompson/quoda/language/PythonLanguage;

    const/4 v1, 0x1

    :cond_19
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPythonLanguage:Lcom/henrythompson/quoda/language/PythonLanguage;

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v1, 0x5

    :cond_1a
    const-string v0, "perl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPerlLanguage:Lcom/henrythompson/quoda/language/PerlLanguage;

    if-nez v0, :cond_1b

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/language/PerlLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/PerlLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPerlLanguage:Lcom/henrythompson/quoda/language/PerlLanguage;

    const/4 v1, 0x4

    :cond_1b
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPerlLanguage:Lcom/henrythompson/quoda/language/PerlLanguage;

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v1, 0x6

    :cond_1c
    const-string v0, "c#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x6

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCSharpLanguage:Lcom/henrythompson/quoda/language/CSharpLanguage;

    if-nez v0, :cond_1d

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/language/CSharpLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/CSharpLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCSharpLanguage:Lcom/henrythompson/quoda/language/CSharpLanguage;

    const/4 v1, 0x3

    :cond_1d
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCSharpLanguage:Lcom/henrythompson/quoda/language/CSharpLanguage;

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v1, 0x1

    :cond_1e
    const-string v0, "lua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x6

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLuaLanguage:Lcom/henrythompson/quoda/language/LuaLanguage;

    if-nez v0, :cond_1f

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/language/LuaLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/LuaLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLuaLanguage:Lcom/henrythompson/quoda/language/LuaLanguage;

    const/4 v1, 0x7

    :cond_1f
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLuaLanguage:Lcom/henrythompson/quoda/language/LuaLanguage;

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v1, 0x2

    :cond_20
    const-string v0, "sql"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x2

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mSqlLanguage:Lcom/henrythompson/quoda/language/SqlLanguage;

    if-nez v0, :cond_21

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/language/SqlLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/SqlLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mSqlLanguage:Lcom/henrythompson/quoda/language/SqlLanguage;

    const/4 v1, 0x1

    :cond_21
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mSqlLanguage:Lcom/henrythompson/quoda/language/SqlLanguage;

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v1, 0x4

    :cond_22
    const-string v0, "actionscript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x6

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mActionScriptLanguage:Lcom/henrythompson/quoda/language/ActionScriptLanguage;

    if-nez v0, :cond_23

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/language/ActionScriptLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/ActionScriptLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mActionScriptLanguage:Lcom/henrythompson/quoda/language/ActionScriptLanguage;

    const/4 v1, 0x3

    :cond_23
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mActionScriptLanguage:Lcom/henrythompson/quoda/language/ActionScriptLanguage;

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v1, 0x2

    :cond_24
    const-string v0, "haskell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x7

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHaskellLanguage:Lcom/henrythompson/quoda/language/HaskellLanguage;

    if-nez v0, :cond_25

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/language/HaskellLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/HaskellLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHaskellLanguage:Lcom/henrythompson/quoda/language/HaskellLanguage;

    const/4 v1, 0x6

    :cond_25
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHaskellLanguage:Lcom/henrythompson/quoda/language/HaskellLanguage;

    goto/16 :goto_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    :cond_26
    const-string v0, "lisp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x4

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLispLanguage:Lcom/henrythompson/quoda/language/LispLanguage;

    if-nez v0, :cond_27

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/language/LispLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/LispLanguage;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLispLanguage:Lcom/henrythompson/quoda/language/LispLanguage;

    const/4 v1, 0x3

    :cond_27
    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLispLanguage:Lcom/henrythompson/quoda/language/LispLanguage;

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v1, 0x7

    :cond_28
    new-instance v0, Lcom/henrythompson/quoda/language/UnknownLanguage;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/UnknownLanguage;-><init>()V

    goto/16 :goto_0

    const/4 v0, 0x5
.end method

.method public load()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

    if-nez v0, :cond_0

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/language/FileAssociations;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/FileAssociations;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

    const/4 v1, 0x3

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/FileAssociations;->load()V

    const/4 v1, 0x0

    :cond_0
    invoke-super {p0}, Lcom/henrythompson/quoda/DataManager;->load()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onLowMemory()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHtmlLanguage:Lcom/henrythompson/quoda/language/HtmlLanguage;

    const/4 v1, 0x7

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mXmlLanguage:Lcom/henrythompson/quoda/language/XmlLanguage;

    const/4 v1, 0x4

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaLanguage:Lcom/henrythompson/quoda/language/JavaLanguage;

    const/4 v1, 0x2

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCssLanguage:Lcom/henrythompson/quoda/language/CssLanguage;

    const/4 v1, 0x7

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPhpLanguage:Lcom/henrythompson/quoda/language/PhpLanguage;

    const/4 v1, 0x1

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mJavaScriptLanguage:Lcom/henrythompson/quoda/language/JavaScriptLanguage;

    const/4 v1, 0x1

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mVisualBasicLanguage:Lcom/henrythompson/quoda/language/VisualBasicLanguage;

    const/4 v1, 0x0

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mMarkdownLanguage:Lcom/henrythompson/quoda/language/MarkdownLanguage;

    const/4 v1, 0x0

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCLanguage:Lcom/henrythompson/quoda/language/CLanguage;

    const/4 v1, 0x3

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCPlusPlusLanguage:Lcom/henrythompson/quoda/language/CPlusPlusLanguage;

    const/4 v1, 0x7

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mObjectiveCLanguage:Lcom/henrythompson/quoda/language/ObjectiveCLanguage;

    const/4 v1, 0x5

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mRubyLanguage:Lcom/henrythompson/quoda/language/RubyLanguage;

    const/4 v1, 0x1

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPythonLanguage:Lcom/henrythompson/quoda/language/PythonLanguage;

    const/4 v1, 0x6

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mPerlLanguage:Lcom/henrythompson/quoda/language/PerlLanguage;

    const/4 v1, 0x3

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mCSharpLanguage:Lcom/henrythompson/quoda/language/CSharpLanguage;

    const/4 v1, 0x2

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mLuaLanguage:Lcom/henrythompson/quoda/language/LuaLanguage;

    const/4 v1, 0x5

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mSqlLanguage:Lcom/henrythompson/quoda/language/SqlLanguage;

    const/4 v1, 0x2

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mActionScriptLanguage:Lcom/henrythompson/quoda/language/ActionScriptLanguage;

    const/4 v1, 0x5

    sput-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mHaskellLanguage:Lcom/henrythompson/quoda/language/HaskellLanguage;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onSetup()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/FileAssociations;->addDefaultSyntaxes()Ljava/util/HashMap;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onUpgrade(II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    sget-object v0, Lcom/henrythompson/quoda/language/LanguagesManager;->mFileAssociations:Lcom/henrythompson/quoda/language/FileAssociations;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/language/FileAssociations;->onUpgrade(I)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public receiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method
