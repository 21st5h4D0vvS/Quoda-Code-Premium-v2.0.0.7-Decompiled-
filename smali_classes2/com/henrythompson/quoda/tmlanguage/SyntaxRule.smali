.class public abstract Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;
.super Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;


# instance fields
.field public lastParseEnd:I

.field public lastParseStart:I

.field private mRepositoryReference:Ljava/lang/String;

.field public noMoreMatches:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public abstract getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
.end method

.method public abstract getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;
.end method

.method public abstract getMatcher()Lorg/joni/Matcher;
.end method

.method public getRepositoryReference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->mRepositoryReference:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x4
.end method

.method public final reset()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->noMoreMatches:Z

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->resetMatchers()V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public abstract resetMatchers()V
.end method

.method public setRepositoryReference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->mRepositoryReference:Ljava/lang/String;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public abstract setSource([B)V
.end method
