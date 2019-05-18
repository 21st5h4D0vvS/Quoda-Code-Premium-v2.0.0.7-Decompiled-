.class public Lcom/henrythompson/quoda/tmlanguage/Scope;
.super Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;


# instance fields
.field mName:Lcom/henrythompson/quoda/tmlanguage/FormatString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;-><init>()V

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/tmlanguage/FormatString;

    invoke-direct {v0, p1}, Lcom/henrythompson/quoda/tmlanguage/FormatString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Scope;->mName:Lcom/henrythompson/quoda/tmlanguage/FormatString;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Scope;->mName:Lcom/henrythompson/quoda/tmlanguage/FormatString;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/FormatString;->getRawString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method
