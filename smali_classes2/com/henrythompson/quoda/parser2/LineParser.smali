.class public Lcom/henrythompson/quoda/parser2/LineParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;
    }
.end annotation


# static fields
.field private static final SEARCH_OPTIONS:I


# instance fields
.field private mDocumentLines:Lcom/henrythompson/quoda/document/LinesCollection;

.field private mIsFirstParse:Z

.field private mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

.field private mLines:Lcom/henrythompson/quoda/document/LinesCollection;

.field private mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

.field private mService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mSourceBytes:[B

.field private mTextCopy:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/tmlanguage/TmLanguage;Lcom/henrythompson/quoda/document/Document;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mIsFirstParse:Z

    const/4 v3, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->getRootRule()Lcom/henrythompson/quoda/tmlanguage/RootRule;

    move-result-object v0

    const/4 v3, 0x6

    iput-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    const/4 v3, 0x1

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/LinesCollection;->clone()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mDocumentLines:Lcom/henrythompson/quoda/document/LinesCollection;

    const/4 v3, 0x6

    new-instance v1, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v1}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/parser2/LineParser;->registerTextChange(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v3, 0x1

    nop

    return-void

    const/4 v2, 0x0
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/parser2/LineParser;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mIsFirstParse:Z

    return v0

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/parser2/LineParser;Lcom/henrythompson/quoda/UndoStack$TextChange;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/parser2/LineParser;->processTextChange(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/parser2/LineParser;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/parser2/LineParser;->runFirstParse()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/parser2/LineParser;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/parser2/LineParser;->resetRules()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/parser2/LineParser;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$402(Lcom/henrythompson/quoda/parser2/LineParser;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p1

    const/4 v0, 0x1
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/parser2/LineParser;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/parser2/LineParser;->applyChanges()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)Lcom/henrythompson/quoda/parser2/Token;
    .locals 13

    const/4 v12, 0x1

    const/4 v4, -0x1

    const/4 v12, 0x4

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getName()Lcom/henrythompson/quoda/tmlanguage/Scope;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getContentName()Lcom/henrythompson/quoda/tmlanguage/Scope;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x7

    const/4 v8, 0x0

    const/4 v12, 0x4

    if-eqz v11, :cond_0

    const/4 v12, 0x6

    invoke-virtual {v11}, Lcom/henrythompson/quoda/tmlanguage/Scope;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x3

    :cond_0
    if-eqz v9, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v9}, Lcom/henrythompson/quoda/tmlanguage/Scope;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    :cond_1
    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joni/Matcher;->getBegin()I

    move-result v3

    const/4 v12, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joni/Matcher;->getEnd()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    const/4 v12, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;IIIILjava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v10

    const/4 v12, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-direct {p0, v10, v0, p2, v1}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V

    const/4 v12, 0x4

    return-object v10

    const/4 v8, 0x4
.end method

.method private addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)Lcom/henrythompson/quoda/parser2/Token;
    .locals 13

    const/4 v12, 0x5

    const/4 v4, -0x1

    const/4 v12, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getName()Lcom/henrythompson/quoda/tmlanguage/Scope;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getContentName()Lcom/henrythompson/quoda/tmlanguage/Scope;

    move-result-object v9

    const/4 v12, 0x4

    const/4 v7, 0x0

    const/4 v12, 0x3

    const/4 v8, 0x0

    const/4 v12, 0x7

    if-eqz v11, :cond_0

    const/4 v12, 0x4

    invoke-virtual {v11}, Lcom/henrythompson/quoda/tmlanguage/Scope;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x5

    :cond_0
    if-eqz v9, :cond_1

    const/4 v12, 0x2

    invoke-virtual {v9}, Lcom/henrythompson/quoda/tmlanguage/Scope;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x7

    :cond_1
    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joni/Matcher;->getBegin()I

    move-result v3

    const/4 v12, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joni/Matcher;->getBegin()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    const/4 v12, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;IIIILjava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v10

    const/4 v12, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-direct {p0, v10, v0, p2, v1}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V

    const/4 v12, 0x2

    return-object v10

    const/4 v8, 0x0
.end method

.method private addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;IIIILjava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/parser2/Token;
    .locals 9

    new-instance v0, Lcom/henrythompson/quoda/parser2/Token;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/henrythompson/quoda/parser2/Token;-><init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/parser2/Token;->addChildToken(Lcom/henrythompson/quoda/parser2/Token;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method private addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;IILjava/lang/String;)Lcom/henrythompson/quoda/parser2/Token;
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x3

    new-instance v0, Lcom/henrythompson/quoda/parser2/Token;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/parser2/Token;-><init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;II)V

    const/4 v6, 0x3

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/parser2/Token;->addChildToken(Lcom/henrythompson/quoda/parser2/Token;)V

    const/4 v6, 0x3

    return-object v0

    const/4 v2, 0x3
