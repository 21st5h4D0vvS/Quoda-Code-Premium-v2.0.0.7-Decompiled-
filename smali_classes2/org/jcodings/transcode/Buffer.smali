.class Lorg/jcodings/transcode/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field bufEnd:I

.field bufStart:I

.field bytes:[B

.field dataEnd:I

.field dataStart:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method allocate(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/jcodings/transcode/Buffer;->bytes:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    iput v0, p0, Lorg/jcodings/transcode/Buffer;->dataStart:I

    iput v0, p0, Lorg/jcodings/transcode/Buffer;->bufStart:I

    .line 29
    iput p1, p0, Lorg/jcodings/transcode/Buffer;->bufEnd:I

    .line 30
    return-void
.end method
