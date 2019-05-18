.class final Lorg/joni/OptEnvironment;
.super Ljava/lang/Object;
.source "OptEnvironment.java"


# instance fields
.field caseFoldFlag:I

.field enc:Lorg/jcodings/Encoding;

.field final mmd:Lorg/joni/MinMaxLen;

.field options:I

.field scanEnv:Lorg/joni/ScanEnvironment;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/joni/MinMaxLen;

    invoke-direct {v0}, Lorg/joni/MinMaxLen;-><init>()V

    iput-object v0, p0, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    return-void
.end method


# virtual methods
.method copy(Lorg/joni/OptEnvironment;)V
    .locals 2
    .param p1, "other"    # Lorg/joni/OptEnvironment;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    iget-object v1, p1, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, v1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 34
    iget-object v0, p1, Lorg/joni/OptEnvironment;->enc:Lorg/jcodings/Encoding;

    iput-object v0, p0, Lorg/joni/OptEnvironment;->enc:Lorg/jcodings/Encoding;

    .line 35
    iget v0, p1, Lorg/joni/OptEnvironment;->options:I

    iput v0, p0, Lorg/joni/OptEnvironment;->options:I

    .line 36
    iget v0, p1, Lorg/joni/OptEnvironment;->caseFoldFlag:I

    iput v0, p0, Lorg/joni/OptEnvironment;->caseFoldFlag:I

    .line 37
    iget-object v0, p1, Lorg/joni/OptEnvironment;->scanEnv:Lorg/joni/ScanEnvironment;

    iput-object v0, p0, Lorg/joni/OptEnvironment;->scanEnv:Lorg/joni/ScanEnvironment;

    .line 38
    return-void
.end method