.end method

.method private addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V
    .locals 20

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Lorg/joni/Matcher;->getBegin()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lorg/joni/Matcher;->getEnd()I

    move-result v9

    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    instance-of v5, v0, Lcom/henrythompson/quoda/tmlanguage/Scope;

    if-eqz v5, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;IILjava/lang/String;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v19

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/henrythompson/quoda/parser2/LineParser;->processCaptures(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V

    nop

    return-void

    const/4 v11, 0x2

    :cond_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    instance-of v5, v0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    if-eqz v5, :cond_1

    const/4 v15, 0x0

    move-object/from16 v16, v18

    check-cast v16, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-object/from16 v11, p0

    move v12, v8

    move v13, v9

    move-object/from16 v14, p1

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/henrythompson/quoda/parser2/LineParser;->parseRegion(IILcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;Lcom/henrythompson/quoda/parser2/Token;)V

    move-object/from16 v19, p1

    goto :goto_0

    const/4 v10, 0x1

    :cond_1
    move-object/from16 v19, p1

    goto :goto_0

    const/4 v5, 0x5
.end method

.method private addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/MatchRule;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/MatchRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/MatchRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x3
.end method

.method private applyChanges()V
    .locals 7

    const/4 v6, 0x0

    const/4 v6, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineCount()I

    move-result v0

    const/4 v6, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v2

    const/4 v6, 0x7

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/LineObject;->getIsUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v6, 0x6

    const-string v3, "NUM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mDocumentLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/LineObject;->getTokens()Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/document/LineObject;->setTokens(Lcom/henrythompson/quoda/parser2/Token;)V

    const/4 v6, 0x6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/document/LineObject;->setIsUpdated(Z)V

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x3

    const/4 v6, 0x3

    :cond_1
    nop

    return-void

    const/4 v6, 0x7
.end method

.method private getChildPatterns(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    check-cast p1, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v0

    const/4 v1, 0x2

    :goto_0
    return-object v0

    const/4 v0, 0x5

    const/4 v1, 0x5

    :cond_0
    instance-of v0, p1, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    check-cast p1, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x0

    const/4 v1, 0x1

    :cond_1
    instance-of v0, p1, Lcom/henrythompson/quoda/tmlanguage/RootRule;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    check-cast p1, Lcom/henrythompson/quoda/tmlanguage/RootRule;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x7

    const/4 v1, 0x0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x0
.end method

.method private getNearestEndMatch(IILcom/henrythompson/quoda/tmlanguage/BeginEndRule;)I
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x3

    invoke-virtual {p3}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndMatcher()Lorg/joni/Matcher;

    move-result-object v1

    const/4 v7, 0x0

    iget-boolean v6, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->noMoreEndMatches:Z

    if-eqz v6, :cond_0

    const/4 v7, 0x4

    iget v6, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->lastEndParseStart:I

    if-gt v6, p1, :cond_0

    iget v6, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->lastEndParseEnd:I

    if-lt v6, p2, :cond_0

    move v0, v5

    const/4 v7, 0x0

    :goto_0
    return v0

    const/4 v1, 0x2

    const/4 v7, 0x1

    :cond_0
    iput p1, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->lastEndParseStart:I

    const/4 v7, 0x5

    iput p2, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->lastEndParseEnd:I

    const/4 v7, 0x5

    if-nez v1, :cond_3

    move v2, v3

    const/4 v7, 0x3

    :goto_1
    if-eqz v2, :cond_1

    const/4 v7, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mSourceBytes:[B

    invoke-virtual {p3, v6}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setSource([B)V

    const/4 v7, 0x7

    invoke-virtual {p3}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndMatcher()Lorg/joni/Matcher;

    move-result-object v1

    const/4 v7, 0x3

    :cond_1
    if-nez v2, :cond_2

    iget-boolean v6, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->noMoreEndMatches:Z

    if-eqz v6, :cond_5

    const/4 v7, 0x4

    :cond_2
    invoke-virtual {v1, p1, p2, v4}, Lorg/joni/Matcher;->search(III)I

    move-result v6

    if-ne v6, v5, :cond_4

    const/4 v7, 0x7

    iput-boolean v3, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->noMoreEndMatches:Z

    move v0, v5

    const/4 v7, 0x4

    goto :goto_0

    const/4 v3, 0x4

    :cond_3
    move v2, v4

    const/4 v7, 0x4

    goto :goto_1

    const/4 v4, 0x4

    const/4 v7, 0x6

    :cond_4
    iput-boolean v4, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->noMoreEndMatches:Z

    const/4 v7, 0x6

    :cond_5
    invoke-virtual {v1}, Lorg/joni/Matcher;->getBegin()I

    move-result v6

    if-ge v6, p1, :cond_7

    const/4 v7, 0x7

    invoke-virtual {v1, p1, p2, v4}, Lorg/joni/Matcher;->search(III)I

    move-result v0

    const/4 v7, 0x7

    if-ne v0, v5, :cond_6

    :goto_2
    iput-boolean v3, p3, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->noMoreEndMatches:Z

    goto :goto_0

    const/4 v1, 0x4

    :cond_6
    move v3, v4

    goto :goto_2

    const/4 v1, 0x1

    const/4 v7, 0x7

    :cond_7
    invoke-virtual {v1}, Lorg/joni/Matcher;->getBegin()I

    move-result v0

    goto :goto_0

    const/4 v4, 0x6
.end method

.method private getNextMatch(IILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;
    .locals 14

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->size()I

    move-result v10

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_f

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->getRule(I)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v9

    iget-boolean v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->noMoreMatches:Z

    if-eqz v12, :cond_1

    iget v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->lastParseStart:I

    if-gt v12, p1, :cond_1

    iget v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->lastParseEnd:I

    move/from16 v0, p2

    if-lt v12, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x7

    :cond_1
    iput p1, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->lastParseStart:I

    move/from16 v0, p2

    iput v0, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->lastParseEnd:I

    const/4 v4, 0x0

    instance-of v12, v9, Lcom/henrythompson/quoda/tmlanguage/Include;

    if-eqz v12, :cond_3

    move-object v2, v9

    check-cast v2, Lcom/henrythompson/quoda/tmlanguage/Include;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/tmlanguage/Include;->getAssociatedRules()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v3

    if-eqz v3, :cond_0

    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v3}, Lcom/henrythompson/quoda/parser2/LineParser;->getNextMatch(IILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-virtual {v4}, Lorg/joni/Matcher;->getBegin()I

    move-result v12

    if-ne v12, p1, :cond_8

    :goto_3
    return-object v9

    const/4 v13, 0x3

    :cond_3
    invoke-virtual {v9}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_4

    iget-object v12, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mSourceBytes:[B

    invoke-virtual {v9, v12}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->setSource([B)V

    invoke-virtual {v9}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v4

    :cond_4
    if-nez v5, :cond_5

    iget-boolean v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->noMoreMatches:Z

    if-eqz v12, :cond_2

    :cond_5
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0, v12}, Lorg/joni/Matcher;->search(III)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->noMoreMatches:Z

    goto :goto_1

    const/4 v10, 0x5

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    const/4 v5, 0x1

    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->noMoreMatches:Z

    goto :goto_2

    const/4 v8, 0x6

    :cond_8
    invoke-virtual {v4}, Lorg/joni/Matcher;->getBegin()I

    move-result v12

    if-le v12, p1, :cond_a

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lorg/joni/Matcher;->getBegin()I

    move-result v12

    invoke-virtual {v6}, Lorg/joni/Matcher;->getBegin()I

    move-result v13

    if-ge v12, v13, :cond_a

    :cond_9
    move-object v7, v9

    move-object v6, v4

    goto :goto_1

    const/4 v5, 0x2

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v4}, Lorg/joni/Matcher;->getBegin()I

    move-result v12

    invoke-virtual {v6}, Lorg/joni/Matcher;->getBegin()I

    move-result v13

    if-gt v12, v13, :cond_0

    :cond_b
    invoke-virtual {v4}, Lorg/joni/Matcher;->getEnd()I

    move-result v11

    if-ge v11, p1, :cond_c

    move v11, p1

    :cond_c
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0, v12}, Lorg/joni/Matcher;->search(III)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_d

    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->noMoreMatches:Z

    goto/16 :goto_1

    const/4 v5, 0x2

    :cond_d
    if-nez v6, :cond_e

    move-object v6, v4

    move-object v7, v9

    goto/16 :goto_1

    const/4 v8, 0x7

    :cond_e
    invoke-virtual {v4}, Lorg/joni/Matcher;->getBegin()I

    move-result v12

    invoke-virtual {v6}, Lorg/joni/Matcher;->getBegin()I

    move-result v13

    if-ge v12, v13, :cond_0

    move-object v6, v4

    move-object v7, v9

    goto/16 :goto_1

    const/4 v0, 0x1

    :cond_f
    move-object v9, v7

    goto/16 :goto_3

    const/4 v3, 0x5
.end method

.method private parseLine(I)V
    .locals 14

    const/4 v13, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/LineObject;->setIsUpdated(Z)V

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getIndexForLine(I)I

    move-result v9

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/LinesCollection;->getIndexForLine(I)I

    move-result v8

    if-gez v8, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    :cond_0
    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/LineObject;->getTokens()Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v12

    invoke-virtual {v12}, Lcom/henrythompson/quoda/parser2/Token;->cloneWithUnendingChildren()Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v0

    :goto_0
    move-object v7, v0

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/document/LineObject;->setTokens(Lcom/henrythompson/quoda/parser2/Token;)V

    :goto_1
    invoke-virtual {v7}, Lcom/henrythompson/quoda/parser2/Token;->getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v1

    instance-of v1, v1, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/henrythompson/quoda/parser2/Token;->getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mSourceBytes:[B

    invoke-virtual {v6, v1}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->setSource([B)V

    invoke-virtual {v6}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileMatcher()Lorg/joni/Matcher;

    move-result-object v10

    invoke-virtual {v10, v9, v8, v13}, Lorg/joni/Matcher;->search(III)I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {v7}, Lcom/henrythompson/quoda/parser2/Token;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-direct {p0, v9, v8, v7}, Lcom/henrythompson/quoda/parser2/LineParser;->parseRegion(IILcom/henrythompson/quoda/parser2/Token;)V

    nop

    return-void

    const/4 v8, 0x7

    :cond_2
    new-instance v0, Lcom/henrythompson/quoda/parser2/Token;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->getScope()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/parser2/Token;-><init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;II)V

    goto :goto_0

    const/4 v1, 0x4

    :cond_3
    invoke-direct {p0, v7}, Lcom/henrythompson/quoda/parser2/LineParser;->processWhileToken(Lcom/henrythompson/quoda/parser2/Token;)V

    :cond_4
    invoke-virtual {v7}, Lcom/henrythompson/quoda/parser2/Token;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/henrythompson/quoda/parser2/Token;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v7}, Lcom/henrythompson/quoda/parser2/Token;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/henrythompson/quoda/parser2/Token;

    goto :goto_1

    const/4 v0, 0x4
.end method

.method private parseRegion(IILcom/henrythompson/quoda/parser2/Token;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v7, 0x6

    invoke-virtual {p3}, Lcom/henrythompson/quoda/parser2/Token;->getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {p0, v4}, Lcom/henrythompson/quoda/parser2/LineParser;->getChildPatterns(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v5

    const/4 v7, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/henrythompson/quoda/parser2/LineParser;->parseRegion(IILcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;Lcom/henrythompson/quoda/parser2/Token;)V

    const/4 v7, 0x2

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private parseRegion(IILcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;Lcom/henrythompson/quoda/parser2/Token;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x6

    move v4, p1

    const/4 v7, 0x4

    move-object v3, p5

    const/4 v7, 0x0

    :goto_0
    if-ge v4, p2, :cond_2

    const/4 v7, 0x2

    if-eqz p5, :cond_3

    const/4 v7, 0x3

    invoke-direct {p0, v4, p2, p5}, Lcom/henrythompson/quoda/parser2/LineParser;->getNextMatch(IILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v1

    const/4 v7, 0x3

    :goto_1
    const/4 v2, -0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    const/4 v7, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joni/Matcher;->getBegin()I

    move-result v2

    const/4 v7, 0x4

    :cond_0
    const/4 v0, -0x1

    const/4 v7, 0x7

    if-eqz p4, :cond_1

    instance-of v5, p4, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    if-eqz v5, :cond_1

    move-object v5, p4

    const/4 v7, 0x5

    check-cast v5, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    invoke-direct {p0, v4, p2, v5}, Lcom/henrythompson/quoda/parser2/LineParser;->getNearestEndMatch(IILcom/henrythompson/quoda/tmlanguage/BeginEndRule;)I

    move-result v0

    const/4 v7, 0x7

    if-eq v0, v6, :cond_1

    if-ge v0, v2, :cond_1

    const/4 v7, 0x6

    const/4 v1, 0x0

    const/4 v7, 0x7

    :cond_1
    if-nez v1, :cond_6

    const/4 v7, 0x6

    if-ne v0, v6, :cond_4

    const/4 v7, 0x2

    :cond_2
    nop

    return-void

    const/4 v6, 0x7

    const/4 v7, 0x2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    const/4 v3, 0x4

    const/4 v7, 0x1

    :cond_4
    check-cast p4, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    invoke-virtual {p4}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndMatcher()Lorg/joni/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joni/Matcher;->getEnd()I

    move-result v4

    const/4 v7, 0x2

    invoke-direct {p0, p3}, Lcom/henrythompson/quoda/parser2/LineParser;->processAndEndToken(Lcom/henrythompson/quoda/parser2/Token;)V

    const/4 v7, 0x1

    invoke-virtual {p3}, Lcom/henrythompson/quoda/parser2/Token;->getParent()Lcom/henrythompson/quoda/parser2/Token;

    move-result-object p3

    const/4 v7, 0x4

    if-eqz p6, :cond_5

    if-ne p6, p3, :cond_5

    const/4 v7, 0x0

    const/4 p3, 0x0

    const/4 v7, 0x1

    const/4 p4, 0x0

    const/4 v7, 0x5

    move-object p5, v3

    goto :goto_0

    const/4 v3, 0x2

    const/4 v7, 0x6

    :cond_5
    invoke-virtual {p3}, Lcom/henrythompson/quoda/parser2/Token;->getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object p4

    const/4 v7, 0x6

    invoke-direct {p0, p4}, Lcom/henrythompson/quoda/parser2/LineParser;->getChildPatterns(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object p5

    goto :goto_0

    const/4 v5, 0x4

    const/4 v7, 0x2

    :cond_6
    instance-of v5, v1, Lcom/henrythompson/quoda/tmlanguage/MatchRule;

    if-eqz v5, :cond_8

    move-object v5, v1

    const/4 v7, 0x2

    check-cast v5, Lcom/henrythompson/quoda/tmlanguage/MatchRule;

    invoke-direct {p0, p3, v5}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/MatchRule;)V

    const/4 v7, 0x6

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->getMatcher()Lorg/joni/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joni/Matcher;->getEnd()I

    move-result v4

    goto :goto_0

    const/4 v3, 0x6

    const/4 v7, 0x0

    :cond_8
    instance-of v5, v1, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    if-eqz v5, :cond_9

    const/4 v7, 0x5

    move-object p4, v1

    move-object v5, p4

    const/4 v7, 0x4

    check-cast v5, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    invoke-direct {p0, p3, v5}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object p3

    move-object v5, p4

    const/4 v7, 0x1

    check-cast v5, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object p5

    goto :goto_2

    const/4 v5, 0x4

    const/4 v7, 0x7

    :cond_9
    instance-of v5, v1, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    if-eqz v5, :cond_7

    const/4 v7, 0x3

    move-object p4, v1

    move-object v5, p4

    const/4 v7, 0x5

    check-cast v5, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    invoke-direct {p0, p3, v5}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object p3

    move-object v5, p4

    const/4 v7, 0x6

    check-cast v5, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object p5

    goto :goto_2

    const/4 v6, 0x4
.end method

.method private processAndEndToken(Lcom/henrythompson/quoda/parser2/Token;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/parser2/Token;->getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joni/Matcher;->getBegin()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/parser2/Token;->setContentEnd(I)V

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joni/Matcher;->getEnd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/parser2/Token;->setEnd(I)V

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndMatcher()Lorg/joni/Matcher;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V

    const/4 v3, 0x6

    nop

    return-void

    const/4 v3, 0x4
.end method

.method private processCaptures(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V
    .locals 15

    invoke-virtual/range {p4 .. p4}, Lorg/joni/Matcher;->getRegion()Lorg/joni/Region;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    nop

    return-void

    const/4 v3, 0x7

    :cond_1
    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->size()I

    move-result v2

    if-ge v13, v2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->groupForIndex(I)I

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p4 .. p4}, Lorg/joni/Matcher;->getRegion()Lorg/joni/Region;

    move-result-object v2

    iget v2, v2, Lorg/joni/Region;->numRegs:I

    if-le v12, v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    const/4 v10, 0x4

    :cond_3
    invoke-virtual/range {p4 .. p4}, Lorg/joni/Matcher;->getRegion()Lorg/joni/Region;

    move-result-object v2

    iget-object v2, v2, Lorg/joni/Region;->beg:[I

    aget v5, v2, v12

    invoke-virtual/range {p4 .. p4}, Lorg/joni/Matcher;->getRegion()Lorg/joni/Region;

    move-result-object v2

    iget-object v2, v2, Lorg/joni/Region;->end:[I

    aget v6, v2, v12

    const/4 v2, -0x1

    if-eq v5, v2, :cond_2

    const/4 v2, -0x1

    if-eq v6, v2, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    move-result-object v11

    if-eqz v11, :cond_4

    instance-of v2, v11, Lcom/henrythompson/quoda/tmlanguage/Scope;

    if-eqz v2, :cond_4

    move-object v14, v11

    check-cast v14, Lcom/henrythompson/quoda/tmlanguage/Scope;

    new-instance v1, Lcom/henrythompson/quoda/parser2/Token;

    invoke-virtual {v14}, Lcom/henrythompson/quoda/tmlanguage/Scope;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/henrythompson/quoda/parser2/Token;-><init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/parser2/Token;->addChildToken(Lcom/henrythompson/quoda/parser2/Token;)V

    goto :goto_1

    const/4 v2, 0x7

    :cond_4
    if-eqz v11, :cond_2

    instance-of v2, v11, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    if-eqz v2, :cond_2

    move-object v9, v11

    check-cast v9, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v8, 0x0

    move-object v4, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/henrythompson/quoda/parser2/LineParser;->parseRegion(IILcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;Lcom/henrythompson/quoda/parser2/Token;)V

    goto :goto_1

    const/4 v12, 0x3
.end method

.method private processTextChange(Lcom/henrythompson/quoda/UndoStack$TextChange;)V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget v9, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v3, v11, v16

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v2, v11, v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v11, v9}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineForIndex(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v11, v9, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v6, v9

    :goto_0
    if-ge v6, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    invoke-interface {v11, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/henrythompson/quoda/document/LinesCollection;->remove(I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    const/4 v3, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Lcom/henrythompson/quoda/document/LinesCollection;->shiftIndexes(II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    invoke-interface {v11, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int v16, v9, v6

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineForIndex(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v16, v8, 0x1

    add-int v17, v9, v6

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->add(II)Lcom/henrythompson/quoda/document/LineObject;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    const/4 v6, 0x3

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v11, v3}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineForIndex(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/henrythompson/quoda/parser2/LineParser;->mSourceBytes:[B

    const/4 v5, 0x0

    move v8, v10

    :goto_2
    if-eqz v5, :cond_4

    if-gt v8, v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/henrythompson/quoda/parser2/LineParser;->parseLine(I)V

    const/4 v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    const/4 v7, 0x7

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v16, v12

    const-string v11, "Parser Time taken"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return-void

    const/4 v11, 0x7
.end method

.method private processWhileToken(Lcom/henrythompson/quoda/parser2/Token;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/parser2/Token;->getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joni/Matcher;->getEnd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/parser2/Token;->setContentEnd(I)V

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileMatcher()Lorg/joni/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joni/Matcher;->getEnd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/parser2/Token;->setEnd(I)V

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileMatcher()Lorg/joni/Matcher;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/henrythompson/quoda/parser2/LineParser;->addToken(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Lorg/joni/Matcher;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v3, 0x6
.end method

.method private resetRules()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->reset()V

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->resetRepository()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private runFirstParse()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mTextCopy:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mSourceBytes:[B

    const/4 v3, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mLines:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineCount()I

    move-result v1

    const/4 v3, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v3, 0x6

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/parser2/LineParser;->parseLine(I)V

    const/4 v3, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x4

    const/4 v3, 0x2

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mIsFirstParse:Z

    const/4 v3, 0x5

    nop

    return-void

    const/4 v3, 0x3
.end method


# virtual methods
.method public declared-synchronized registerTextChange(Lcom/henrythompson/quoda/UndoStack$TextChange;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v9, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const/4 v9, 0x4

    new-instance v8, Lcom/henrythompson/quoda/parser2/LineParser$1;

    invoke-direct {v8, p0}, Lcom/henrythompson/quoda/parser2/LineParser$1;-><init>(Lcom/henrythompson/quoda/parser2/LineParser;)V

    const/4 v9, 0x6

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mService:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x1

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mService:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser;->mService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;

    invoke-direct {v2, p0, p1}, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;-><init>(Lcom/henrythompson/quoda/parser2/LineParser;Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v9, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x5

    monitor-exit p0

    nop

    return-void

    const/4 v7, 0x7

    const/4 v9, 0x6

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v9, 0x6

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
