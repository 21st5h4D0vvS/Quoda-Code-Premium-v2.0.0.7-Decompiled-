.class public final Lorg/jcodings/transcode/EConv;
.super Ljava/lang/Object;
.source "EConv.java"

# interfaces
.implements Lorg/jcodings/transcode/EConvFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/transcode/EConv$LastError;,
        Lorg/jcodings/transcode/EConv$EConvElement;
    }
.end annotation


# static fields
.field static final NULL_POINTER:[I

.field static final NULL_STRING:[B


# instance fields
.field destination:[B

.field public destinationEncoding:Lorg/jcodings/Encoding;

.field public elements:[Lorg/jcodings/transcode/EConv$EConvElement;

.field flags:I

.field inBuf:Lorg/jcodings/transcode/Buffer;

.field final lastError:Lorg/jcodings/transcode/EConv$LastError;

.field public lastTranscoding:Lorg/jcodings/transcode/Transcoding;

.field numFinished:I

.field numTranscoders:I

.field replacementEncoding:[B

.field replacementLength:I

.field replacementString:[B

.field source:[B

.field public sourceEncoding:Lorg/jcodings/Encoding;

.field started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    new-array v0, v1, [B

    sput-object v0, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    .line 107
    new-array v0, v1, [I

    sput-object v0, Lorg/jcodings/transcode/EConv;->NULL_POINTER:[I

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "nHint"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jcodings/transcode/EConv;->started:Z

    .line 38
    new-instance v0, Lorg/jcodings/transcode/Buffer;

    invoke-direct {v0}, Lorg/jcodings/transcode/Buffer;-><init>()V

    iput-object v0, p0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    .line 45
    new-instance v0, Lorg/jcodings/transcode/EConv$LastError;

    invoke-direct {v0}, Lorg/jcodings/transcode/EConv$LastError;-><init>()V

    iput-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    .line 55
    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 56
    :cond_0
    new-array v0, p1, [Lorg/jcodings/transcode/EConv$EConvElement;

    iput-object v0, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    .line 57
    iget-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    sget-object v1, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    iput-object v1, v0, Lorg/jcodings/transcode/EConv$LastError;->result:Lorg/jcodings/transcode/EConvResult;

    .line 58
    return-void
.end method

.method private static allocateConvertedString([B[B[BII[BLorg/jcodings/Ptr;)[B
    .locals 12
    .param p0, "source"    # [B
    .param p1, "destination"    # [B
    .param p2, "str"    # [B
    .param p3, "strP"    # I
    .param p4, "strLen"    # I
    .param p5, "callerDstBuf"    # [B
    .param p6, "dstLenPtr"    # Lorg/jcodings/Ptr;

    .prologue
    .line 472
    if-eqz p5, :cond_0

    .line 473
    move-object/from16 v0, p5

    array-length v7, v0

    .line 480
    .local v7, "dstBufSize":I
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lorg/jcodings/transcode/TranscoderDB;->open([B[BI)Lorg/jcodings/transcode/EConv;

    move-result-object v1

    .line 481
    .local v1, "ec":Lorg/jcodings/transcode/EConv;
    if-nez v1, :cond_2

    const/4 v5, 0x0

    .line 511
    :goto_1
    return-object v5

    .line 474
    .end local v1    # "ec":Lorg/jcodings/transcode/EConv;
    .end local v7    # "dstBufSize":I
    :cond_0
    if-nez p4, :cond_1

    .line 475
    const/4 v7, 0x1

    .restart local v7    # "dstBufSize":I
    goto :goto_0

    .line 477
    .end local v7    # "dstBufSize":I
    :cond_1
    move/from16 v7, p4

    .restart local v7    # "dstBufSize":I
    goto :goto_0

    .line 484
    .restart local v1    # "ec":Lorg/jcodings/transcode/EConv;
    :cond_2
    if-eqz p5, :cond_3

    .line 485
    move-object/from16 v5, p5

    .line 490
    .local v5, "dstStr":[B
    :goto_2
    const/4 v9, 0x0

    .line 491
    .local v9, "dstLen":I
    new-instance v3, Lorg/jcodings/Ptr;

    invoke-direct {v3, p3}, Lorg/jcodings/Ptr;-><init>(I)V

    .line 492
    .local v3, "sp":Lorg/jcodings/Ptr;
    new-instance v6, Lorg/jcodings/Ptr;

    invoke-direct {v6, v9}, Lorg/jcodings/Ptr;-><init>(I)V

    .line 493
    .local v6, "dp":Lorg/jcodings/Ptr;
    add-int v4, p3, p4

    const/4 v8, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lorg/jcodings/transcode/EConv;->convert([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v10

    .line 495
    .local v10, "res":Lorg/jcodings/transcode/EConvResult;
    :goto_3
    invoke-virtual {v10}, Lorg/jcodings/transcode/EConvResult;->isDestinationBufferFull()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 496
    mul-int/lit8 v7, v7, 0x2

    .line 497
    new-array v11, v7, [B

    .line 498
    .local v11, "tmp":[B
    const/4 v2, 0x0

    const/4 v4, 0x0

    div-int/lit8 v8, v7, 0x2

    invoke-static {v5, v2, v11, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    move-object v5, v11

    .line 501
    iput v9, v6, Lorg/jcodings/Ptr;->p:I

    .line 502
    add-int v4, p3, p4

    const/4 v8, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lorg/jcodings/transcode/EConv;->convert([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v10

    .line 503
    iget v9, v6, Lorg/jcodings/Ptr;->p:I

    .line 504
    goto :goto_3

    .line 487
    .end local v3    # "sp":Lorg/jcodings/Ptr;
    .end local v5    # "dstStr":[B
    .end local v6    # "dp":Lorg/jcodings/Ptr;
    .end local v9    # "dstLen":I
    .end local v10    # "res":Lorg/jcodings/transcode/EConvResult;
    .end local v11    # "tmp":[B
    :cond_3
    new-array v5, v7, [B

    .restart local v5    # "dstStr":[B
    goto :goto_2

    .line 506
    .restart local v3    # "sp":Lorg/jcodings/Ptr;
    .restart local v6    # "dp":Lorg/jcodings/Ptr;
    .restart local v9    # "dstLen":I
    .restart local v10    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_4
    invoke-virtual {v10}, Lorg/jcodings/transcode/EConvResult;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    .line 508
    :cond_5
    invoke-virtual {v1}, Lorg/jcodings/transcode/EConv;->close()V

    .line 509
    move-object/from16 v0, p6

    iput v9, v0, Lorg/jcodings/Ptr;->p:I

    goto :goto_1
.end method

.method private binmode()V
    .locals 10

    .prologue
    .line 653
    const/4 v8, 0x3

    new-array v7, v8, [Lorg/jcodings/transcode/Transcoder;

    .line 654
    .local v7, "transcoders":[Lorg/jcodings/transcode/Transcoder;
    const/4 v4, 0x0

    .line 655
    .local v4, "n":I
    iget v8, p0, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_0

    .line 656
    sget-object v8, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    const-string v9, "universal_newline"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jcodings/transcode/TranscoderDB;->getEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v0

    .line 657
    .local v0, "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .local v5, "n":I
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v8

    aput-object v8, v7, v4

    move v4, v5

    .line 660
    .end local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :cond_0
    iget v8, p0, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_1

    .line 661
    sget-object v8, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    const-string v9, "crlf_newline"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jcodings/transcode/TranscoderDB;->getEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v0

    .line 662
    .restart local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .restart local v5    # "n":I
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v8

    aput-object v8, v7, v4

    move v4, v5

    .line 665
    .end local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :cond_1
    iget v8, p0, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_2

    .line 666
    sget-object v8, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    const-string v9, "cr_newline"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jcodings/transcode/TranscoderDB;->getEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v0

    .line 667
    .restart local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v8

    if-eqz v8, :cond_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .restart local v5    # "n":I
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v8

    aput-object v8, v7, v4

    move v4, v5

    .line 670
    .end local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :cond_2
    iget v6, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    .line 671
    .local v6, "nTrans":I
    const/4 v2, 0x0

    .line 672
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_6

    .line 674
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 675
    aget-object v8, v7, v3

    iget-object v9, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v9, v9, v1

    iget-object v9, v9, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    iget-object v9, v9, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    if-ne v8, v9, :cond_4

    .line 678
    :cond_3
    if-ne v3, v4, :cond_5

    .line 679
    iget-object v8, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    iget-object v9, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v9, v9, v1

    aput-object v9, v8, v2

    .line 680
    add-int/lit8 v2, v2, 0x1

    .line 672
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 682
    :cond_5
    iget-object v8, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v8, v8, v1

    iget-object v8, v8, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    invoke-virtual {v8}, Lorg/jcodings/transcode/Transcoding;->close()V

    .line 683
    iget v8, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    goto :goto_2

    .line 687
    .end local v3    # "k":I
    :cond_6
    iget v8, p0, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit16 v8, v8, -0x3f01

    iput v8, p0, Lorg/jcodings/transcode/EConv;->flags:I

    .line 688
    return-void
.end method

.method private convertInternal([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;
    .locals 29
    .param p1, "in"    # [B
    .param p2, "inPtr"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outPtr"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "flags"    # I

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    invoke-virtual {v4}, Lorg/jcodings/transcode/EConv$LastError;->reset()V

    .line 285
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-nez v4, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget-object v4, v4, Lorg/jcodings/transcode/Buffer;->bytes:[B

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v4, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v5, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    if-eq v4, v5, :cond_1

    .line 287
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v4, p6, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v5, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v7, v7, Lorg/jcodings/transcode/Buffer;->dataStart:I

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_0

    .line 288
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v27, p6, v4

    .line 289
    .local v27, "len":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v5, Lorg/jcodings/transcode/Buffer;->dataStart:I

    move-object/from16 v0, p5

    iget v7, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-static {v4, v5, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    move/from16 v0, p6

    move-object/from16 v1, p5

    iput v0, v1, Lorg/jcodings/Ptr;->p:I

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    add-int v5, v5, v27

    iput v5, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    .line 292
    sget-object v4, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    .line 369
    .end local v27    # "len":I
    :goto_0
    return-object v4

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v4, v4, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v5, Lorg/jcodings/transcode/Buffer;->dataStart:I

    sub-int v27, v4, v5

    .line 295
    .restart local v27    # "len":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v5, Lorg/jcodings/transcode/Buffer;->dataStart:I

    move-object/from16 v0, p5

    iget v7, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-static {v4, v5, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    add-int v4, v4, v27

    move-object/from16 v0, p5

    iput v4, v0, Lorg/jcodings/Ptr;->p:I

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v7, v7, Lorg/jcodings/transcode/Buffer;->bufStart:I

    iput v7, v5, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    iput v7, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    .line 298
    const/high16 v4, 0x20000

    and-int v4, v4, p7

    if-eqz v4, :cond_1

    sget-object v4, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    goto :goto_0

    .line 301
    .end local v27    # "len":I
    :cond_1
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v4, p6, v4

    move-object/from16 v0, p2

    iget v5, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v5, p3, v5

    if-ge v4, v5, :cond_2

    .line 302
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v27, p6, v4

    .line 307
    .restart local v27    # "len":I
    :goto_1
    if-lez v27, :cond_3

    const/high16 v4, 0x20000

    and-int v4, v4, p7

    if-eqz v4, :cond_3

    .line 308
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p5

    iput v5, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/jcodings/Ptr;->p:I

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, p2

    iput v7, v0, Lorg/jcodings/Ptr;->p:I

    aget-byte v5, p1, v5

    aput-byte v5, p4, v4

    .line 309
    sget-object v4, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    goto/16 :goto_0

    .line 304
    .end local v27    # "len":I
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v27, p3, v4

    .restart local v27    # "len":I
    goto :goto_1

    .line 312
    :cond_3
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, p5

    iget v5, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, v27

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    add-int v4, v4, v27

    move-object/from16 v0, p5

    iput v4, v0, Lorg/jcodings/Ptr;->p:I

    .line 314
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    add-int v4, v4, v27

    move-object/from16 v0, p2

    iput v4, v0, Lorg/jcodings/Ptr;->p:I

    .line 316
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    move/from16 v0, p3

    if-eq v4, v0, :cond_4

    .line 317
    sget-object v28, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    .line 323
    .local v28, "res":Lorg/jcodings/transcode/EConvResult;
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    goto/16 :goto_0

    .line 318
    .end local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_4
    const/high16 v4, 0x10000

    and-int v4, v4, p7

    if-eqz v4, :cond_5

    .line 319
    sget-object v28, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    .restart local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    goto :goto_2

    .line 321
    .end local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_5
    sget-object v28, Lorg/jcodings/transcode/EConvResult;->Finished:Lorg/jcodings/transcode/EConvResult;

    .restart local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    goto :goto_2

    .line 326
    .end local v27    # "len":I
    .end local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_6
    const/16 v26, 0x0

    .line 327
    .local v26, "hasOutput":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v5, v5, -0x1

    aget-object v25, v4, v5

    .line 328
    .local v25, "elem":Lorg/jcodings/transcode/EConv$EConvElement;
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bytes:[B

    if-eqz v4, :cond_8

    .line 329
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    move/from16 v24, v0

    .line 330
    .local v24, "dataStart":I
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    move/from16 v23, v0

    .line 331
    .local v23, "dataEnd":I
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bytes:[B

    move-object/from16 v22, v0

    .line 332
    .local v22, "data":[B
    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 333
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    sub-int v4, p6, v4

    sub-int v5, v23, v24

    if-ge v4, v5, :cond_7

    .line 334
    move-object/from16 v0, p5

    iget v0, v0, Lorg/jcodings/Ptr;->p:I

    move/from16 p6, v0

    move/from16 v27, p6

    .line 335
    .restart local v27    # "len":I
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, p4

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    move/from16 v0, p6

    move-object/from16 v1, p5

    iput v0, v1, Lorg/jcodings/Ptr;->p:I

    .line 337
    move-object/from16 v0, v25

    iget v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    add-int v4, v4, v27

    move-object/from16 v0, v25

    iput v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    .line 338
    sget-object v4, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    goto/16 :goto_0

    .line 340
    .end local v27    # "len":I
    :cond_7
    sub-int v27, v23, v24

    .line 341
    .restart local v27    # "len":I
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, p4

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    move-object/from16 v0, p5

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    add-int v4, v4, v27

    move-object/from16 v0, p5

    iput v4, v0, Lorg/jcodings/Ptr;->p:I

    .line 343
    move-object/from16 v0, v25

    iget v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bufStart:I

    move-object/from16 v0, v25

    iput v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    move-object/from16 v0, v25

    iput v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    .line 344
    const/16 v26, 0x1

    .line 348
    .end local v22    # "data":[B
    .end local v23    # "dataEnd":I
    .end local v24    # "dataStart":I
    .end local v27    # "len":I
    :cond_8
    new-instance v12, Lorg/jcodings/Ptr;

    const/4 v4, 0x0

    invoke-direct {v12, v4}, Lorg/jcodings/Ptr;-><init>(I)V

    .line 349
    .local v12, "resultPosition":Lorg/jcodings/Ptr;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v4, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v5, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    if-eq v4, v5, :cond_9

    .line 350
    new-instance v6, Lorg/jcodings/Ptr;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v4, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    invoke-direct {v6, v4}, Lorg/jcodings/Ptr;-><init>(I)V

    .line 351
    .local v6, "inDataStartPtr":Lorg/jcodings/Ptr;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget-object v5, v4, Lorg/jcodings/transcode/Buffer;->bytes:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v7, v4, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    const v4, -0x20001

    and-int v4, v4, p7

    const/high16 v8, 0x10000

    or-int v11, v4, v8

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v12}, Lorg/jcodings/transcode/EConv;->transConv([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v28

    .line 352
    .restart local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    iget v5, v6, Lorg/jcodings/Ptr;->p:I

    iput v5, v4, Lorg/jcodings/transcode/Buffer;->dataStart:I

    .line 353
    invoke-virtual/range {v28 .. v28}, Lorg/jcodings/transcode/EConvResult;->isSourceBufferEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    goto/16 :goto_0

    .line 356
    .end local v6    # "inDataStartPtr":Lorg/jcodings/Ptr;
    .end local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_9
    if-eqz v26, :cond_b

    const/high16 v4, 0x20000

    and-int v4, v4, p7

    if-eqz v4, :cond_b

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jcodings/Ptr;->p:I

    move/from16 v0, p3

    if-eq v4, v0, :cond_b

    .line 357
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jcodings/Ptr;->p:I

    move/from16 p3, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move-object/from16 v21, v12

    .line 358
    invoke-direct/range {v13 .. v21}, Lorg/jcodings/transcode/EConv;->transConv([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v28

    .line 359
    .restart local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    invoke-virtual/range {v28 .. v28}, Lorg/jcodings/transcode/EConvResult;->isSourceBufferEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v28, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    .line 369
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Lorg/jcodings/transcode/EConv;->convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v4

    goto/16 :goto_0

    .line 360
    .end local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_b
    const/high16 v4, 0x20000

    and-int v4, v4, p7

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    :cond_c
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move-object/from16 v21, v12

    .line 361
    invoke-direct/range {v13 .. v21}, Lorg/jcodings/transcode/EConv;->transConv([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v28

    .restart local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    goto :goto_3

    .line 363
    .end local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_d
    const/high16 v4, 0x20000

    or-int p7, p7, v4

    :cond_e
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move-object/from16 v21, v12

    .line 365
    invoke-direct/range {v13 .. v21}, Lorg/jcodings/transcode/EConv;->transConv([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v28

    .line 366
    .restart local v28    # "res":Lorg/jcodings/transcode/EConvResult;
    invoke-virtual/range {v28 .. v28}, Lorg/jcodings/transcode/EConvResult;->isAfterOutput()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_3
.end method

.method private convertInternalResult(Lorg/jcodings/transcode/EConvResult;Lorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;
    .locals 3
    .param p1, "res"    # Lorg/jcodings/transcode/EConvResult;
    .param p2, "resultPosition"    # Lorg/jcodings/Ptr;

    .prologue
    .line 373
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iput-object p1, v1, Lorg/jcodings/transcode/EConv$LastError;->result:Lorg/jcodings/transcode/EConvResult;

    .line 374
    sget-object v1, Lorg/jcodings/transcode/EConv$1;->$SwitchMap$org$jcodings$transcode$EConvResult:[I

    invoke-virtual {p1}, Lorg/jcodings/transcode/EConvResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 387
    :goto_0
    return-object p1

    .line 378
    :pswitch_0
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    iget v2, p2, Lorg/jcodings/Ptr;->p:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    .line 379
    .local v0, "errorTranscoding":Lorg/jcodings/transcode/Transcoding;
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iput-object v0, v1, Lorg/jcodings/transcode/EConv$LastError;->errorTranscoding:Lorg/jcodings/transcode/Transcoding;

    .line 380
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v2, v0, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    iget-object v2, v2, Lorg/jcodings/transcode/Transcoder;->source:[B

    iput-object v2, v1, Lorg/jcodings/transcode/EConv$LastError;->source:[B

    .line 381
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v2, v0, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    iget-object v2, v2, Lorg/jcodings/transcode/Transcoder;->destination:[B

    iput-object v2, v1, Lorg/jcodings/transcode/EConv$LastError;->destination:[B

    .line 382
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v2, v0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iput-object v2, v1, Lorg/jcodings/transcode/EConv$LastError;->errorBytes:[B

    .line 383
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    const/4 v2, 0x0

    iput v2, v1, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    .line 384
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v2, v0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iput v2, v1, Lorg/jcodings/transcode/EConv$LastError;->errorBytesEnd:I

    .line 385
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v2, v0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    iput v2, v1, Lorg/jcodings/transcode/EConv$LastError;->readAgainLength:I

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static decorator([B[B)Z
    .locals 1
    .param p0, "source"    # [B
    .param p1, "destination"    # [B

    .prologue
    .line 110
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encodingToInsertOutput()[B
    .locals 3

    .prologue
    .line 462
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastTranscoding:Lorg/jcodings/transcode/Transcoding;

    .line 463
    .local v1, "transcoding":Lorg/jcodings/transcode/Transcoding;
    if-nez v1, :cond_0

    sget-object v2, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    .line 465
    :goto_0
    return-object v2

    .line 464
    :cond_0
    iget-object v0, v1, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    .line 465
    .local v0, "transcoder":Lorg/jcodings/transcode/Transcoder;
    iget-object v2, v0, Lorg/jcodings/transcode/Transcoder;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v2}, Lorg/jcodings/transcode/AsciiCompatibility;->isEncoder()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/jcodings/transcode/Transcoder;->source:[B

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/jcodings/transcode/Transcoder;->destination:[B

    goto :goto_0
.end method

.method private makeReplacement()I
    .locals 8

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 695
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->replacementString:[B

    if-eqz v4, :cond_0

    .line 727
    :goto_0
    return v5

    .line 697
    :cond_0
    invoke-direct {p0}, Lorg/jcodings/transcode/EConv;->encodingToInsertOutput()[B

    move-result-object v0

    .line 703
    .local v0, "insEnc":[B
    array-length v4, v0

    if-eqz v4, :cond_2

    .line 709
    const-string v4, "UTF-8"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v0, v4}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->caseInsensitiveEquals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 710
    const/4 v1, 0x3

    .line 711
    .local v1, "len":I
    const-string v4, "UTF-8"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 712
    .local v2, "replEnc":[B
    const/4 v4, 0x3

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 724
    .local v3, "replacement":[B
    :goto_1
    iput-object v3, p0, Lorg/jcodings/transcode/EConv;->replacementString:[B

    .line 725
    iput v1, p0, Lorg/jcodings/transcode/EConv;->replacementLength:I

    .line 726
    iput-object v2, p0, Lorg/jcodings/transcode/EConv;->replacementEncoding:[B

    goto :goto_0

    .line 714
    .end local v1    # "len":I
    .end local v2    # "replEnc":[B
    .end local v3    # "replacement":[B
    :cond_1
    const/4 v1, 0x1

    .line 715
    .restart local v1    # "len":I
    const-string v4, "US-ASCII"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 716
    .restart local v2    # "replEnc":[B
    new-array v3, v6, [B

    aput-byte v7, v3, v5

    .restart local v3    # "replacement":[B
    goto :goto_1

    .line 719
    .end local v1    # "len":I
    .end local v2    # "replEnc":[B
    .end local v3    # "replacement":[B
    :cond_2
    const/4 v1, 0x1

    .line 720
    .restart local v1    # "len":I
    sget-object v2, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    .line 721
    .restart local v2    # "replEnc":[B
    new-array v3, v6, [B

    aput-byte v7, v3, v5

    .restart local v3    # "replacement":[B
    goto :goto_1

    .line 712
    :array_0
    .array-data 1
        -0x11t
        -0x41t
        -0x43t
    .end array-data
.end method

.method private outputHexCharref()I
    .locals 14

    .prologue
    .line 425
    iget-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v0, v0, Lorg/jcodings/transcode/EConv$LastError;->source:[B

    const-string v1, "UTF-32BE"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->caseInsensitiveEquals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v10, v0, Lorg/jcodings/transcode/EConv$LastError;->errorBytes:[B

    .line 427
    .local v10, "utfBytes":[B
    iget-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v12, v0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    .line 428
    .local v12, "utfP":I
    iget-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v0, v0, Lorg/jcodings/transcode/EConv$LastError;->errorBytesEnd:I

    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v1, v1, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    sub-int v11, v0, v1

    .line 440
    .local v11, "utfLen":I
    :goto_0
    rem-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 457
    .end local v11    # "utfLen":I
    .end local v12    # "utfP":I
    :goto_1
    return v0

    .line 430
    .end local v10    # "utfBytes":[B
    :cond_0
    new-instance v6, Lorg/jcodings/Ptr;

    invoke-direct {v6}, Lorg/jcodings/Ptr;-><init>()V

    .line 431
    .local v6, "utfLenA":Lorg/jcodings/Ptr;
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 432
    .local v5, "utfBuf":[B
    iget-object v0, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v0, v0, Lorg/jcodings/transcode/EConv$LastError;->source:[B

    const-string v1, "UTF-32BE"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget-object v2, v2, Lorg/jcodings/transcode/EConv$LastError;->errorBytes:[B

    iget-object v3, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v3, v3, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v4, v4, Lorg/jcodings/transcode/EConv$LastError;->errorBytesEnd:I

    iget-object v13, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    iget v13, v13, Lorg/jcodings/transcode/EConv$LastError;->errorBytesP:I

    sub-int/2addr v4, v13

    invoke-static/range {v0 .. v6}, Lorg/jcodings/transcode/EConv;->allocateConvertedString([B[B[BII[BLorg/jcodings/Ptr;)[B

    move-result-object v10

    .line 435
    .restart local v10    # "utfBytes":[B
    if-nez v10, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 436
    :cond_1
    const/4 v12, 0x0

    .line 437
    .restart local v12    # "utfP":I
    iget v11, v6, Lorg/jcodings/Ptr;->p:I

    .restart local v11    # "utfLen":I
    goto :goto_0

    .line 442
    .end local v5    # "utfBuf":[B
    .end local v6    # "utfLenA":Lorg/jcodings/Ptr;
    :cond_2
    move v8, v12

    .line 443
    .local v8, "p":I
    :goto_2
    const/4 v0, 0x4

    if-gt v0, v11, :cond_4

    .line 444
    const/4 v9, 0x0

    .line 445
    .local v9, "u":I
    aget-byte v0, v10, v8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v9, v0

    .line 446
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, v10, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v9, v0

    .line 447
    add-int/lit8 v0, v8, 0x2

    aget-byte v0, v10, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v9, v0

    .line 448
    add-int/lit8 v0, v8, 0x3

    aget-byte v0, v10, v0

    add-int/2addr v9, v0

    .line 449
    const-string v0, "&#x%X;"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 451
    .local v7, "charrefbuf":[B
    array-length v0, v7

    const-string v1, "US-ASCII"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v7, v0, v1}, Lorg/jcodings/transcode/EConv;->insertOuput([BI[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    .line 453
    :cond_3
    add-int/lit8 v8, v8, 0x4

    .line 454
    add-int/lit8 v11, v11, -0x4

    .line 455
    goto :goto_2

    .line 457
    .end local v7    # "charrefbuf":[B
    .end local v9    # "u":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private transConv([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;
    .locals 24
    .param p1, "in"    # [B
    .param p2, "inPtr"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outPtr"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "flags"    # I
    .param p8, "resultPositionPtr"    # Lorg/jcodings/Ptr;

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    iput-object v2, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v11, v1, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_2

    .line 227
    sget-object v1, Lorg/jcodings/transcode/EConv$1;->$SwitchMap$org$jcodings$transcode$EConvResult:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    invoke-virtual {v2}, Lorg/jcodings/transcode/EConvResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 238
    new-instance v1, Lorg/jcodings/exception/InternalException;

    const-string v2, "unexpected transcode last result"

    invoke-direct {v1, v2}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :pswitch_0
    add-int/lit8 v10, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lorg/jcodings/transcode/EConv;->transConvNeedReport([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v23

    .line 249
    :cond_1
    :goto_1
    return-object v23

    .line 226
    :pswitch_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    if-ne v1, v2, :cond_3

    const/high16 v1, 0x20000

    and-int v1, v1, p7

    if-eqz v1, :cond_3

    .line 245
    sget-object v2, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    sget-object v3, Lorg/jcodings/Ptr;->NULL:Lorg/jcodings/Ptr;

    const/4 v4, 0x0

    const v1, -0x20001

    and-int v1, v1, p7

    const/high16 v5, 0x10000

    or-int v8, v1, v5

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/jcodings/transcode/EConv;->transConv([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;)Lorg/jcodings/transcode/EConvResult;

    move-result-object v23

    .line 246
    .local v23, "res":Lorg/jcodings/transcode/EConvResult;
    invoke-virtual/range {v23 .. v23}, Lorg/jcodings/transcode/EConvResult;->isSourceBufferEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v23, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    goto :goto_1

    .line 249
    .end local v23    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_3
    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    invoke-direct/range {v12 .. v22}, Lorg/jcodings/transcode/EConv;->transConvNeedReport([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v23

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transConvNeedReport([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;IILorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inPtr"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outPtr"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "flags"    # I
    .param p8, "resultPositionPtr"    # Lorg/jcodings/Ptr;
    .param p9, "sweepStart"    # I
    .param p10, "needReportIndex"    # I

    .prologue
    .line 255
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/jcodings/transcode/EConv;->transSweep([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;III)I

    move-result p10

    .line 256
    add-int/lit8 p9, p10, 0x1

    .line 257
    const/4 v1, -0x1

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_0

    .line 259
    :cond_1
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v10, v1, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_4

    .line 260
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    if-eq v1, v2, :cond_3

    .line 261
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v10

    iget-object v11, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    .line 262
    .local v11, "res":Lorg/jcodings/transcode/EConvResult;
    sget-object v1, Lorg/jcodings/transcode/EConv$1;->$SwitchMap$org$jcodings$transcode$EConvResult:[I

    invoke-virtual {v11}, Lorg/jcodings/transcode/EConvResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 270
    :goto_1
    if-eqz p8, :cond_2

    move-object/from16 v0, p8

    iput v10, v0, Lorg/jcodings/Ptr;->p:I

    .line 275
    .end local v11    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_2
    :goto_2
    return-object v11

    .line 267
    .restart local v11    # "res":Lorg/jcodings/transcode/EConvResult;
    :pswitch_0
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v10

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    iput-object v2, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    goto :goto_1

    .line 259
    .end local v11    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 274
    :cond_4
    if-eqz p8, :cond_5

    const/4 v1, -0x1

    move-object/from16 v0, p8

    iput v1, v0, Lorg/jcodings/Ptr;->p:I

    .line 275
    :cond_5
    sget-object v11, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    goto :goto_2

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transSweep([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;III)I
    .locals 23
    .param p1, "in"    # [B
    .param p2, "inPtr"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outPtr"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "flags"    # I
    .param p8, "start"    # I

    .prologue
    .line 142
    const/16 v19, 0x1

    .line 144
    .local v19, "try_":Z
    new-instance v5, Lorg/jcodings/Ptr;

    invoke-direct {v5}, Lorg/jcodings/Ptr;-><init>()V

    .line 145
    .local v5, "ipp":Lorg/jcodings/Ptr;
    new-instance v8, Lorg/jcodings/Ptr;

    invoke-direct {v8}, Lorg/jcodings/Ptr;-><init>()V

    .line 147
    .local v8, "opp":Lorg/jcodings/Ptr;
    :cond_0
    if-eqz v19, :cond_9

    .line 148
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-ge v11, v3, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v18, v3, v11

    .line 153
    .local v18, "te":Lorg/jcodings/transcode/EConv$EConvElement;
    if-nez v11, :cond_6

    .line 154
    move-object/from16 v0, p2

    iget v3, v0, Lorg/jcodings/Ptr;->p:I

    iput v3, v5, Lorg/jcodings/Ptr;->p:I

    .line 155
    move/from16 v6, p3

    .line 156
    .local v6, "is":I
    move-object/from16 v4, p1

    .line 164
    .local v4, "ibytes":[B
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v3, v3, -0x1

    if-ne v11, v3, :cond_7

    .line 165
    move-object/from16 v0, p5

    iget v3, v0, Lorg/jcodings/Ptr;->p:I

    iput v3, v8, Lorg/jcodings/Ptr;->p:I

    .line 166
    move/from16 v9, p6

    .line 167
    .local v9, "os":I
    move-object/from16 v7, p4

    .line 181
    .local v7, "obytes":[B
    :goto_2
    move/from16 v10, p7

    .line 182
    .local v10, "f":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jcodings/transcode/EConv;->numFinished:I

    if-eq v3, v11, :cond_1

    const/high16 v3, 0x10000

    or-int/2addr v10, v3

    .line 184
    :cond_1
    if-nez v11, :cond_2

    const/high16 v3, 0x20000

    and-int v3, v3, p7

    if-eqz v3, :cond_2

    .line 185
    const/16 p8, 0x1

    .line 186
    const v3, -0x20001

    and-int p7, p7, v3

    .line 189
    :cond_2
    if-eqz v11, :cond_3

    const v3, -0x20001

    and-int/2addr v10, v3

    .line 191
    :cond_3
    iget v12, v5, Lorg/jcodings/Ptr;->p:I

    .line 192
    .local v12, "iold":I
    iget v15, v8, Lorg/jcodings/Ptr;->p:I

    .line 194
    .local v15, "oold":I
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    invoke-virtual/range {v3 .. v10}, Lorg/jcodings/transcode/Transcoding;->convert([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v17

    .local v17, "res":Lorg/jcodings/transcode/EConvResult;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/jcodings/transcode/EConv$EConvElement;->lastResult:Lorg/jcodings/transcode/EConvResult;

    .line 196
    iget v3, v5, Lorg/jcodings/Ptr;->p:I

    if-ne v12, v3, :cond_4

    iget v3, v8, Lorg/jcodings/Ptr;->p:I

    if-eq v15, v3, :cond_5

    :cond_4
    const/16 v19, 0x1

    .line 198
    :cond_5
    sget-object v3, Lorg/jcodings/transcode/EConv$1;->$SwitchMap$org$jcodings$transcode$EConvResult:[I

    invoke-virtual/range {v17 .. v17}, Lorg/jcodings/transcode/EConvResult;->ordinal()I

    move-result v20

    aget v3, v3, v20

    packed-switch v3, :pswitch_data_0

    .line 148
    :goto_3
    :pswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 158
    .end local v4    # "ibytes":[B
    .end local v6    # "is":I
    .end local v7    # "obytes":[B
    .end local v9    # "os":I
    .end local v10    # "f":I
    .end local v12    # "iold":I
    .end local v15    # "oold":I
    .end local v17    # "res":Lorg/jcodings/transcode/EConvResult;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    add-int/lit8 v20, v11, -0x1

    aget-object v16, v3, v20

    .line 159
    .local v16, "previousTE":Lorg/jcodings/transcode/EConv$EConvElement;
    move-object/from16 v0, v16

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    iput v3, v5, Lorg/jcodings/Ptr;->p:I

    .line 160
    move-object/from16 v0, v16

    iget v6, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    .line 161
    .restart local v6    # "is":I
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bytes:[B

    .restart local v4    # "ibytes":[B
    goto :goto_1

    .line 169
    .end local v16    # "previousTE":Lorg/jcodings/transcode/EConv$EConvElement;
    :cond_7
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bufStart:I

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_8

    .line 170
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    move/from16 v20, v0

    sub-int v13, v3, v20

    .line 171
    .local v13, "len":I
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bufStart:I

    move/from16 v20, v0

    sub-int v14, v3, v20

    .line 172
    .local v14, "off":I
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bytes:[B

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bufStart:I

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v3, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bufStart:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataStart:I

    .line 174
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    sub-int/2addr v3, v14

    move-object/from16 v0, v18

    iput v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    .line 176
    .end local v13    # "len":I
    .end local v14    # "off":I
    :cond_8
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jcodings/transcode/EConv$EConvElement;->dataEnd:I

    iput v3, v8, Lorg/jcodings/Ptr;->p:I

    .line 177
    move-object/from16 v0, v18

    iget v9, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bufEnd:I

    .line 178
    .restart local v9    # "os":I
    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/jcodings/transcode/EConv$EConvElement;->bytes:[B

    .restart local v7    # "obytes":[B
    goto/16 :goto_2

    .line 210
    .restart local v10    # "f":I
    .restart local v12    # "iold":I
    .restart local v15    # "oold":I
    .restart local v17    # "res":Lorg/jcodings/transcode/EConvResult;
    :pswitch_1
    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jcodings/transcode/EConv;->numFinished:I

    goto/16 :goto_3

    .line 217
    .end local v4    # "ibytes":[B
    .end local v6    # "is":I
    .end local v7    # "obytes":[B
    .end local v9    # "os":I
    .end local v10    # "f":I
    .end local v11    # "i":I
    .end local v12    # "iold":I
    .end local v15    # "oold":I
    .end local v17    # "res":Lorg/jcodings/transcode/EConvResult;
    .end local v18    # "te":Lorg/jcodings/transcode/EConv$EConvElement;
    :cond_9
    const/4 v11, -0x1

    :pswitch_2
    return v11

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addConverter([B[BI)Z
    .locals 4
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "n"    # I

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-boolean v3, p0, Lorg/jcodings/transcode/EConv;->started:Z

    if-eqz v3, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v2

    .line 614
    :cond_1
    invoke-static {p1, p2}, Lorg/jcodings/transcode/TranscoderDB;->getEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v0

    .line 615
    .local v0, "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v1

    .line 617
    .local v1, "transcoder":Lorg/jcodings/transcode/Transcoder;
    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p0, v1, p3}, Lorg/jcodings/transcode/EConv;->addTranscoderAt(Lorg/jcodings/transcode/Transcoder;I)V

    .line 619
    const/4 v2, 0x1

    goto :goto_0
.end method

.method addTranscoderAt(Lorg/jcodings/transcode/Transcoder;I)V
    .locals 9
    .param p1, "transcoder"    # Lorg/jcodings/transcode/Transcoder;
    .param p2, "i"    # I

    .prologue
    const/4 v8, 0x0

    .line 115
    iget v4, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    iget-object v5, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 116
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lorg/jcodings/transcode/EConv$EConvElement;

    .line 117
    .local v2, "tmp":[Lorg/jcodings/transcode/EConv$EConvElement;
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    invoke-static {v4, v8, v2, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    array-length v6, v6

    sub-int/2addr v6, p2

    invoke-static {v4, p2, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iput-object v2, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    .line 124
    .end local v2    # "tmp":[Lorg/jcodings/transcode/EConv$EConvElement;
    :goto_0
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    new-instance v5, Lorg/jcodings/transcode/EConv$EConvElement;

    invoke-virtual {p1, v8}, Lorg/jcodings/transcode/Transcoder;->transcoding(I)Lorg/jcodings/transcode/Transcoding;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jcodings/transcode/EConv$EConvElement;-><init>(Lorg/jcodings/transcode/Transcoding;)V

    aput-object v5, v4, p2

    .line 125
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v4, v4, p2

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Lorg/jcodings/transcode/EConv$EConvElement;->allocate(I)V

    .line 126
    iget v4, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    .line 128
    iget-object v4, p1, Lorg/jcodings/transcode/Transcoder;->source:[B

    iget-object v5, p1, Lorg/jcodings/transcode/Transcoder;->destination:[B

    invoke-static {v4, v5}, Lorg/jcodings/transcode/EConv;->decorator([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    iget v4, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "j":I
    :goto_1
    if-gt p2, v0, :cond_0

    .line 130
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v4, v4, v0

    iget-object v1, v4, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    .line 131
    .local v1, "tc":Lorg/jcodings/transcode/Transcoding;
    iget-object v3, v1, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    .line 132
    .local v3, "tr":Lorg/jcodings/transcode/Transcoder;
    iget-object v4, v3, Lorg/jcodings/transcode/Transcoder;->source:[B

    iget-object v5, v3, Lorg/jcodings/transcode/Transcoder;->destination:[B

    invoke-static {v4, v5}, Lorg/jcodings/transcode/EConv;->decorator([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    iput-object v1, p0, Lorg/jcodings/transcode/EConv;->lastTranscoding:Lorg/jcodings/transcode/Transcoding;

    .line 138
    .end local v0    # "j":I
    .end local v1    # "tc":Lorg/jcodings/transcode/Transcoding;
    .end local v3    # "tr":Lorg/jcodings/transcode/Transcoder;
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    iget-object v5, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    add-int/lit8 v6, p2, 0x1

    iget-object v7, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    array-length v7, v7

    sub-int/2addr v7, p2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, p2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 129
    .restart local v0    # "j":I
    .restart local v1    # "tc":Lorg/jcodings/transcode/Transcoding;
    .restart local v3    # "tr":Lorg/jcodings/transcode/Transcoder;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method close()V
    .locals 2

    .prologue
    .line 593
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-ge v0, v1, :cond_0

    .line 594
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    invoke-virtual {v1}, Lorg/jcodings/transcode/Transcoding;->close()V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method public convert([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inPtr"    # Lorg/jcodings/Ptr;
    .param p3, "inStop"    # I
    .param p4, "out"    # [B
    .param p5, "outPtr"    # Lorg/jcodings/Ptr;
    .param p6, "outStop"    # I
    .param p7, "flags"    # I

    .prologue
    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jcodings/transcode/EConv;->started:Z

    .line 397
    :goto_0
    invoke-direct/range {p0 .. p7}, Lorg/jcodings/transcode/EConv;->convertInternal([BLorg/jcodings/Ptr;I[BLorg/jcodings/Ptr;II)Lorg/jcodings/transcode/EConvResult;

    move-result-object v0

    .line 398
    .local v0, "ret":Lorg/jcodings/transcode/EConvResult;
    invoke-virtual {v0}, Lorg/jcodings/transcode/EConvResult;->isInvalidByteSequence()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/jcodings/transcode/EConvResult;->isIncompleteInput()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    iget v1, p0, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    .line 405
    :cond_1
    invoke-virtual {v0}, Lorg/jcodings/transcode/EConvResult;->isUndefinedConversion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    iget v1, p0, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit16 v1, v1, 0xf0

    sparse-switch v1, :sswitch_data_0

    .line 415
    :cond_2
    return-object v0

    .line 401
    :pswitch_0
    invoke-virtual {p0}, Lorg/jcodings/transcode/EConv;->outputReplacementCharacter()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 408
    :sswitch_0
    invoke-virtual {p0}, Lorg/jcodings/transcode/EConv;->outputReplacementCharacter()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 411
    :sswitch_1
    invoke-direct {p0}, Lorg/jcodings/transcode/EConv;->outputHexCharref()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method decorateAt([BI)Z
    .locals 1
    .param p1, "decorator"    # [B
    .param p2, "n"    # I

    .prologue
    .line 624
    sget-object v0, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    invoke-virtual {p0, v0, p1, p2}, Lorg/jcodings/transcode/EConv;->addConverter([B[BI)Z

    move-result v0

    return v0
.end method

.method decorateAtFirst([B)Z
    .locals 4
    .param p1, "decorator"    # [B

    .prologue
    const/4 v3, 0x0

    .line 629
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lorg/jcodings/transcode/EConv;->decorateAt([BI)Z

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 630
    :cond_0
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    iget-object v0, v1, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    .line 632
    .local v0, "transcoder":Lorg/jcodings/transcode/Transcoder;
    iget-object v1, v0, Lorg/jcodings/transcode/Transcoder;->source:[B

    iget-object v2, v0, Lorg/jcodings/transcode/Transcoder;->destination:[B

    invoke-static {v1, v2}, Lorg/jcodings/transcode/EConv;->decorator([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/jcodings/transcode/Transcoder;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v1}, Lorg/jcodings/transcode/AsciiCompatibility;->isDecoder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/jcodings/transcode/EConv;->decorateAt([BI)Z

    move-result v1

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {p0, p1, v3}, Lorg/jcodings/transcode/EConv;->decorateAt([BI)Z

    move-result v1

    goto :goto_0
.end method

.method decorateAtLast([B)Z
    .locals 3
    .param p1, "decorator"    # [B

    .prologue
    .line 641
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/jcodings/transcode/EConv;->decorateAt([BI)Z

    move-result v1

    .line 648
    :goto_0
    return v1

    .line 642
    :cond_0
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    iget v2, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    iget-object v0, v1, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    .line 644
    .local v0, "transcoder":Lorg/jcodings/transcode/Transcoder;
    iget-object v1, v0, Lorg/jcodings/transcode/Transcoder;->source:[B

    iget-object v2, v0, Lorg/jcodings/transcode/Transcoder;->destination:[B

    invoke-static {v1, v2}, Lorg/jcodings/transcode/EConv;->decorator([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/jcodings/transcode/Transcoder;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v1}, Lorg/jcodings/transcode/AsciiCompatibility;->isDecoder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Lorg/jcodings/transcode/EConv;->decorateAt([BI)Z

    move-result v1

    goto :goto_0

    .line 648
    :cond_1
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    invoke-virtual {p0, p1, v1}, Lorg/jcodings/transcode/EConv;->decorateAt([BI)Z

    move-result v1

    goto :goto_0
.end method

.method insertOuput([BI[B)I
    .locals 18
    .param p1, "str"    # [B
    .param p2, "strLen"    # I
    .param p3, "strEncoding"    # [B

    .prologue
    .line 516
    invoke-direct/range {p0 .. p0}, Lorg/jcodings/transcode/EConv;->encodingToInsertOutput()[B

    move-result-object v2

    .line 517
    .local v2, "insertEncoding":[B
    const/16 v1, 0x1000

    new-array v6, v1, [B

    .line 519
    .local v6, "insertBuf":[B
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/jcodings/transcode/EConv;->started:Z

    .line 521
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 588
    :goto_0
    return v1

    .line 525
    :cond_0
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->caseInsensitiveEquals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    move-object/from16 v10, p1

    .line 527
    .local v10, "insertStr":[B
    move/from16 v9, p2

    .line 534
    .local v9, "insertLen":I
    :goto_1
    move v12, v9

    .line 536
    .local v12, "need":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    add-int/lit8 v11, v1, -0x1

    .line 541
    .local v11, "lastTranscodingIndex":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-nez v1, :cond_4

    .line 542
    const/4 v15, 0x0

    .line 543
    .local v15, "transcoding":Lorg/jcodings/transcode/Transcoding;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    .line 559
    .local v8, "buf":Lorg/jcodings/transcode/Buffer;
    :goto_2
    if-nez v8, :cond_8

    .line 560
    new-instance v8, Lorg/jcodings/transcode/Buffer;

    .end local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    invoke-direct {v8}, Lorg/jcodings/transcode/Buffer;-><init>()V

    .line 561
    .restart local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    invoke-virtual {v8, v12}, Lorg/jcodings/transcode/Buffer;->allocate(I)V

    .line 580
    :cond_1
    :goto_3
    const/4 v1, 0x0

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    invoke-static {v10, v1, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    add-int/2addr v1, v9

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    .line 582
    if-eqz v15, :cond_2

    iget-object v1, v15, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    iget-object v1, v1, Lorg/jcodings/transcode/Transcoder;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v1}, Lorg/jcodings/transcode/AsciiCompatibility;->isEncoder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    iget-object v1, v15, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iget v3, v15, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v4, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    iget v5, v15, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    invoke-static {v1, v3, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget v1, v15, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    .line 585
    const/4 v1, 0x0

    iput v1, v15, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    .line 588
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 529
    .end local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    .end local v9    # "insertLen":I
    .end local v10    # "insertStr":[B
    .end local v11    # "lastTranscodingIndex":I
    .end local v12    # "need":I
    .end local v15    # "transcoding":Lorg/jcodings/transcode/Transcoding;
    :cond_3
    new-instance v7, Lorg/jcodings/Ptr;

    invoke-direct {v7}, Lorg/jcodings/Ptr;-><init>()V

    .line 530
    .local v7, "insertLenP":Lorg/jcodings/Ptr;
    const/4 v4, 0x0

    move-object/from16 v1, p3

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jcodings/transcode/EConv;->allocateConvertedString([B[B[BII[BLorg/jcodings/Ptr;)[B

    move-result-object v10

    .line 531
    .restart local v10    # "insertStr":[B
    iget v9, v7, Lorg/jcodings/Ptr;->p:I

    .restart local v9    # "insertLen":I
    goto :goto_1

    .line 544
    .end local v7    # "insertLenP":Lorg/jcodings/Ptr;
    .restart local v11    # "lastTranscodingIndex":I
    .restart local v12    # "need":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    iget-object v1, v1, Lorg/jcodings/transcode/Transcoding;->transcoder:Lorg/jcodings/transcode/Transcoder;

    iget-object v1, v1, Lorg/jcodings/transcode/Transcoder;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v1}, Lorg/jcodings/transcode/AsciiCompatibility;->isEncoder()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v11

    iget-object v15, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    .line 546
    .restart local v15    # "transcoding":Lorg/jcodings/transcode/Transcoding;
    iget v1, v15, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    add-int/2addr v12, v1

    .line 547
    if-ge v12, v9, :cond_5

    const/4 v1, -0x1

    goto/16 :goto_0

    .line 549
    :cond_5
    if-nez v11, :cond_6

    .line 550
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jcodings/transcode/EConv;->inBuf:Lorg/jcodings/transcode/Buffer;

    .restart local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    goto :goto_2

    .line 552
    .end local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    add-int/lit8 v3, v11, -0x1

    aget-object v8, v1, v3

    .restart local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    goto :goto_2

    .line 555
    .end local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    .end local v15    # "transcoding":Lorg/jcodings/transcode/Transcoding;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v1, v1, v11

    iget-object v15, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    .line 556
    .restart local v15    # "transcoding":Lorg/jcodings/transcode/Transcoding;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v8, v1, v11

    .restart local v8    # "buf":Lorg/jcodings/transcode/Buffer;
    goto/16 :goto_2

    .line 562
    :cond_8
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->bufEnd:I

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    sub-int/2addr v1, v3

    if-le v12, v1, :cond_1

    .line 563
    iget-object v1, v8, Lorg/jcodings/transcode/Buffer;->bytes:[B

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->dataStart:I

    iget-object v4, v8, Lorg/jcodings/transcode/Buffer;->bytes:[B

    iget v5, v8, Lorg/jcodings/transcode/Buffer;->bufStart:I

    iget v0, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    move/from16 v16, v0

    iget v0, v8, Lorg/jcodings/transcode/Buffer;->dataStart:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->dataStart:I

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    iget v4, v8, Lorg/jcodings/transcode/Buffer;->dataStart:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    .line 565
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->bufStart:I

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->dataStart:I

    .line 567
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->bufEnd:I

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    sub-int/2addr v1, v3

    if-le v12, v1, :cond_1

    .line 568
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->bufStart:I

    sub-int/2addr v1, v3

    add-int v13, v1, v12

    .line 569
    .local v13, "s":I
    if-le v12, v13, :cond_9

    const/4 v1, -0x1

    goto/16 :goto_0

    .line 570
    :cond_9
    new-array v14, v13, [B

    .line 571
    .local v14, "tmp":[B
    iget-object v1, v8, Lorg/jcodings/transcode/Buffer;->bytes:[B

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->bufStart:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v14, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    iput-object v14, v8, Lorg/jcodings/transcode/Buffer;->bytes:[B

    .line 573
    const/4 v1, 0x0

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->dataStart:I

    .line 574
    iget v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    iget v3, v8, Lorg/jcodings/transcode/Buffer;->bufStart:I

    sub-int/2addr v1, v3

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->dataEnd:I

    .line 575
    const/4 v1, 0x0

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->bufStart:I

    .line 576
    const/4 v1, 0x0

    iput v1, v8, Lorg/jcodings/transcode/Buffer;->bufEnd:I

    goto/16 :goto_3
.end method

.method outputReplacementCharacter()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 758
    invoke-direct {p0}, Lorg/jcodings/transcode/EConv;->makeReplacement()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return v0

    .line 759
    :cond_1
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->replacementString:[B

    iget v2, p0, Lorg/jcodings/transcode/EConv;->replacementLength:I

    iget-object v3, p0, Lorg/jcodings/transcode/EConv;->replacementEncoding:[B

    invoke-virtual {p0, v1, v2, v3}, Lorg/jcodings/transcode/EConv;->insertOuput([BI[B)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 760
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putback([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "len"    # I

    .prologue
    .line 605
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v1, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    .line 607
    .local v0, "transcoding":Lorg/jcodings/transcode/Transcoding;
    iget-object v1, v0, Lorg/jcodings/transcode/Transcoding;->readBuf:[B

    iget v2, v0, Lorg/jcodings/transcode/Transcoding;->recognizedLength:I

    iget v3, v0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    iget v1, v0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    sub-int/2addr v1, p3

    iput v1, v0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    goto :goto_0
.end method

.method putbackable()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 600
    iget v1, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/jcodings/transcode/EConv$EConvElement;->transcoding:Lorg/jcodings/transcode/Transcoding;

    iget v0, v0, Lorg/jcodings/transcode/Transcoding;->readAgainLength:I

    goto :goto_0
.end method

.method setReplacement([BII[B)I
    .locals 11
    .param p1, "str"    # [B
    .param p2, "p"    # I
    .param p3, "len"    # I
    .param p4, "encname"    # [B

    .prologue
    const/4 v10, 0x0

    .line 732
    invoke-direct {p0}, Lorg/jcodings/transcode/EConv;->encodingToInsertOutput()[B

    move-result-object v1

    .line 735
    .local v1, "encname2":[B
    const/4 v8, 0x0

    .line 738
    .local v8, "p2":I
    invoke-static {p4, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->caseInsensitiveEquals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    new-array v9, p3, [B

    .line 740
    .local v9, "str2":[B
    invoke-static {p1, p2, v9, v10, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    move v7, p3

    .line 742
    .local v7, "len2":I
    move-object v1, p4

    .line 750
    :goto_0
    iput-object v9, p0, Lorg/jcodings/transcode/EConv;->replacementString:[B

    .line 751
    iput v7, p0, Lorg/jcodings/transcode/EConv;->replacementLength:I

    .line 752
    iput-object v1, p0, Lorg/jcodings/transcode/EConv;->replacementEncoding:[B

    move v0, v10

    .line 753
    .end local v7    # "len2":I
    :goto_1
    return v0

    .line 744
    .end local v9    # "str2":[B
    :cond_0
    new-instance v6, Lorg/jcodings/Ptr;

    invoke-direct {v6}, Lorg/jcodings/Ptr;-><init>()V

    .line 745
    .local v6, "len2p":Lorg/jcodings/Ptr;
    const/4 v5, 0x0

    move-object v0, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lorg/jcodings/transcode/EConv;->allocateConvertedString([B[B[BII[BLorg/jcodings/Ptr;)[B

    move-result-object v9

    .line 746
    .restart local v9    # "str2":[B
    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 747
    :cond_1
    iget v7, v6, Lorg/jcodings/Ptr;->p:I

    .restart local v7    # "len2":I
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->source:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->destination:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringFull()Ljava/lang/String;
    .locals 7

    .prologue
    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EConv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->source:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->destination:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jcodings/transcode/EConv;->started:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  replacement string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->replacementString:[B

    if-nez v2, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  replacement encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->replacementEncoding:[B

    if-nez v2, :cond_1

    const-string v2, "null"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    if-ge v0, v2, :cond_2

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jcodings/transcode/EConv;->elements:[Lorg/jcodings/transcode/EConv$EConvElement;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/jcodings/transcode/EConv$EConvElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 766
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->replacementString:[B

    const/4 v5, 0x0

    iget v6, p0, Lorg/jcodings/transcode/EConv;->replacementLength:I

    invoke-direct {v2, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_0

    .line 767
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/jcodings/transcode/EConv;->replacementEncoding:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 773
    .restart local v0    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  lastTranscoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jcodings/transcode/EConv;->lastTranscoding:Lorg/jcodings/transcode/Transcoding;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  last error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    if-nez v2, :cond_3

    const-string v2, "null"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    return-object v1

    .line 775
    :cond_3
    iget-object v2, p0, Lorg/jcodings/transcode/EConv;->lastError:Lorg/jcodings/transcode/EConv$LastError;

    invoke-virtual {v2}, Lorg/jcodings/transcode/EConv$LastError;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
