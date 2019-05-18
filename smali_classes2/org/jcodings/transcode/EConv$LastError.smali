.class final Lorg/jcodings/transcode/EConv$LastError;
.super Ljava/lang/Object;
.source "EConv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/transcode/EConv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastError"
.end annotation


# instance fields
.field destination:[B

.field errorBytes:[B

.field errorBytesEnd:I

.field errorBytesP:I

.field errorTranscoding:Lorg/jcodings/transcode/Transcoding;

.field readAgainLength:I

.field result:Lorg/jcodings/transcode/EConvResult;

.field source:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/jcodings/transcode/EConv$LastError;->result:Lorg/jcodings/transcode/EConvResult;

    .line 88
    iput-object v0, p0, Lorg/jcodings/transcode/EConv$LastError;->errorTranscoding:Lorg/jcodings/transcode/Transcoding;

    .line 89
    iput-object v0, p0, Lorg/jcodings/transcode/EConv$LastError;->destination:[B

    iput-object v0, p0, Lorg/jcodings/transcode/EConv$LastError;->source:[B

    .line 90
    iput-object v0, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytes:[B

    .line 91
    iput v1, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesEnd:I

    iput v1, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    .line 92
    iput v1, p0, Lorg/jcodings/transcode/EConv$LastError;->readAgainLength:I

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/jcodings/transcode/EConv$LastError;->source:[B

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/jcodings/transcode/EConv$LastError;->destination:[B

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jcodings/transcode/EConv$LastError;->result:Lorg/jcodings/transcode/EConvResult;

    invoke-virtual {v2}, Lorg/jcodings/transcode/EConvResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  error bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytes:[B

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  read again length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jcodings/transcode/EConv$LastError;->readAgainLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0

    .line 97
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/jcodings/transcode/EConv$LastError;->source:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/jcodings/transcode/EConv$LastError;->destination:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 100
    .restart local v0    # "s":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytes:[B

    iget v4, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    iget v5, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    iget v6, p0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesEnd:I

    add-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2
.end method
