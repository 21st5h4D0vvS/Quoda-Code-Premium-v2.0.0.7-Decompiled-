.class public Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen128;
.super Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen;-><init>(I)V

    .line 189
    return-void
.end method
