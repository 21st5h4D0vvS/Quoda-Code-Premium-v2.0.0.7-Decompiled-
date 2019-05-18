.class public final Lorg/joni/ApplyCaseFoldArg;
.super Ljava/lang/Object;
.source "ApplyCaseFoldArg.java"


# instance fields
.field altRoot:Lorg/joni/ast/ConsAltNode;

.field final cc:Lorg/joni/ast/CClassNode;

.field final env:Lorg/joni/ScanEnvironment;

.field tail:Lorg/joni/ast/ConsAltNode;


# direct methods
.method public constructor <init>(Lorg/joni/ScanEnvironment;Lorg/joni/ast/CClassNode;)V
    .locals 0
    .param p1, "env"    # Lorg/joni/ScanEnvironment;
    .param p2, "cc"    # Lorg/joni/ast/CClassNode;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/joni/ApplyCaseFoldArg;->env:Lorg/joni/ScanEnvironment;

    .line 33
    iput-object p2, p0, Lorg/joni/ApplyCaseFoldArg;->cc:Lorg/joni/ast/CClassNode;

    .line 34
    return-void
.end method
