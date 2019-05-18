.class public Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;
.super Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;


# instance fields
.field public lastEndParseEnd:I

.field public lastEndParseStart:I

.field private mBeginCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

.field private mBeginMatcher:Lorg/joni/Matcher;

.field private mBeginPattern:Lorg/joni/Regex;

.field private mContentName:Lcom/henrythompson/quoda/tmlanguage/Scope;

.field private mEndCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

.field private mEndMatcher:Lorg/joni/Matcher;

.field private mEndPattern:Lorg/joni/Regex;

.field private mName:Lcom/henrythompson/quoda/tmlanguage/Scope;

.field private mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

.field public noMoreEndMatches:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;-><init>()V

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-direct {v0}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-direct {v0}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public addBeginCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->addCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public addBeginCapture(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->addCapture(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public addEndCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->addCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public addEndCapture(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->addCapture(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    move-result-object v0

    return-object v0

    const/4 v0, 0x1
.end method

.method public getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getContentName()Lcom/henrythompson/quoda/tmlanguage/Scope;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mContentName:Lcom/henrythompson/quoda/tmlanguage/Scope;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getEndCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public getEndCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndCaptures:Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getEndMatcher()Lorg/joni/Matcher;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndMatcher:Lorg/joni/Matcher;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getMatcher()Lorg/joni/Matcher;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginMatcher:Lorg/joni/Matcher;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getName()Lcom/henrythompson/quoda/tmlanguage/Scope;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mName:Lcom/henrythompson/quoda/tmlanguage/Scope;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    return-object v0

    const/4 v1, 0x3
.end method

.method public resetMatchers()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginMatcher:Lorg/joni/Matcher;

    const/4 v2, 0x0

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndMatcher:Lorg/joni/Matcher;

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->getRule(I)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->reset()V

    const/4 v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public setBeginPattern(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setBeginPattern([B)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public setBeginPattern([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v7, 0x2

    :try_start_0
    new-instance v0, Lorg/joni/Regex;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x6

    sget-object v5, Lorg/jcodings/specific/UTF8Encoding;->INSTANCE:Lorg/jcodings/specific/UTF8Encoding;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginPattern:Lorg/joni/Regex;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    nop

    return-void

    const/4 v1, 0x7

    const/4 v7, 0x0

    :catch_0
    move-exception v6

    const/4 v7, 0x4

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid begin pattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentName(Lcom/henrythompson/quoda/tmlanguage/Scope;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mContentName:Lcom/henrythompson/quoda/tmlanguage/Scope;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setEndPattern(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setEndPattern([B)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setEndPattern([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x5

    const/4 v7, 0x4

    :try_start_0
    new-instance v0, Lorg/joni/Regex;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x6

    sget-object v5, Lorg/jcodings/specific/UTF8Encoding;->INSTANCE:Lorg/jcodings/specific/UTF8Encoding;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndPattern:Lorg/joni/Regex;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x6

    nop

    return-void

    const/4 v7, 0x6

    const/4 v7, 0x1

    :catch_0
    move-exception v6

    const/4 v7, 0x6

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid end pattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Lcom/henrythompson/quoda/tmlanguage/Scope;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mName:Lcom/henrythompson/quoda/tmlanguage/Scope;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setPatterns(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setSource([B)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginPattern:Lorg/joni/Regex;

    invoke-virtual {v0, p1}, Lorg/joni/Regex;->matcher([B)Lorg/joni/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mBeginMatcher:Lorg/joni/Matcher;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndPattern:Lorg/joni/Regex;

    invoke-virtual {v0, p1}, Lorg/joni/Regex;->matcher([B)Lorg/joni/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->mEndMatcher:Lorg/joni/Matcher;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x7
.end method
