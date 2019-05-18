.class final Lorg/jcodings/transcode/EConv$EConvElement;
.super Lorg/jcodings/transcode/Buffer;
.source "EConv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/transcode/EConv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EConvElement"
.end annotation


# instance fields
.field lastResult:Lorg/jcodings/transcode/EConvResult;

.field final transcoding:Lorg/jcodings/transcode/Transcoding;


# direct methods
.method constructor <init>(Lorg/jcodings/transcode/Transcoding;)V
    .locals 1
    .param p1, "transcoding"    # Lorg/jcodings/transcode/Transcoding;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jcodings/transcode/Buffer;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    .line 63
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    iput-object v0, p0, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    .line 64
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EConv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    invoke-virtual {v2}, Lorg/jcodings/transcode/Transcoding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  last result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method
