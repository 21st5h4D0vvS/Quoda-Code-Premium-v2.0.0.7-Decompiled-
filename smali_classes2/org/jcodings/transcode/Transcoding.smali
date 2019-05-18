.class public Lorg/jcodings/transcode/Transcoding;
.super Ljava/lang/Object;
.source "Transcoding.java"

# interfaces
.implements Lorg/jcodings/transcode/TranscodingInstruction;


# instance fields
.field private charStart:I

.field private charStartBytes:[B

.field flags:I

.field inBytes:[B

.field inCharStart:I

.field inP:I

.field inPos:Lorg/jcodings/Ptr;

.field inStop:I

.field nextByte:B

.field nextInfo:I

.field nextTable:I

.field opt:I

.field outBytes:[B

.field outP:I

.field outPos:Lorg/jcodings/Ptr;

.field outStop:I

.field outputIndex:I

.field readAgainL:I

.field readAgainLength:I

.field final readBuf:[B

.field recognizedLength:I

.field resumePosition:I

.field state:[B

.field public final transcoder:Lorg/jcodings/transcode/Transcoder;

.field final writeBuf:[B

.field writeBuffLen:I

.field writeBuffOff:I


# direct methods
.method public constructor <init>(Lorg/jcodings/transcode/Transcoder;)V
    .locals 1
    .param p1, "transcoder"    # Lorg/jcodings/transcode/Transcoder;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    .line 28
    iget v0, p1, Lorg/jcodings/transcode/Transcoder;->maxInput:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    .line 29
    iget v0, p1, Lorg/jcodings/transcode/Transcoder;->maxOutput:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jcodings/transcode/Transcoding;->writeBuf:[B

    .line 30
    return-void
.end method

.method public static getGB4bt0(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 233
    ushr-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static getGB4bt1(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 237
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    return v0
.end method

.method public static getGB4bt2(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 241
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getGB4bt3(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 245
    ushr-int/lit8 v0, p0, 0x1c

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    return v0
.end method

.method private suspend(I)Lorg/jcodings/transcode/EConvResult;
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 221
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->outStop:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 222
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    invoke-direct {p0, v0, p1}, Lorg/jcodings/transcode/Transcoding;->suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;
    .locals 6
    .param p1, "ret"    # Lorg/jcodings/transcode/EConvResult;
    .param p2, "num"    # I

    .prologue
    .line 207
    iput p2, p0, Lorg/jcodings/transcode/Transcoding;->resumePosition:I

    .line 208
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->inBytes:[B

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    iget-object v2, p0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v5, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->inPos:Lorg/jcodings/Ptr;

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iput v1, v0, Lorg/jcodings/Ptr;->p:I

    .line 210
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->outPos:Lorg/jcodings/Ptr;

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    iput v1, v0, Lorg/jcodings/Ptr;->p:I

    .line 211
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v2, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    .line 212
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainL:I

    if-eqz v0, :cond_1

    .line 213
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->readAgainL:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    .line 214
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainL:I

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    .line 216
    :cond_1
    return-object p1
.end method

.method private suspendAfterOutput()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->opt:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->outPos:Lorg/jcodings/Ptr;

    iget v0, v0, Lorg/jcodings/Ptr;->p:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transcodeInstruction_NoMap()Lorg/jcodings/transcode/EConvResult;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/jcodings/transcode/Transcoding;->transcodeInstruction_NoMap_resume_3()Lorg/jcodings/transcode/EConvResult;

    move-result-object v0

    return-object v0
.end method

.method private transcodeInstruction_NoMap_resume_3()Lorg/jcodings/transcode/EConvResult;
    .locals 5

    .prologue
    .line 197
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffLen:I

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->outBytes:[B

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    iget-object v2, p0, Lorg/jcodings/transcode/Transcoding;->writeBuf:[B

    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 200
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jcodings/transcode/Transcoding;->suspend(I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transcodeRestartable([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inStart"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outStart"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "opt"    # I

    .prologue
    .line 81
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    if-eqz v0, :cond_0

    .line 82
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    new-array v1, v0, [B

    .line 83
    .local v1, "readAgainBuf":[B
    new-instance v2, Lorg/jcodings/Ptr;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lorg/jcodings/Ptr;-><init>(I)V

    .line 84
    .local v2, "readAgainPos":Lorg/jcodings/Ptr;
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    .line 85
    .local v3, "readAgainStop":I
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v5, v2, Lorg/jcodings/Ptr;->p:I

    iget v6, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    .line 88
    const/high16 v0, 0x10000

    or-int v7, p7, v0

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jcodings/transcode/Transcoding;->transcodeRestartable0([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v8

    .line 89
    .local v8, "res":Lorg/jcodings/transcode/EConvResult;
    invoke-virtual {v8}, Lorg/jcodings/transcode/EConvResult;->isSourceBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget v0, v2, Lorg/jcodings/Ptr;->p:I

    iget-object v4, p0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iget v5, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v6, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    add-int/2addr v5, v6

    iget v6, v2, Lorg/jcodings/Ptr;->p:I

    sub-int v6, v3, v6

    invoke-static {v1, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    iget v4, v2, Lorg/jcodings/Ptr;->p:I

    sub-int v4, v3, v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    .line 94
    .end local v1    # "readAgainBuf":[B
    .end local v2    # "readAgainPos":Lorg/jcodings/Ptr;
    .end local v3    # "readAgainStop":I
    .end local v8    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_0
    invoke-direct/range {p0 .. p7}, Lorg/jcodings/transcode/Transcoding;->transcodeRestartable0([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v0

    return-object v0
.end method

.method private transcodeRestartable0([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inStart"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outStart"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "opt"    # I

    .prologue
    .line 109
    iput-object p2, p0, Lorg/jcodings/transcode/Transcoding;->inPos:Lorg/jcodings/Ptr;

    .line 110
    iget v0, p2, Lorg/jcodings/Ptr;->p:I

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    .line 111
    iput-object p5, p0, Lorg/jcodings/transcode/Transcoding;->outPos:Lorg/jcodings/Ptr;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->readAgainL:I

    .line 113
    iput-object p1, p0, Lorg/jcodings/transcode/Transcoding;->inBytes:[B

    .line 114
    iput-object p4, p0, Lorg/jcodings/transcode/Transcoding;->outBytes:[B

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method private transcodeSwitch()Lorg/jcodings/transcode/EConvResult;
    .locals 13

    .prologue
    const/high16 v12, 0x10000

    const/16 v11, 0x1d

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x1f

    .line 120
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->resumePosition:I

    if-eqz v3, :cond_1

    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->resumePosition:I

    .line 124
    .local v0, "jump":I
    :cond_0
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 184
    :goto_1
    new-instance v3, Lorg/jcodings/exception/TranscoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown transcoding instruction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jcodings/exception/TranscoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    .end local v0    # "jump":I
    :cond_1
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->nextInfo:I

    and-int/lit16 v0, v3, 0xff

    goto :goto_0

    .line 126
    .restart local v0    # "jump":I
    :sswitch_0
    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    .line 127
    .local v1, "p":I
    iput v9, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    .line 128
    :goto_2
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    if-ge v1, v3, :cond_2

    .line 129
    iget-object v3, p0, Lorg/jcodings/transcode/Transcoding;->writeBuf:[B

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    iget-object v5, p0, Lorg/jcodings/transcode/Transcoding;->inBytes:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "p":I
    .local v2, "p":I
    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_2

    .line 132
    :cond_2
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    iput v3, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffLen:I

    .line 133
    iput v9, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    .line 134
    :goto_3
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffLen:I

    if-ge v3, v4, :cond_0

    .line 135
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->outStop:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    sub-int/2addr v3, v4

    if-ge v3, v10, :cond_3

    invoke-direct {p0, v11}, Lorg/jcodings/transcode/Transcoding;->suspend(I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    .line 163
    .end local v1    # "p":I
    :goto_4
    return-object v3

    .line 136
    .restart local v1    # "p":I
    :cond_3
    iget-object v3, p0, Lorg/jcodings/transcode/Transcoding;->outBytes:[B

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    iget-object v5, p0, Lorg/jcodings/transcode/Transcoding;->writeBuf:[B

    iget v6, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    goto :goto_3

    .line 141
    .end local v1    # "p":I
    :cond_4
    :sswitch_1
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->outStop:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    sub-int/2addr v3, v4

    if-ge v3, v10, :cond_5

    invoke-direct {p0, v11}, Lorg/jcodings/transcode/Transcoding;->suspend(I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    goto :goto_4

    .line 142
    :cond_5
    iget-object v3, p0, Lorg/jcodings/transcode/Transcoding;->outBytes:[B

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/jcodings/transcode/Transcoding;->outP:I

    iget-object v5, p0, Lorg/jcodings/transcode/Transcoding;->writeBuf:[B

    iget v6, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 143
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffOff:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->writeBuffLen:I

    if-lt v3, v4, :cond_4

    .line 153
    :sswitch_2
    invoke-direct {p0}, Lorg/jcodings/transcode/Transcoding;->suspendAfterOutput()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    const/16 v4, 0x1e

    invoke-direct {p0, v3, v4}, Lorg/jcodings/transcode/Transcoding;->suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    goto :goto_4

    .line 155
    :cond_6
    :sswitch_3
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->inStop:I

    if-lt v3, v4, :cond_8

    .line 156
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->opt:I

    and-int/2addr v3, v12

    if-nez v3, :cond_7

    sget-object v3, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    invoke-direct {p0, v3, v8}, Lorg/jcodings/transcode/Transcoding;->suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    goto :goto_4

    .line 157
    :cond_7
    sget-object v3, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    invoke-direct {p0, v3, v8}, Lorg/jcodings/transcode/Transcoding;->suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    goto :goto_4

    .line 161
    :cond_8
    :sswitch_4
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->inStop:I

    if-lt v3, v4, :cond_a

    .line 162
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->opt:I

    and-int/2addr v3, v12

    if-nez v3, :cond_9

    sget-object v3, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    invoke-direct {p0, v3, v8}, Lorg/jcodings/transcode/Transcoding;->suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    goto :goto_4

    .line 163
    :cond_9
    sget-object v3, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    invoke-direct {p0, v3, v8}, Lorg/jcodings/transcode/Transcoding;->suspend(Lorg/jcodings/transcode/EConvResult;I)Lorg/jcodings/transcode/EConvResult;

    move-result-object v3

    goto :goto_4

    .line 165
    :cond_a
    iget-object v3, p0, Lorg/jcodings/transcode/Transcoding;->inBytes:[B

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lorg/jcodings/transcode/Transcoding;->nextByte:B

    .line 166
    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->nextInfo:I

    iput v3, p0, Lorg/jcodings/transcode/Transcoding;->nextTable:I

    goto/16 :goto_1

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0xc -> :sswitch_2
        0x10 -> :sswitch_2
        0x14 -> :sswitch_2
        0x18 -> :sswitch_2
        0x1c -> :sswitch_2
        0x1d -> :sswitch_1
        0x1e -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method charStart()I
    .locals 6

    .prologue
    .line 63
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    iget-object v2, p0, Lorg/jcodings/transcode/Transcoding;->inPos:Lorg/jcodings/Ptr;

    iget v2, v2, Lorg/jcodings/Ptr;->p:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->inBytes:[B

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    iget-object v2, p0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iget v3, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v4, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v5, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->charStart:I

    .line 66
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iput-object v0, p0, Lorg/jcodings/transcode/Transcoding;->charStartBytes:[B

    .line 72
    :goto_0
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->inP:I

    iget v2, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    .line 68
    :cond_0
    iget v0, p0, Lorg/jcodings/transcode/Transcoding;->inCharStart:I

    iget v1, p0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jcodings/transcode/Transcoding;->charStart:I

    .line 69
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->inBytes:[B

    iput-object v0, p0, Lorg/jcodings/transcode/Transcoding;->charStartBytes:[B

    goto :goto_0
.end method

.method close()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    invoke-virtual {v0}, Lorg/jcodings/transcode/Transcoder;->stateFinish()I

    .line 51
    return-void
.end method

.method convert([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inPtr"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outPtr"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "flags"    # I

    .prologue
    .line 77
    invoke-direct/range {p0 .. p7}, Lorg/jcodings/transcode/Transcoding;->transcodeRestartable([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transcoding for transcoder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    invoke-virtual {v1}, Lorg/jcodings/transcode/Transcoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
