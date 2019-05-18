.class Lorg/joni/ByteCodeMachine;
.super Lorg/joni/StackMachine;
.source "ByteCodeMachine.java"


# static fields
.field private static final INTERRUPT_CHECK_EVERY:I = 0x7530


# instance fields
.field private bestLen:I

.field private cfbuf:[B

.field private cfbuf2:[B

.field private final code:[I

.field interruptCheckCounter:I

.field private ip:I

.field private range:I

.field private s:I

.field private sbegin:I

.field private sprev:I

.field private sstart:I

.field protected stkp:I


# direct methods
.method constructor <init>(Lorg/joni/Regex;[BII)V
    .locals 1
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joni/StackMachine;-><init>(Lorg/joni/Regex;[BII)V

    .line 41
    iput v0, p0, Lorg/joni/ByteCodeMachine;->interruptCheckCounter:I

    .line 44
    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 56
    iget-object v0, p1, Lorg/joni/Regex;->code:[I

    iput-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    .line 57
    return-void
.end method

.method private backref(I)V
    .locals 11
    .param p1, "mem"    # I

    .prologue
    .line 1234
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->numMem:I

    if-gt p1, v6, :cond_0

    invoke-direct {p0, p1}, Lorg/joni/ByteCodeMachine;->backrefInvalid(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1252
    :cond_1
    :goto_0
    return-void

    .line 1236
    :cond_2
    invoke-direct {p0, p1}, Lorg/joni/ByteCodeMachine;->backrefStart(I)I

    move-result v4

    .line 1237
    .local v4, "pstart":I
    invoke-direct {p0, p1}, Lorg/joni/ByteCodeMachine;->backrefEnd(I)I

    move-result v3

    .line 1239
    .local v3, "pend":I
    sub-int v1, v3, v4

    .line 1240
    .local v1, "n":I
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v6, v1

    iget v7, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v6, v7, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1241
    :cond_3
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v6, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    :cond_4
    move v2, v1

    .end local v1    # "n":I
    .local v2, "n":I
    move v5, v4

    .line 1244
    .end local v4    # "pstart":I
    .local v5, "pstart":I
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-lez v2, :cond_5

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pstart":I
    .restart local v4    # "pstart":I
    aget-byte v6, v6, v5

    iget-object v7, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v8, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v7, v7, v8

    if-eq v6, v7, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1249
    .end local v4    # "pstart":I
    .restart local v5    # "pstart":I
    :cond_5
    iget v6, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v6, v7, :cond_1

    .line 1250
    :goto_1
    iget v6, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget-object v7, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v9, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v10, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v7, v8, v9, v10}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v0

    .local v0, "len":I
    add-int/2addr v6, v0

    iget v7, p0, Lorg/joni/ByteCodeMachine;->s:I

    if-ge v6, v7, :cond_1

    iget v6, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private backrefEnd(I)I
    .locals 3
    .param p1, "mem"    # I

    .prologue
    .line 1228
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->btMemEnd:I

    invoke-static {v0, p1}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private backrefInvalid(I)Z
    .locals 3
    .param p1, "mem"    # I

    .prologue
    const/4 v2, -0x1

    .line 1220
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private backrefMatchAtNestedLevel(ZIIII)Z
    .locals 14
    .param p1, "ignoreCase"    # Z
    .param p2, "caseFoldFlag"    # I
    .param p3, "nest"    # I
    .param p4, "memNum"    # I
    .param p5, "memp"    # I

    .prologue
    .line 1365
    const/4 v13, -0x1

    .line 1366
    .local v13, "pend":I
    const/4 v10, 0x0

    .line 1367
    .local v10, "level":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->stk:I

    add-int/lit8 v9, v2, -0x1

    .line 1369
    .local v9, "k":I
    :goto_0
    if-ltz v9, :cond_8

    .line 1370
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v8, v2, v9

    .line 1372
    .local v8, "e":Lorg/joni/StackEntry;
    iget v2, v8, Lorg/joni/StackEntry;->type:I

    const/16 v3, 0x800

    if-ne v2, v3, :cond_1

    .line 1373
    add-int/lit8 v10, v10, -0x1

    .line 1405
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 1406
    goto :goto_0

    .line 1374
    :cond_1
    iget v2, v8, Lorg/joni/StackEntry;->type:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_2

    .line 1375
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1376
    :cond_2
    move/from16 v0, p3

    if-ne v10, v0, :cond_0

    .line 1377
    iget v2, v8, Lorg/joni/StackEntry;->type:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7

    .line 1378
    invoke-virtual {v8}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v2

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v2, v0, v1}, Lorg/joni/ByteCodeMachine;->memIsInMemp(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    invoke-virtual {v8}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v4

    .line 1380
    .local v4, "pstart":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_0

    .line 1381
    sub-int v2, v13, v4

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    .line 1407
    .end local v4    # "pstart":I
    .end local v8    # "e":Lorg/joni/StackEntry;
    :goto_2
    return v2

    .line 1382
    .restart local v4    # "pstart":I
    .restart local v8    # "e":Lorg/joni/StackEntry;
    :cond_3
    move v11, v4

    .line 1384
    .local v11, "p":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->value:I

    .line 1385
    if-eqz p1, :cond_4

    .line 1386
    sub-int v6, v13, v4

    iget v7, p0, Lorg/joni/ByteCodeMachine;->end:I

    move-object v2, p0

    move/from16 v3, p2

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lorg/joni/ByteCodeMachine;->stringCmpIC(IILorg/jcodings/IntHolder;II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1387
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v12, v11

    .line 1390
    .end local v11    # "p":I
    .local v12, "p":I
    if-ge v12, v13, :cond_5

    .line 1391
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "p":I
    .restart local v11    # "p":I
    aget-byte v2, v2, v12

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v5, p0, Lorg/joni/ByteCodeMachine;->value:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->value:I

    aget-byte v3, v3, v5

    if-eq v2, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    .end local v11    # "p":I
    .restart local v12    # "p":I
    :cond_5
    move v11, v12

    .line 1394
    .end local v12    # "p":I
    .restart local v11    # "p":I
    :cond_6
    iget v2, p0, Lorg/joni/ByteCodeMachine;->value:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1396
    const/4 v2, 0x1

    goto :goto_2

    .line 1399
    .end local v4    # "pstart":I
    .end local v11    # "p":I
    :cond_7
    iget v2, v8, Lorg/joni/StackEntry;->type:I

    const v3, 0x8200

    if-ne v2, v3, :cond_0

    .line 1400
    invoke-virtual {v8}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v2

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v2, v0, v1}, Lorg/joni/ByteCodeMachine;->memIsInMemp(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1401
    invoke-virtual {v8}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v13

    goto/16 :goto_1

    .line 1407
    .end local v8    # "e":Lorg/joni/StackEntry;
    :cond_8
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private backrefStart(I)I
    .locals 3
    .param p1, "mem"    # I

    .prologue
    .line 1224
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->btMemStart:I

    invoke-static {v0, p1}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private checkCaptureHistory(Lorg/joni/Region;)V
    .locals 4
    .param p1, "region"    # Lorg/joni/Region;

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p1, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Lorg/joni/CaptureTreeNode;

    invoke-direct {v0}, Lorg/joni/CaptureTreeNode;-><init>()V

    iput-object v0, p1, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    .line 101
    .local v0, "node":Lorg/joni/CaptureTreeNode;
    :goto_0
    iput v3, v0, Lorg/joni/CaptureTreeNode;->group:I

    .line 102
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/joni/CaptureTreeNode;->beg:I

    .line 103
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/joni/CaptureTreeNode;->end:I

    .line 105
    iput v3, p0, Lorg/joni/ByteCodeMachine;->stkp:I

    .line 106
    iget-object v1, p1, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    invoke-direct {p0, v1}, Lorg/joni/ByteCodeMachine;->makeCaptureHistoryTree(Lorg/joni/CaptureTreeNode;)Z

    .line 107
    return-void

    .line 96
    .end local v0    # "node":Lorg/joni/CaptureTreeNode;
    :cond_0
    iget-object v0, p1, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    .line 97
    .restart local v0    # "node":Lorg/joni/CaptureTreeNode;
    invoke-virtual {v0}, Lorg/joni/CaptureTreeNode;->clear()V

    goto :goto_0
.end method

.method private debugMatchBegin()V
    .locals 4

    .prologue
    .line 149
    sget-object v0, Lorg/joni/Config;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match_at: str: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sprev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lorg/joni/Config;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ByteCodeMachine;->end:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private debugMatchLoop()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method private endBestLength()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->options:I

    invoke-static {v1}, Lorg/joni/Option;->isFindCondition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->options:I

    invoke-static {v1}, Lorg/joni/Option;->isFindNotEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    if-ne v1, v2, :cond_0

    .line 415
    const/4 v1, -0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->bestLen:I

    .line 416
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 423
    :goto_0
    return v0

    .line 418
    :cond_0
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->options:I

    invoke-static {v1}, Lorg/joni/Option;->isFindLongest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v1, v2, :cond_1

    .line 419
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finish()I
    .locals 1

    .prologue
    .line 1754
    iget v0, p0, Lorg/joni/ByteCodeMachine;->bestLen:I

    return v0
.end method

.method private isInBitSet()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 706
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 707
    .local v0, "c":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    sget v4, Lorg/joni/BitSet;->ROOM_SHIFT:I

    ushr-int v4, v0, v4

    add-int/2addr v3, v4

    aget v2, v2, v3

    shl-int v3, v1, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInClassMB()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v5, v6

    .line 727
    .local v3, "tlen":I
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v5, v6, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v4

    .line 728
    :cond_1
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v7, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v8, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v5, v6, v7, v8}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    .line 729
    .local v1, "mbLen":I
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v5, v1

    iget v6, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-gt v5, v6, :cond_0

    .line 730
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 731
    .local v2, "ss":I
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 732
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v7, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {v5, v6, v2, v7}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    .line 733
    .local v0, "c":I
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    invoke-static {v5, v6, v0}, Lorg/jcodings/CodeRange;->isInCodeRange([III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 735
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isNotInClassMB()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 776
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v6, v7

    .line 777
    .local v3, "tlen":I
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v7, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v8, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v9, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v6, v7, v8, v9}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    .line 779
    .local v1, "mbLen":I
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v6, v1

    iget v7, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v6, v7, :cond_2

    .line 780
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v6, v7, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v4

    .line 781
    :cond_1
    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 782
    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    move v4, v5

    .line 783
    goto :goto_0

    .line 786
    :cond_2
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 787
    .local v2, "ss":I
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 788
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v7, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v8, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {v6, v7, v2, v8}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    .line 790
    .local v0, "c":I
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    invoke-static {v6, v7, v0}, Lorg/jcodings/CodeRange;->isInCodeRange([III)Z

    move-result v6

    if-nez v6, :cond_0

    .line 791
    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    move v4, v5

    .line 792
    goto :goto_0
.end method

.method private makeCaptureHistoryTree(Lorg/joni/CaptureTreeNode;)Z
    .locals 7
    .param p1, "node"    # Lorg/joni/CaptureTreeNode;

    .prologue
    const/4 v4, 0x1

    .line 62
    iget v2, p0, Lorg/joni/ByteCodeMachine;->stkp:I

    .line 65
    .local v2, "k":I
    :cond_0
    :goto_0
    iget v5, p0, Lorg/joni/ByteCodeMachine;->stk:I

    if-ge v2, v5, :cond_1

    .line 66
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v1, v5, v2

    .line 67
    .local v1, "e":Lorg/joni/StackEntry;
    iget v5, v1, Lorg/joni/StackEntry;->type:I

    const/16 v6, 0x100

    if-ne v5, v6, :cond_3

    .line 68
    invoke-virtual {v1}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    .line 69
    .local v3, "n":I
    const/16 v5, 0x1f

    if-gt v3, v5, :cond_0

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->captureHistory:I

    invoke-static {v5, v3}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    new-instance v0, Lorg/joni/CaptureTreeNode;

    invoke-direct {v0}, Lorg/joni/CaptureTreeNode;-><init>()V

    .line 71
    .local v0, "child":Lorg/joni/CaptureTreeNode;
    iput v3, v0, Lorg/joni/CaptureTreeNode;->group:I

    .line 72
    invoke-virtual {v1}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v5

    iget v6, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/joni/CaptureTreeNode;->beg:I

    .line 73
    invoke-virtual {p1, v0}, Lorg/joni/CaptureTreeNode;->addChild(Lorg/joni/CaptureTreeNode;)V

    .line 74
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/joni/ByteCodeMachine;->stkp:I

    .line 75
    invoke-direct {p0, v0}, Lorg/joni/ByteCodeMachine;->makeCaptureHistoryTree(Lorg/joni/CaptureTreeNode;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    .end local v0    # "child":Lorg/joni/CaptureTreeNode;
    .end local v1    # "e":Lorg/joni/StackEntry;
    .end local v3    # "n":I
    :cond_1
    :goto_1
    return v4

    .line 77
    .restart local v0    # "child":Lorg/joni/CaptureTreeNode;
    .restart local v1    # "e":Lorg/joni/StackEntry;
    .restart local v3    # "n":I
    :cond_2
    iget v2, p0, Lorg/joni/ByteCodeMachine;->stkp:I

    .line 78
    invoke-virtual {v1}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v5

    iget v6, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/joni/CaptureTreeNode;->end:I

    goto :goto_0

    .line 80
    .end local v0    # "child":Lorg/joni/CaptureTreeNode;
    .end local v3    # "n":I
    :cond_3
    iget v5, v1, Lorg/joni/StackEntry;->type:I

    const v6, 0x8200

    if-ne v5, v6, :cond_0

    .line 81
    invoke-virtual {v1}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v5

    iget v6, p1, Lorg/joni/CaptureTreeNode;->group:I

    if-ne v5, v6, :cond_0

    .line 82
    invoke-virtual {v1}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v4

    iget v5, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v4, v5

    iput v4, p1, Lorg/joni/CaptureTreeNode;->end:I

    .line 83
    iput v2, p0, Lorg/joni/ByteCodeMachine;->stkp:I

    .line 84
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private memIsInMemp(III)Z
    .locals 4
    .param p1, "mem"    # I
    .param p2, "num"    # I
    .param p3, "memp"    # I

    .prologue
    .line 1355
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p3

    .end local p3    # "memp":I
    .local v2, "memp":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1356
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->code:[I

    add-int/lit8 p3, v2, 0x1

    .end local v2    # "memp":I
    .restart local p3    # "memp":I
    aget v1, v3, v2

    .line 1357
    .local v1, "m":I
    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    .line 1359
    .end local v1    # "m":I
    :goto_1
    return v3

    .line 1355
    .restart local v1    # "m":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v2, p3

    .end local p3    # "memp":I
    .restart local v2    # "memp":I
    goto :goto_0

    .line 1359
    .end local v1    # "m":I
    :cond_1
    const/4 v3, 0x0

    move p3, v2

    .end local v2    # "memp":I
    .restart local p3    # "memp":I
    goto :goto_1
.end method

.method private nullCheckFound()V
    .locals 3

    .prologue
    .line 1444
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1456
    :pswitch_0
    new-instance v0, Lorg/joni/exception/InternalException;

    const-string v1, "unexpected bytecode (bug)"

    invoke-direct {v0, v1}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :pswitch_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1458
    :goto_0
    return-void

    .line 1453
    :pswitch_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    goto :goto_0

    .line 1444
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private opAnyChar()V
    .locals 5

    .prologue
    .line 836
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 842
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v0

    .line 838
    .local v0, "n":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v1, v2, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 839
    :cond_1
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 840
    :cond_2
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 841
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opAnyCharML()V
    .locals 5

    .prologue
    .line 852
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 857
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v0

    .line 854
    .local v0, "n":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v1, v2, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 855
    :cond_1
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 856
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opAnyCharMLSb()V
    .locals 2

    .prologue
    .line 860
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 862
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opAnyCharMLStar()V
    .locals 5

    .prologue
    .line 890
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 891
    .local v0, "bytes":[B
    :goto_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v2, v3, :cond_1

    .line 892
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 893
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v2, v0, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    .line 894
    .local v1, "n":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v2, v3, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 899
    .end local v1    # "n":I
    :goto_1
    return-void

    .line 895
    .restart local v1    # "n":I
    :cond_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 896
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 898
    .end local v1    # "n":I
    :cond_1
    iget v2, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opAnyCharMLStarPeekNext()V
    .locals 6

    .prologue
    .line 941
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v3, v4

    int-to-byte v1, v3

    .line 942
    .local v1, "c":B
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 944
    .local v0, "bytes":[B
    :goto_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v3, v4, :cond_2

    .line 945
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v3, v0, v3

    if-ne v1, v3, :cond_0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 946
    :cond_0
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v3, v0, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .line 947
    .local v2, "n":I
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v3, v4, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 953
    .end local v2    # "n":I
    :goto_1
    return-void

    .line 948
    .restart local v2    # "n":I
    :cond_1
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 949
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 951
    .end local v2    # "n":I
    :cond_2
    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 952
    iget v3, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opAnyCharMLStarPeekNextSb()V
    .locals 5

    .prologue
    .line 956
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v2, v2, v3

    int-to-byte v1, v2

    .line 957
    .local v1, "c":B
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 959
    .local v0, "bytes":[B
    :goto_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v2, v3, :cond_1

    .line 960
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v2, v0, v2

    if-ne v1, v2, :cond_0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 961
    :cond_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 962
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 964
    :cond_1
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 965
    iget v2, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 966
    return-void
.end method

.method private opAnyCharMLStarSb()V
    .locals 3

    .prologue
    .line 902
    :goto_0
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    .line 903
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 904
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 905
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 907
    :cond_0
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 908
    return-void
.end method

.method private opAnyCharSb()V
    .locals 2

    .prologue
    .line 845
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 849
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 847
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 848
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opAnyCharStar()V
    .locals 5

    .prologue
    .line 866
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 867
    .local v0, "bytes":[B
    :goto_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v2, v3, :cond_2

    .line 868
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 869
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v2, v0, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    .line 870
    .local v1, "n":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v2, v3, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 876
    .end local v1    # "n":I
    :goto_1
    return-void

    .line 871
    .restart local v1    # "n":I
    :cond_0
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v2, v0, v3, v4}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_1

    .line 872
    :cond_1
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 873
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 875
    .end local v1    # "n":I
    :cond_2
    iget v2, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opAnyCharStarPeekNext()V
    .locals 6

    .prologue
    .line 911
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v3, v4

    int-to-byte v1, v3

    .line 912
    .local v1, "c":B
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 914
    .local v0, "bytes":[B
    :goto_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v3, v4, :cond_3

    .line 915
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v3, v0, v3

    if-ne v1, v3, :cond_0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 916
    :cond_0
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v3, v0, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .line 917
    .local v2, "n":I
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v3, v0, v4, v5}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 923
    .end local v2    # "n":I
    :goto_1
    return-void

    .line 918
    .restart local v2    # "n":I
    :cond_2
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 919
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 921
    .end local v2    # "n":I
    :cond_3
    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 922
    iget v3, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opAnyCharStarPeekNextSb()V
    .locals 6

    .prologue
    .line 926
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v3, v4

    int-to-byte v2, v3

    .line 927
    .local v2, "c":B
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 929
    .local v1, "bytes":[B
    :goto_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v3, v4, :cond_2

    .line 930
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v0, v1, v3

    .line 931
    .local v0, "b":B
    if-ne v2, v0, :cond_0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 932
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 938
    .end local v0    # "b":B
    :goto_1
    return-void

    .line 933
    .restart local v0    # "b":B
    :cond_1
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 934
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 936
    .end local v0    # "b":B
    :cond_2
    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 937
    iget v3, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opAnyCharStarSb()V
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 880
    .local v0, "bytes":[B
    :goto_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v1, v2, :cond_1

    .line 881
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 882
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v0, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 887
    :goto_1
    return-void

    .line 883
    :cond_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 884
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 886
    :cond_1
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opBackRef1()V
    .locals 1

    .prologue
    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joni/ByteCodeMachine;->backref(I)V

    .line 1256
    return-void
.end method

.method private opBackRef2()V
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/joni/ByteCodeMachine;->backref(I)V

    .line 1260
    return-void
.end method

.method private opBackRefAtLevel()V
    .locals 9

    .prologue
    .line 1411
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v6, v0, v1

    .line 1412
    .local v6, "ic":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v0, v1

    .line 1413
    .local v3, "level":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v4, v0, v1

    .line 1415
    .local v4, "tlen":I
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1416
    if-eqz v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v2, v0, Lorg/joni/Regex;->caseFoldFlag:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/joni/ByteCodeMachine;->backrefMatchAtNestedLevel(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
    :goto_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v8, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v5, v8}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    .local v7, "len":I
    add-int/2addr v0, v7

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1

    .line 1416
    .end local v7    # "len":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1419
    .restart local v7    # "len":I
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1423
    .end local v7    # "len":I
    :goto_2
    return-void

    .line 1421
    :cond_2
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_2
.end method

.method private opBackRefMulti()V
    .locals 17

    .prologue
    .line 1289
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/joni/ByteCodeMachine;->code:[I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v11, v12, v13

    .line 1292
    .local v11, "tlen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_6

    .line 1293
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/joni/ByteCodeMachine;->code:[I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v12, v13

    .line 1294
    .local v3, "mem":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/ByteCodeMachine;->backrefInvalid(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/ByteCodeMachine;->backrefStart(I)I

    move-result v7

    .line 1297
    .local v7, "pstart":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/ByteCodeMachine;->backrefEnd(I)I

    move-result v6

    .line 1299
    .local v6, "pend":I
    sub-int v4, v6, v7

    .line 1300
    .local v4, "n":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v12, v13, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1322
    .end local v3    # "mem":I
    .end local v4    # "n":I
    .end local v6    # "pend":I
    .end local v7    # "pstart":I
    :cond_2
    :goto_1
    return-void

    .line 1302
    .restart local v3    # "mem":I
    .restart local v4    # "n":I
    .restart local v6    # "pend":I
    .restart local v7    # "pstart":I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/joni/ByteCodeMachine;->s:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1303
    move-object/from16 v0, p0

    iget v9, v0, Lorg/joni/ByteCodeMachine;->s:I

    .local v9, "swork":I
    move v10, v9

    .end local v9    # "swork":I
    .local v10, "swork":I
    move v5, v4

    .end local v4    # "n":I
    .local v5, "n":I
    move v8, v7

    .line 1305
    .end local v7    # "pstart":I
    .local v8, "pstart":I
    :goto_2
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "n":I
    .restart local v4    # "n":I
    if-lez v5, :cond_4

    .line 1306
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/joni/ByteCodeMachine;->bytes:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pstart":I
    .restart local v7    # "pstart":I
    aget-byte v12, v12, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/joni/ByteCodeMachine;->bytes:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "swork":I
    .restart local v9    # "swork":I
    aget-byte v13, v13, v10

    if-ne v12, v13, :cond_0

    move v10, v9

    .end local v9    # "swork":I
    .restart local v10    # "swork":I
    move v5, v4

    .end local v4    # "n":I
    .restart local v5    # "n":I
    move v8, v7

    .end local v7    # "pstart":I
    .restart local v8    # "pstart":I
    goto :goto_2

    .line 1309
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :cond_4
    move-object/from16 v0, p0

    iput v10, v0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1314
    move-object/from16 v0, p0

    iget v12, v0, Lorg/joni/ByteCodeMachine;->sprev:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v12, v13, :cond_5

    .line 1315
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/joni/ByteCodeMachine;->sprev:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/joni/ByteCodeMachine;->bytes:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/joni/ByteCodeMachine;->sprev:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/ByteCodeMachine;->end:I

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .local v2, "len":I
    add-int/2addr v12, v2

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/ByteCodeMachine;->s:I

    if-ge v12, v13, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lorg/joni/ByteCodeMachine;->sprev:I

    add-int/2addr v12, v2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_3

    .line 1318
    .end local v2    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lorg/joni/ByteCodeMachine;->ip:I

    sub-int v13, v11, v1

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1321
    .end local v3    # "mem":I
    .end local v4    # "n":I
    .end local v6    # "pend":I
    .end local v8    # "pstart":I
    .end local v10    # "swork":I
    :cond_6
    if-ne v1, v11, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_1
.end method

.method private opBackRefMultiIC()V
    .locals 12

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v10, v0, v1

    .line 1328
    .local v10, "tlen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_5

    .line 1329
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v8, v0, v1

    .line 1330
    .local v8, "mem":I
    invoke-direct {p0, v8}, Lorg/joni/ByteCodeMachine;->backrefInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1332
    :cond_1
    invoke-direct {p0, v8}, Lorg/joni/ByteCodeMachine;->backrefStart(I)I

    move-result v2

    .line 1333
    .local v2, "pstart":I
    invoke-direct {p0, v8}, Lorg/joni/ByteCodeMachine;->backrefEnd(I)I

    move-result v9

    .line 1335
    .local v9, "pend":I
    sub-int v4, v9, v2

    .line 1336
    .local v4, "n":I
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v0, v4

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1352
    .end local v2    # "pstart":I
    .end local v4    # "n":I
    .end local v8    # "mem":I
    .end local v9    # "pend":I
    :cond_2
    :goto_1
    return-void

    .line 1338
    .restart local v2    # "pstart":I
    .restart local v4    # "n":I
    .restart local v8    # "mem":I
    .restart local v9    # "pend":I
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1340
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    .line 1341
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v0, Lorg/joni/Regex;->caseFoldFlag:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    move-object v0, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/joni/ByteCodeMachine;->stringCmpIC(IILorg/jcodings/IntHolder;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1346
    :goto_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v11, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v3, v5, v11}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    .local v7, "len":I
    add-int/2addr v0, v7

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_2

    .line 1348
    :cond_4
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    sub-int v1, v10, v6

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1351
    .end local v2    # "pstart":I
    .end local v4    # "n":I
    .end local v7    # "len":I
    .end local v8    # "mem":I
    .end local v9    # "pend":I
    :cond_5
    if-ne v6, v10, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_1
.end method

.method private opBackRefN()V
    .locals 3

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/joni/ByteCodeMachine;->backref(I)V

    .line 1264
    return-void
.end method

.method private opBackRefNIC()V
    .locals 10

    .prologue
    .line 1267
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v7, v0, v1

    .line 1270
    .local v7, "mem":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->numMem:I

    if-gt v7, v0, :cond_0

    invoke-direct {p0, v7}, Lorg/joni/ByteCodeMachine;->backrefInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1286
    :cond_1
    :goto_0
    return-void

    .line 1272
    :cond_2
    invoke-direct {p0, v7}, Lorg/joni/ByteCodeMachine;->backrefStart(I)I

    move-result v2

    .line 1273
    .local v2, "pstart":I
    invoke-direct {p0, v7}, Lorg/joni/ByteCodeMachine;->backrefEnd(I)I

    move-result v8

    .line 1275
    .local v8, "pend":I
    sub-int v4, v8, v2

    .line 1276
    .local v4, "n":I
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v0, v4

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1277
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1279
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    .line 1280
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v0, Lorg/joni/Regex;->caseFoldFlag:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    move-object v0, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/joni/ByteCodeMachine;->stringCmpIC(IILorg/jcodings/IntHolder;II)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1281
    :cond_4
    iget v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1285
    :goto_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v9, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v3, v5, v9}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v6

    .local v6, "len":I
    add-int/2addr v0, v6

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opBeginBuf()V
    .locals 2

    .prologue
    .line 1119
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1120
    :cond_0
    return-void
.end method

.method private opBeginLine()V
    .locals 4

    .prologue
    .line 1127
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ne v0, v1, :cond_1

    .line 1128
    iget v0, p0, Lorg/joni/ByteCodeMachine;->msaOptions:I

    invoke-static {v0}, Lorg/joni/Option;->isNotBol(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_0

    .line 1133
    :cond_2
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opBeginPosition()V
    .locals 2

    .prologue
    .line 1175
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->msaStart:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1176
    :cond_0
    return-void
.end method

.method private opCClass()V
    .locals 5

    .prologue
    .line 711
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInBitSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 716
    :goto_0
    return-void

    .line 712
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 713
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 714
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/joni/ByteCodeMachine;->end:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 715
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassMB()V
    .locals 4

    .prologue
    .line 740
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcHead([BII)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInClassMB()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 742
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassMBNot()V
    .locals 5

    .prologue
    .line 796
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 806
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isMbcHead([BII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 799
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 800
    .local v0, "tlen":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 801
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0

    .line 804
    .end local v0    # "tlen":I
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isNotInClassMB()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 805
    :cond_2
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassMIX()V
    .locals 5

    .prologue
    .line 746
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 758
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isMbcHead([BII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 749
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInClassMB()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 751
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInBitSet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 752
    :cond_2
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 753
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 754
    .local v0, "tlen":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 755
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 757
    .end local v0    # "tlen":I
    :cond_3
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassMIXNot()V
    .locals 5

    .prologue
    .line 809
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 821
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isMbcHead([BII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 812
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isNotInClassMB()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 814
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInBitSet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 815
    :cond_2
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 816
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 817
    .local v0, "tlen":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 818
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 820
    .end local v0    # "tlen":I
    :cond_3
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassNode()V
    .locals 8

    .prologue
    .line 824
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v4, v5, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 833
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v4, v4, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v5, v5, v6

    aget-object v1, v4, v5

    check-cast v1, Lorg/joni/ast/CClassNode;

    .line 826
    .local v1, "cc":Lorg/joni/ast/CClassNode;
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v4, v5, v6, v7}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .line 827
    .local v2, "mbLen":I
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 828
    .local v3, "ss":I
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 829
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v4, v5, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {v4, v5, v3, v6}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    .line 831
    .local v0, "c":I
    invoke-virtual {v1, v2, v0}, Lorg/joni/ast/CClassNode;->isCodeInCCLength(II)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 832
    :cond_2
    iget v4, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassNot()V
    .locals 5

    .prologue
    .line 761
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInBitSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 766
    :goto_0
    return-void

    .line 762
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 763
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 764
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/joni/ByteCodeMachine;->end:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 765
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassNotSb()V
    .locals 2

    .prologue
    .line 769
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInBitSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 773
    :goto_0
    return-void

    .line 770
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 771
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 772
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCClassSb()V
    .locals 2

    .prologue
    .line 719
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->isInBitSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 721
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 722
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opCall()V
    .locals 4

    .prologue
    .line 1723
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1724
    .local v0, "addr":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    invoke-virtual {p0, v1}, Lorg/joni/ByteCodeMachine;->pushCallFrame(I)V

    .line 1725
    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1726
    return-void
.end method

.method private opEnd()Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 343
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    sub-int v1, v3, v4

    .line 345
    .local v1, "n":I
    iget v3, p0, Lorg/joni/ByteCodeMachine;->bestLen:I

    if-le v1, v3, :cond_5

    .line 358
    iput v1, p0, Lorg/joni/ByteCodeMachine;->bestLen:I

    .line 359
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->msaRegion:Lorg/joni/Region;

    .line 360
    .local v2, "region":Lorg/joni/Region;
    if-eqz v2, :cond_3

    .line 362
    iget-object v3, v2, Lorg/joni/Region;->beg:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/joni/ByteCodeMachine;->msaBegin:I

    aput v4, v3, v6

    .line 363
    iget-object v3, v2, Lorg/joni/Region;->end:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/joni/ByteCodeMachine;->msaEnd:I

    aput v4, v3, v6

    .line 364
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->numMem:I

    if-gt v0, v3, :cond_4

    .line 366
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v4, v0

    aget v3, v3, v4

    if-eq v3, v7, :cond_2

    .line 367
    iget-object v4, v2, Lorg/joni/Region;->beg:[I

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->btMemStart:I

    invoke-static {v3, v0}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    aget-object v3, v3, v5

    .line 368
    invoke-virtual {v3}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v3

    iget v5, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v3, v5

    :goto_1
    aput v3, v4, v0

    .line 372
    iget-object v4, v2, Lorg/joni/Region;->end:[I

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->btMemEnd:I

    invoke-static {v3, v0}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    aget-object v3, v3, v5

    .line 373
    invoke-virtual {v3}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v3

    :goto_2
    aput v3, v4, v0

    .line 364
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v5, v0

    aget v3, v3, v5

    iget v5, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v3, v5

    goto :goto_1

    .line 373
    :cond_1
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v5, v0

    aget v3, v3, v5

    iget v5, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v3, v5

    goto :goto_2

    .line 377
    :cond_2
    iget-object v3, v2, Lorg/joni/Region;->beg:[I

    iget-object v4, v2, Lorg/joni/Region;->end:[I

    aput v7, v4, v0

    aput v7, v3, v0

    goto :goto_3

    .line 386
    .end local v0    # "i":I
    :cond_3
    iget v3, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/joni/ByteCodeMachine;->msaBegin:I

    .line 387
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->str:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/joni/ByteCodeMachine;->msaEnd:I

    .line 409
    :cond_4
    :goto_4
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->endBestLength()Z

    move-result v3

    return v3

    .line 390
    .end local v2    # "region":Lorg/joni/Region;
    :cond_5
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->msaRegion:Lorg/joni/Region;

    .line 400
    .restart local v2    # "region":Lorg/joni/Region;
    if-eqz v2, :cond_6

    .line 401
    invoke-virtual {v2}, Lorg/joni/Region;->clear()V

    goto :goto_4

    .line 403
    :cond_6
    iput v6, p0, Lorg/joni/ByteCodeMachine;->msaEnd:I

    iput v6, p0, Lorg/joni/ByteCodeMachine;->msaBegin:I

    goto :goto_4
.end method

.method private opEndBuf()V
    .locals 2

    .prologue
    .line 1123
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1124
    :cond_0
    return-void
.end method

.method private opEndLine()V
    .locals 4

    .prologue
    .line 1137
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_2

    .line 1139
    iget v0, p0, Lorg/joni/ByteCodeMachine;->str:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    :cond_0
    iget v0, p0, Lorg/joni/ByteCodeMachine;->msaOptions:I

    invoke-static {v0}, Lorg/joni/Option;->isNotEol(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1151
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opExact1()V
    .locals 4

    .prologue
    .line 427
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 430
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExact1IC()V
    .locals 9

    .prologue
    .line 617
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 633
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->cfbuf()[B

    move-result-object v5

    .line 621
    .local v5, "lowbuf":[B
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    .line 622
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->caseFoldFlag:I

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v6

    .line 623
    .local v6, "len":I
    iget v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 625
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 627
    :cond_1
    const/4 v8, 0x0

    .local v8, "q":I
    move v7, v6

    .line 628
    .end local v6    # "len":I
    .local v7, "len":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "len":I
    .restart local v6    # "len":I
    if-lez v7, :cond_3

    .line 629
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    aget-byte v1, v5, v8

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 630
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "len":I
    .restart local v7    # "len":I
    goto :goto_1

    .line 632
    .end local v7    # "len":I
    .restart local v6    # "len":I
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExact1ICSb()V
    .locals 5

    .prologue
    .line 636
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 638
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExact2()V
    .locals 3

    .prologue
    .line 434
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 436
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 437
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 438
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 439
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0
.end method

.method private opExact3()V
    .locals 3

    .prologue
    .line 443
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 451
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 445
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 446
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 447
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 448
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 449
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 450
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0
.end method

.method private opExact4()V
    .locals 3

    .prologue
    .line 454
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 464
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 456
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 457
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 458
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 459
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 460
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 461
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 462
    :cond_4
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 463
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0
.end method

.method private opExact5()V
    .locals 3

    .prologue
    .line 467
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 479
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 469
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 470
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 471
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 472
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 473
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 474
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 475
    :cond_4
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 476
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto/16 :goto_0

    .line 477
    :cond_5
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 478
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto/16 :goto_0
.end method

.method private opExactMB2N()V
    .locals 8

    .prologue
    .line 537
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v2, v4, v5

    .line 538
    .local v2, "tlen":I
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 559
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v4, v4, Lorg/joni/Regex;->templates:[[B

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v5, v5, v6

    aget-object v0, v4, v5

    .line 542
    .local v0, "bs":[B
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v4, v5

    .local v1, "ps":I
    move v3, v2

    .line 544
    .end local v2    # "tlen":I
    .local v3, "tlen":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tlen":I
    .restart local v2    # "tlen":I
    if-lez v3, :cond_3

    .line 545
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 546
    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 547
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 548
    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    move v3, v2

    .end local v2    # "tlen":I
    .restart local v3    # "tlen":I
    goto :goto_1

    .line 558
    .end local v3    # "tlen":I
    .restart local v2    # "tlen":I
    :cond_3
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExactMB2N1()V
    .locals 3

    .prologue
    .line 498
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 504
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 500
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 501
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 502
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 503
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExactMB2N2()V
    .locals 3

    .prologue
    .line 507
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 517
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 509
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 510
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 511
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 512
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 513
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 514
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 515
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 516
    :cond_4
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0
.end method

.method private opExactMB2N3()V
    .locals 3

    .prologue
    .line 520
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 534
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 522
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 523
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 524
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 525
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 526
    :cond_3
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 527
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 528
    :cond_4
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 529
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 530
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto/16 :goto_0

    .line 531
    :cond_5
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 532
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_6

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto/16 :goto_0

    .line 533
    :cond_6
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto/16 :goto_0
.end method

.method private opExactMB3N()V
    .locals 8

    .prologue
    .line 562
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v2, v4, v5

    .line 563
    .local v2, "tlen":I
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 589
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v4, v4, Lorg/joni/Regex;->templates:[[B

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v5, v5, v6

    aget-object v0, v4, v5

    .line 567
    .local v0, "bs":[B
    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v4, v5

    .local v1, "ps":I
    move v3, v2

    .line 569
    .end local v2    # "tlen":I
    .local v3, "tlen":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tlen":I
    .restart local v2    # "tlen":I
    if-lez v3, :cond_4

    .line 570
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 571
    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 572
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 573
    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 574
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 575
    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    move v3, v2

    .end local v2    # "tlen":I
    .restart local v3    # "tlen":I
    goto :goto_1

    .line 588
    .end local v3    # "tlen":I
    .restart local v2    # "tlen":I
    :cond_4
    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExactMBN()V
    .locals 9

    .prologue
    .line 592
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v2, v5, v6

    .line 593
    .local v2, "tlen":I
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v5, v6

    .line 595
    .local v3, "tlen2":I
    mul-int/2addr v3, v2

    .line 596
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v5, v3

    iget v6, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v5, v6, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 614
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v5, v5, Lorg/joni/Regex;->templates:[[B

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v6, v6, v7

    aget-object v0, v5, v6

    .line 600
    .local v0, "bs":[B
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v5, v6

    .local v1, "ps":I
    move v4, v3

    .line 602
    .end local v3    # "tlen2":I
    .local v4, "tlen2":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "tlen2":I
    .restart local v3    # "tlen2":I
    if-lez v4, :cond_2

    .line 603
    aget-byte v5, v0, v1

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v7, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 604
    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    move v4, v3

    .end local v3    # "tlen2":I
    .restart local v4    # "tlen2":I
    goto :goto_1

    .line 613
    .end local v4    # "tlen2":I
    .restart local v3    # "tlen2":I
    :cond_2
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opExactN()V
    .locals 9

    .prologue
    .line 482
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v5, v6

    .line 483
    .local v3, "tlen":I
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v5, v3

    iget v6, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v5, v6, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 495
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v5, v5, Lorg/joni/Regex;->templates:[[B

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v6, v6, v7

    aget-object v0, v5, v6

    .line 487
    .local v0, "bs":[B
    iget-object v5, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v6, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v5, v6

    .local v1, "ps":I
    move v2, v1

    .end local v1    # "ps":I
    .local v2, "ps":I
    move v4, v3

    .line 489
    .end local v3    # "tlen":I
    .local v4, "tlen":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "tlen":I
    .restart local v3    # "tlen":I
    if-lez v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ps":I
    .restart local v1    # "ps":I
    aget-byte v5, v0, v2

    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v7, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 494
    .end local v1    # "ps":I
    .restart local v2    # "ps":I
    :cond_1
    iget v5, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0

    .end local v2    # "ps":I
    .restart local v1    # "ps":I
    :cond_2
    move v2, v1

    .end local v1    # "ps":I
    .restart local v2    # "ps":I
    move v4, v3

    .end local v3    # "tlen":I
    .restart local v4    # "tlen":I
    goto :goto_1
.end method

.method private opExactNIC()V
    .locals 13

    .prologue
    .line 642
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v12, v0, v1

    .line 643
    .local v12, "tlen":I
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->cfbuf()[B

    move-result-object v5

    .line 646
    .local v5, "lowbuf":[B
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v0, v0, Lorg/joni/Regex;->templates:[[B

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v1, v2

    aget-object v6, v0, v1

    .line 647
    .local v6, "bs":[B
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v10, v0, v1

    .line 648
    .local v10, "ps":I
    add-int v7, v10, v12

    .line 650
    .local v7, "endp":I
    :cond_0
    if-ge v10, v7, :cond_1

    .line 651
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 652
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 654
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    .line 655
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->caseFoldFlag:I

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v8

    .line 656
    .local v8, "len":I
    iget v0, p0, Lorg/joni/ByteCodeMachine;->value:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 658
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 659
    :cond_3
    const/4 v11, 0x0

    .local v11, "q":I
    move v9, v8

    .line 660
    .end local v8    # "len":I
    .local v9, "len":I
    :goto_1
    add-int/lit8 v8, v9, -0x1

    .end local v9    # "len":I
    .restart local v8    # "len":I
    if-lez v9, :cond_0

    .line 661
    aget-byte v0, v6, v10

    aget-byte v1, v5, v11

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 662
    :cond_4
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    move v9, v8

    .end local v8    # "len":I
    .restart local v9    # "len":I
    goto :goto_1
.end method

.method private opExactNICSb()V
    .locals 10

    .prologue
    .line 688
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v3, v6, v7

    .line 689
    .local v3, "tlen":I
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v6, v3

    iget v7, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v6, v7, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 703
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v6, v6, Lorg/joni/Regex;->templates:[[B

    iget-object v7, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v8, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v7, v7, v8

    aget-object v0, v6, v7

    .line 693
    .local v0, "bs":[B
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v7, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v6, v7

    .line 694
    .local v1, "ps":I
    iget-object v6, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v5

    .local v5, "toLowerTable":[B
    move v2, v1

    .end local v1    # "ps":I
    .local v2, "ps":I
    move v4, v3

    .line 696
    .end local v3    # "tlen":I
    .local v4, "tlen":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "tlen":I
    .restart local v3    # "tlen":I
    if-lez v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ps":I
    .restart local v1    # "ps":I
    aget-byte v6, v0, v2

    iget-object v7, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v8, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v5, v7

    if-eq v6, v7, :cond_2

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 702
    .end local v1    # "ps":I
    .restart local v2    # "ps":I
    :cond_1
    iget v6, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0

    .end local v2    # "ps":I
    .restart local v1    # "ps":I
    :cond_2
    move v2, v1

    .end local v1    # "ps":I
    .restart local v2    # "ps":I
    move v4, v3

    .end local v3    # "tlen":I
    .restart local v4    # "tlen":I
    goto :goto_1
.end method

.method private opFail()V
    .locals 2

    .prologue
    .line 1734
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    if-nez v1, :cond_0

    .line 1735
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->codeLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1751
    :goto_0
    return-void

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->pop()Lorg/joni/StackEntry;

    move-result-object v0

    .line 1741
    .local v0, "e":Lorg/joni/StackEntry;
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStatePCode()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1742
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStatePStr()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1743
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStatePStrPrev()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opFailLookBehindNot()V
    .locals 0

    .prologue
    .line 1718
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->popTilLookBehindNot()V

    .line 1719
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1720
    return-void
.end method

.method private opFailPos()V
    .locals 0

    .prologue
    .line 1675
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->popTilPosNot()V

    .line 1676
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1677
    return-void
.end method

.method private opJump()V
    .locals 3

    .prologue
    .line 1512
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1513
    return-void
.end method

.method private opLookBehind()V
    .locals 6

    .prologue
    .line 1688
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v5, v0, v1

    .line 1689
    .local v5, "tlen":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->stepBack([BIIII)I

    move-result v0

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1690
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1692
    :goto_0
    return-void

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v0

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opLookBehindSb()V
    .locals 4

    .prologue
    .line 1695
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1696
    .local v0, "tlen":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1697
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1699
    :goto_0
    return-void

    .line 1698
    :cond_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private opMemoryEnd()V
    .locals 4

    .prologue
    .line 1194
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1195
    .local v0, "mem":I
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aput v3, v1, v2

    .line 1196
    return-void
.end method

.method private opMemoryEndPush()V
    .locals 4

    .prologue
    .line 1189
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1190
    .local v0, "mem":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->pushMemEnd(II)V

    .line 1191
    return-void
.end method

.method private opMemoryEndPushRec()V
    .locals 5

    .prologue
    .line 1199
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1200
    .local v0, "mem":I
    invoke-virtual {p0, v0}, Lorg/joni/ByteCodeMachine;->getMemStart(I)I

    move-result v1

    .line 1201
    .local v1, "stkp":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v0, v2}, Lorg/joni/ByteCodeMachine;->pushMemEnd(II)V

    .line 1202
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v3, v0

    aput v1, v2, v3

    .line 1203
    return-void
.end method

.method private opMemoryEndRec()V
    .locals 5

    .prologue
    .line 1206
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1207
    .local v0, "mem":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->memEndStk:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    aput v4, v2, v3

    .line 1208
    invoke-virtual {p0, v0}, Lorg/joni/ByteCodeMachine;->getMemStart(I)I

    move-result v1

    .line 1210
    .local v1, "stkp":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->btMemStart:I

    invoke-static {v2, v0}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v3, v0

    aput v1, v2, v3

    .line 1216
    :goto_0
    invoke-virtual {p0, v0}, Lorg/joni/ByteCodeMachine;->pushMemEndMark(I)V

    .line 1217
    return-void

    .line 1213
    :cond_0
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method private opMemoryStart()V
    .locals 4

    .prologue
    .line 1184
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1185
    .local v0, "mem":I
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->memStartStk:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aput v3, v1, v2

    .line 1186
    return-void
.end method

.method private opMemoryStartPush()V
    .locals 4

    .prologue
    .line 1179
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1180
    .local v0, "mem":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->pushMemStart(II)V

    .line 1181
    return-void
.end method

.method private opNotWord()V
    .locals 5

    .prologue
    .line 1039
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1042
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1041
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opNotWordBound()V
    .locals 5

    .prologue
    .line 1071
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ne v0, v1, :cond_1

    .line 1072
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_2

    .line 1074
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1076
    :cond_2
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opNotWordBoundSb()V
    .locals 4

    .prologue
    .line 1081
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ne v0, v1, :cond_1

    .line 1082
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_2

    .line 1084
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1086
    :cond_2
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opNotWordSb()V
    .locals 3

    .prologue
    .line 1045
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1047
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opNullCheckEnd()V
    .locals 5

    .prologue
    .line 1461
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1462
    .local v1, "mem":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v1, v2}, Lorg/joni/ByteCodeMachine;->nullCheck(II)I

    move-result v0

    .line 1464
    .local v0, "isNull":I
    if-eqz v0, :cond_0

    .line 1469
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->nullCheckFound()V

    .line 1471
    :cond_0
    return-void
.end method

.method private opNullCheckEndMemST()V
    .locals 5

    .prologue
    .line 1475
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1476
    .local v1, "mem":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v1, v2}, Lorg/joni/ByteCodeMachine;->nullCheckMemSt(II)I

    move-result v0

    .line 1478
    .local v0, "isNull":I
    if-eqz v0, :cond_0

    .line 1483
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->nullCheckFound()V

    goto :goto_0
.end method

.method private opNullCheckEndMemSTPush()V
    .locals 5

    .prologue
    .line 1490
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1494
    .local v1, "mem":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v1, v2}, Lorg/joni/ByteCodeMachine;->nullCheckMemStRec(II)I

    move-result v0

    .line 1499
    .local v0, "isNull":I
    if-eqz v0, :cond_1

    .line 1504
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1509
    :goto_0
    return-void

    .line 1505
    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->nullCheckFound()V

    goto :goto_0

    .line 1507
    :cond_1
    invoke-virtual {p0, v1}, Lorg/joni/ByteCodeMachine;->pushNullCheckEnd(I)V

    goto :goto_0
.end method

.method private opNullCheckStart()V
    .locals 4

    .prologue
    .line 1437
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1438
    .local v0, "mem":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->pushNullCheckStart(II)V

    .line 1439
    return-void
.end method

.method private opPop()V
    .locals 0

    .prologue
    .line 1548
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->popOne()V

    .line 1549
    return-void
.end method

.method private opPopPos()V
    .locals 3

    .prologue
    .line 1664
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->posEnd()I

    move-result v2

    aget-object v0, v1, v2

    .line 1665
    .local v0, "e":Lorg/joni/StackEntry;
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStatePStr()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1666
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStatePStrPrev()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1667
    return-void
.end method

.method private opPopStopBT()V
    .locals 0

    .prologue
    .line 1684
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->stopBtEnd()V

    .line 1685
    return-void
.end method

.method private opPush()V
    .locals 4

    .prologue
    .line 1516
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1517
    .local v0, "addr":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1518
    return-void
.end method

.method private opPushIfPeekNext()V
    .locals 4

    .prologue
    .line 1563
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1565
    .local v0, "addr":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v1, v2

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    .line 1566
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1567
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1571
    :goto_0
    return-void

    .line 1570
    :cond_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    goto :goto_0
.end method

.method private opPushLookBehindNot()V
    .locals 8

    .prologue
    .line 1702
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v6, v0, v1

    .line 1703
    .local v6, "addr":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v5, v0, v1

    .line 1704
    .local v5, "tlen":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->stepBack([BIIII)I

    move-result v7

    .line 1705
    .local v7, "q":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 1708
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1715
    :goto_0
    return-void

    .line 1711
    :cond_0
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v0, v6

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/joni/ByteCodeMachine;->pushLookBehindNot(III)V

    .line 1712
    iput v7, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1713
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->str:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v0

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opPushOrJumpExact1()V
    .locals 4

    .prologue
    .line 1552
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1554
    .local v0, "addr":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v1, v2

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    .line 1555
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1556
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1560
    :goto_0
    return-void

    .line 1559
    :cond_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    goto :goto_0
.end method

.method private opPushPos()V
    .locals 2

    .prologue
    .line 1660
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->pushPos(II)V

    .line 1661
    return-void
.end method

.method private opPushPosNot()V
    .locals 4

    .prologue
    .line 1670
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1671
    .local v0, "addr":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushPosNot(III)V

    .line 1672
    return-void
.end method

.method private opPushStopBT()V
    .locals 0

    .prologue
    .line 1680
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->pushStopBT()V

    .line 1681
    return-void
.end method

.method private opRepeat()V
    .locals 5

    .prologue
    .line 1574
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1575
    .local v1, "mem":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1578
    .local v0, "addr":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->stk:I

    aput v3, v2, v1

    .line 1579
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    invoke-virtual {p0, v1, v2}, Lorg/joni/ByteCodeMachine;->pushRepeat(II)V

    .line 1581
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->repeatRangeLo:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    .line 1582
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1584
    :cond_0
    return-void
.end method

.method private opRepeatInc()V
    .locals 5

    .prologue
    .line 1617
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1618
    .local v0, "mem":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    aget v1, v2, v0

    .line 1619
    .local v1, "si":I
    invoke-direct {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->repeatInc(II)V

    .line 1620
    return-void
.end method

.method private opRepeatIncNG()V
    .locals 5

    .prologue
    .line 1648
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1649
    .local v0, "mem":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    aget v1, v2, v0

    .line 1650
    .local v1, "si":I
    invoke-direct {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->repeatIncNG(II)V

    .line 1651
    return-void
.end method

.method private opRepeatIncNGSG()V
    .locals 5

    .prologue
    .line 1654
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1655
    .local v0, "mem":I
    invoke-virtual {p0, v0}, Lorg/joni/ByteCodeMachine;->getRepeat(I)I

    move-result v1

    .line 1656
    .local v1, "si":I
    invoke-direct {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->repeatIncNG(II)V

    .line 1657
    return-void
.end method

.method private opRepeatIncSG()V
    .locals 5

    .prologue
    .line 1623
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1624
    .local v0, "mem":I
    invoke-virtual {p0, v0}, Lorg/joni/ByteCodeMachine;->getRepeat(I)I

    move-result v1

    .line 1625
    .local v1, "si":I
    invoke-direct {p0, v0, v1}, Lorg/joni/ByteCodeMachine;->repeatInc(II)V

    .line 1626
    return-void
.end method

.method private opRepeatNG()V
    .locals 5

    .prologue
    .line 1587
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1588
    .local v1, "mem":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1591
    .local v0, "addr":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->repeatStk:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->stk:I

    aput v3, v2, v1

    .line 1592
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    invoke-virtual {p0, v1, v2}, Lorg/joni/ByteCodeMachine;->pushRepeat(II)V

    .line 1594
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->repeatRangeLo:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    .line 1595
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1596
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1598
    :cond_0
    return-void
.end method

.method private opReturn()V
    .locals 1

    .prologue
    .line 1729
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->sreturn()I

    move-result v0

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1730
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->pushReturn()V

    .line 1731
    return-void
.end method

.method private opSemiEndBuf()V
    .locals 5

    .prologue
    .line 1154
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_2

    .line 1156
    iget v0, p0, Lorg/joni/ByteCodeMachine;->str:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    iget v0, p0, Lorg/joni/ByteCodeMachine;->msaOptions:I

    invoke-static {v0}, Lorg/joni/Option;->isNotEol(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1172
    :cond_1
    :goto_0
    return-void

    .line 1164
    :cond_2
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-eq v0, v1, :cond_1

    .line 1171
    :cond_3
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opSetOption()V
    .locals 0

    .prologue
    .line 1434
    return-void
.end method

.method private opSetOptionPush()V
    .locals 3

    .prologue
    .line 1428
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1429
    iget v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1430
    return-void
.end method

.method private opStateCheck()V
    .locals 4

    .prologue
    .line 1542
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1543
    .local v0, "mem":I
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v1, v0}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1545
    :goto_0
    return-void

    .line 1544
    :cond_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v1, v0}, Lorg/joni/ByteCodeMachine;->pushStateCheck(II)V

    goto :goto_0
.end method

.method private opStateCheckAnyCharMLStar()V
    .locals 6

    .prologue
    .line 1000
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v3, v4

    .line 1002
    .local v1, "mem":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 1003
    .local v0, "bytes":[B
    :goto_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v3, v4, :cond_2

    .line 1004
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v3, v1}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1012
    :goto_1
    return-void

    .line 1005
    :cond_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v3, v4, v5, v1}, Lorg/joni/ByteCodeMachine;->pushAltWithStateCheck(IIII)V

    .line 1006
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v3, v0, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .line 1007
    .local v2, "n":I
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-le v3, v4, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_1

    .line 1008
    :cond_1
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1009
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 1011
    .end local v2    # "n":I
    :cond_2
    iget v3, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opStateCheckAnyCharMLStarSb()V
    .locals 4

    .prologue
    .line 1015
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v1, v2

    .line 1017
    .local v0, "mem":I
    :goto_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v1, v2, :cond_1

    .line 1018
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v1, v0}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1024
    :goto_1
    return-void

    .line 1019
    :cond_0
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/joni/ByteCodeMachine;->pushAltWithStateCheck(IIII)V

    .line 1020
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 1021
    iget v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 1023
    :cond_1
    iget v1, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v1, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opStateCheckAnyCharStar()V
    .locals 6

    .prologue
    .line 970
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v3, v4

    .line 971
    .local v1, "mem":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 973
    .local v0, "bytes":[B
    :goto_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v3, v4, :cond_3

    .line 974
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v3, v1}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 982
    :goto_1
    return-void

    .line 975
    :cond_0
    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v3, v4, v5, v1}, Lorg/joni/ByteCodeMachine;->pushAltWithStateCheck(IIII)V

    .line 976
    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v3, v0, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .line 977
    .local v2, "n":I
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iget v4, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v5, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v3, v0, v4, v5}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_1

    .line 978
    :cond_2
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 979
    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 981
    .end local v2    # "n":I
    :cond_3
    iget v3, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opStateCheckAnyCharStarSb()V
    .locals 5

    .prologue
    .line 985
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 986
    .local v1, "mem":I
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    .line 988
    .local v0, "bytes":[B
    :goto_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v2, v3, :cond_2

    .line 989
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v2, v1}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 996
    :goto_1
    return-void

    .line 990
    :cond_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/joni/ByteCodeMachine;->pushAltWithStateCheck(IIII)V

    .line 991
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_1

    .line 992
    :cond_1
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 993
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    goto :goto_0

    .line 995
    :cond_2
    iget v2, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_1
.end method

.method private opStateCheckPush()V
    .locals 5

    .prologue
    .line 1522
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1523
    .local v1, "mem":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v2, v1}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1526
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1525
    .local v0, "addr":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/joni/ByteCodeMachine;->pushAltWithStateCheck(IIII)V

    goto :goto_0
.end method

.method private opStateCheckPushOrJump()V
    .locals 5

    .prologue
    .line 1530
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v1, v2, v3

    .line 1531
    .local v1, "mem":I
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->code:[I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v0, v2, v3

    .line 1533
    .local v0, "addr":I
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    invoke-virtual {p0, v2, v1}, Lorg/joni/ByteCodeMachine;->stateCheckVal(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1534
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1538
    :goto_0
    return-void

    .line 1536
    :cond_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/joni/ByteCodeMachine;->pushAltWithStateCheck(IIII)V

    goto :goto_0
.end method

.method private opWord()V
    .locals 5

    .prologue
    .line 1027
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1030
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1029
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private opWordBegin()V
    .locals 4

    .prologue
    .line 1091
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opWordBeginSb()V
    .locals 3

    .prologue
    .line 1098
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opWordBound()V
    .locals 5

    .prologue
    .line 1051
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ne v0, v1, :cond_2

    .line 1052
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 1053
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_3

    .line 1054
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1056
    :cond_3
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v4, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opWordBoundSb()V
    .locals 4

    .prologue
    .line 1061
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-ne v0, v1, :cond_2

    .line 1062
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1068
    :cond_1
    :goto_0
    return-void

    .line 1063
    :cond_2
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ne v0, v1, :cond_4

    .line 1064
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0

    .line 1066
    :cond_4
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opWordEnd()V
    .locals 4

    .prologue
    .line 1105
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->end:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opWordEndSb()V
    .locals 3

    .prologue
    .line 1112
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->str:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->end:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto :goto_0
.end method

.method private opWordSb()V
    .locals 3

    .prologue
    .line 1033
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v1, p0, Lorg/joni/ByteCodeMachine;->range:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->bytes:[B

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 1035
    iget v0, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    iput v0, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    goto :goto_0
.end method

.method private repeatInc(II)V
    .locals 4
    .param p1, "mem"    # I
    .param p2, "si"    # I

    .prologue
    .line 1601
    iget-object v1, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v1, p2

    .line 1603
    .local v0, "e":Lorg/joni/StackEntry;
    invoke-virtual {v0}, Lorg/joni/StackEntry;->increaseRepeatCount()V

    .line 1605
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatCount()I

    move-result v1

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->repeatRangeHi:[I

    aget v2, v2, p1

    if-lt v1, v2, :cond_0

    .line 1613
    :goto_0
    invoke-virtual {p0, p2}, Lorg/joni/ByteCodeMachine;->pushRepeatInc(I)V

    .line 1614
    return-void

    .line 1607
    :cond_0
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatCount()I

    move-result v1

    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->repeatRangeLo:[I

    aget v2, v2, p1

    if-lt v1, v2, :cond_1

    .line 1608
    iget v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1609
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatPCode()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    goto :goto_0

    .line 1611
    :cond_1
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatPCode()I

    move-result v1

    iput v1, p0, Lorg/joni/ByteCodeMachine;->ip:I

    goto :goto_0
.end method

.method private repeatIncNG(II)V
    .locals 4
    .param p1, "mem"    # I
    .param p2, "si"    # I

    .prologue
    .line 1629
    iget-object v2, p0, Lorg/joni/ByteCodeMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v2, p2

    .line 1631
    .local v0, "e":Lorg/joni/StackEntry;
    invoke-virtual {v0}, Lorg/joni/StackEntry;->increaseRepeatCount()V

    .line 1633
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatCount()I

    move-result v2

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v3, v3, Lorg/joni/Regex;->repeatRangeHi:[I

    aget v3, v3, p1

    if-ge v2, v3, :cond_2

    .line 1634
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatCount()I

    move-result v2

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v3, v3, Lorg/joni/Regex;->repeatRangeLo:[I

    aget v3, v3, p1

    if-lt v2, v3, :cond_1

    .line 1635
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatPCode()I

    move-result v1

    .line 1636
    .local v1, "pcode":I
    invoke-virtual {p0, p2}, Lorg/joni/ByteCodeMachine;->pushRepeatInc(I)V

    .line 1637
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iget v3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/joni/ByteCodeMachine;->pushAlt(III)V

    .line 1645
    .end local v1    # "pcode":I
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatPCode()I

    move-result v2

    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 1640
    invoke-virtual {p0, p2}, Lorg/joni/ByteCodeMachine;->pushRepeatInc(I)V

    goto :goto_0

    .line 1642
    :cond_2
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatCount()I

    move-result v2

    iget-object v3, p0, Lorg/joni/ByteCodeMachine;->regex:Lorg/joni/Regex;

    iget-object v3, v3, Lorg/joni/Regex;->repeatRangeHi:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_0

    .line 1643
    invoke-virtual {p0, p2}, Lorg/joni/ByteCodeMachine;->pushRepeatInc(I)V

    goto :goto_0
.end method

.method private stringCmpIC(IILorg/jcodings/IntHolder;II)Z
    .locals 21
    .param p1, "caseFlodFlag"    # I
    .param p2, "s1"    # I
    .param p3, "ps2"    # Lorg/jcodings/IntHolder;
    .param p4, "mbLen"    # I
    .param p5, "textEnd"    # I

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/joni/ByteCodeMachine;->cfbuf()[B

    move-result-object v7

    .line 122
    .local v7, "buf1":[B
    invoke-virtual/range {p0 .. p0}, Lorg/joni/ByteCodeMachine;->cfbuf2()[B

    move-result-object v13

    .line 124
    .local v13, "buf2":[B
    move-object/from16 v0, p3

    iget v0, v0, Lorg/jcodings/IntHolder;->value:I

    move/from16 v20, v0

    .line 125
    .local v20, "s2":I
    add-int v14, p2, p4

    .line 127
    .local v14, "end1":I
    :cond_0
    move/from16 v0, p2

    if-ge v0, v14, :cond_3

    .line 128
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/joni/ByteCodeMachine;->value:I

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodeMachine;->bytes:[B

    move/from16 v3, p1

    move-object/from16 v5, p0

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v15

    .line 130
    .local v15, "len1":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/ByteCodeMachine;->value:I

    move/from16 p2, v0

    .line 131
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/joni/ByteCodeMachine;->value:I

    .line 132
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/joni/ByteCodeMachine;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/joni/ByteCodeMachine;->bytes:[B

    move/from16 v9, p1

    move-object/from16 v11, p0

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v17

    .line 133
    .local v17, "len2":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/ByteCodeMachine;->value:I

    move/from16 v20, v0

    .line 135
    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    const/4 v2, 0x0

    .line 145
    .end local v15    # "len1":I
    .end local v17    # "len2":I
    :goto_0
    return v2

    .line 136
    .restart local v15    # "len1":I
    .restart local v17    # "len2":I
    :cond_1
    const/16 v18, 0x0

    .line 137
    .local v18, "p1":I
    const/16 v19, 0x0

    .local v19, "p2":I
    move/from16 v16, v15

    .line 139
    .end local v15    # "len1":I
    .local v16, "len1":I
    :goto_1
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "len1":I
    .restart local v15    # "len1":I
    if-lez v16, :cond_0

    .line 140
    aget-byte v2, v7, v18

    aget-byte v3, v13, v19

    if-eq v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :cond_2
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v16, v15

    .end local v15    # "len1":I
    .restart local v16    # "len1":I
    goto :goto_1

    .line 144
    .end local v16    # "len1":I
    .end local v17    # "len2":I
    .end local v18    # "p1":I
    .end local v19    # "p2":I
    :cond_3
    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lorg/jcodings/IntHolder;->value:I

    .line 145
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final cfbuf()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->cfbuf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/joni/ByteCodeMachine;->cfbuf:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->cfbuf:[B

    goto :goto_0
.end method

.method protected final cfbuf2()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->cfbuf2:[B

    if-nez v0, :cond_0

    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/joni/ByteCodeMachine;->cfbuf2:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->cfbuf2:[B

    goto :goto_0
.end method

.method protected final matchAt(III)I
    .locals 4
    .param p1, "range"    # I
    .param p2, "sstart"    # I
    .param p3, "sprev"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 176
    iput p1, p0, Lorg/joni/ByteCodeMachine;->range:I

    .line 177
    iput p2, p0, Lorg/joni/ByteCodeMachine;->sstart:I

    .line 178
    iput p3, p0, Lorg/joni/ByteCodeMachine;->sprev:I

    .line 180
    iput v2, p0, Lorg/joni/ByteCodeMachine;->stk:I

    .line 181
    iput v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    .line 185
    invoke-virtual {p0}, Lorg/joni/ByteCodeMachine;->init()V

    .line 187
    const/4 v2, -0x1

    iput v2, p0, Lorg/joni/ByteCodeMachine;->bestLen:I

    .line 188
    iput p2, p0, Lorg/joni/ByteCodeMachine;->s:I

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 191
    .local v1, "currentThread":Ljava/lang/Thread;
    iget-object v0, p0, Lorg/joni/ByteCodeMachine;->code:[I

    .line 193
    .local v0, "code":[I
    :cond_0
    :goto_0
    iget v2, p0, Lorg/joni/ByteCodeMachine;->interruptCheckCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->interruptCheckCounter:I

    rem-int/lit16 v2, v2, 0x7530

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 195
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 200
    :cond_1
    iget v2, p0, Lorg/joni/ByteCodeMachine;->s:I

    iput v2, p0, Lorg/joni/ByteCodeMachine;->sbegin:I

    .line 201
    iget v2, p0, Lorg/joni/ByteCodeMachine;->ip:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ByteCodeMachine;->ip:I

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    .line 336
    :pswitch_0
    new-instance v2, Lorg/joni/exception/InternalException;

    const-string v3, "undefined bytecode (bug)"

    invoke-direct {v2, v3}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :pswitch_1
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->finish()I

    move-result v2

    .line 331
    :goto_1
    return v2

    .line 203
    :pswitch_2
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact1()V

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact2()V

    goto :goto_0

    .line 205
    :pswitch_4
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact3()V

    goto :goto_0

    .line 206
    :pswitch_5
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact4()V

    goto :goto_0

    .line 207
    :pswitch_6
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact5()V

    goto :goto_0

    .line 208
    :pswitch_7
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactN()V

    goto :goto_0

    .line 210
    :pswitch_8
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactMB2N1()V

    goto :goto_0

    .line 211
    :pswitch_9
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactMB2N2()V

    goto :goto_0

    .line 212
    :pswitch_a
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactMB2N3()V

    goto :goto_0

    .line 213
    :pswitch_b
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactMB2N()V

    goto :goto_0

    .line 214
    :pswitch_c
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactMB3N()V

    goto :goto_0

    .line 215
    :pswitch_d
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactMBN()V

    goto :goto_0

    .line 217
    :pswitch_e
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact1IC()V

    goto :goto_0

    .line 218
    :pswitch_f
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactNIC()V

    goto :goto_0

    .line 220
    :pswitch_10
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClass()V

    goto :goto_0

    .line 221
    :pswitch_11
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassMB()V

    goto :goto_0

    .line 222
    :pswitch_12
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassMIX()V

    goto :goto_0

    .line 223
    :pswitch_13
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassNot()V

    goto/16 :goto_0

    .line 224
    :pswitch_14
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassMBNot()V

    goto/16 :goto_0

    .line 225
    :pswitch_15
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassMIXNot()V

    goto/16 :goto_0

    .line 226
    :pswitch_16
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassNode()V

    goto/16 :goto_0

    .line 228
    :pswitch_17
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyChar()V

    goto/16 :goto_0

    .line 229
    :pswitch_18
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharML()V

    goto/16 :goto_0

    .line 230
    :pswitch_19
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharStar()V

    goto/16 :goto_0

    .line 231
    :pswitch_1a
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharMLStar()V

    goto/16 :goto_0

    .line 232
    :pswitch_1b
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharStarPeekNext()V

    goto/16 :goto_0

    .line 233
    :pswitch_1c
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharMLStarPeekNext()V

    goto/16 :goto_0

    .line 234
    :pswitch_1d
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheckAnyCharStar()V

    goto/16 :goto_0

    .line 235
    :pswitch_1e
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheckAnyCharMLStar()V

    goto/16 :goto_0

    .line 237
    :pswitch_1f
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWord()V

    goto/16 :goto_0

    .line 238
    :pswitch_20
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNotWord()V

    goto/16 :goto_0

    .line 239
    :pswitch_21
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordBound()V

    goto/16 :goto_0

    .line 240
    :pswitch_22
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNotWordBound()V

    goto/16 :goto_0

    .line 241
    :pswitch_23
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordBegin()V

    goto/16 :goto_0

    .line 242
    :pswitch_24
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordEnd()V

    goto/16 :goto_0

    .line 244
    :pswitch_25
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBeginBuf()V

    goto/16 :goto_0

    .line 245
    :pswitch_26
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opEndBuf()V

    goto/16 :goto_0

    .line 246
    :pswitch_27
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBeginLine()V

    goto/16 :goto_0

    .line 247
    :pswitch_28
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opEndLine()V

    goto/16 :goto_0

    .line 248
    :pswitch_29
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opSemiEndBuf()V

    goto/16 :goto_0

    .line 249
    :pswitch_2a
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBeginPosition()V

    goto/16 :goto_0

    .line 251
    :pswitch_2b
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opMemoryStartPush()V

    goto/16 :goto_0

    .line 252
    :pswitch_2c
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opMemoryStart()V

    goto/16 :goto_0

    .line 253
    :pswitch_2d
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opMemoryEndPush()V

    goto/16 :goto_0

    .line 254
    :pswitch_2e
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opMemoryEnd()V

    goto/16 :goto_0

    .line 255
    :pswitch_2f
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opMemoryEndPushRec()V

    goto/16 :goto_0

    .line 256
    :pswitch_30
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opMemoryEndRec()V

    goto/16 :goto_0

    .line 258
    :pswitch_31
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRef1()V

    goto/16 :goto_0

    .line 259
    :pswitch_32
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRef2()V

    goto/16 :goto_0

    .line 260
    :pswitch_33
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRefN()V

    goto/16 :goto_0

    .line 261
    :pswitch_34
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRefNIC()V

    goto/16 :goto_0

    .line 262
    :pswitch_35
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRefMulti()V

    goto/16 :goto_0

    .line 263
    :pswitch_36
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRefMultiIC()V

    goto/16 :goto_0

    .line 264
    :pswitch_37
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opBackRefAtLevel()V

    goto/16 :goto_0

    .line 266
    :pswitch_38
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNullCheckStart()V

    goto/16 :goto_0

    .line 267
    :pswitch_39
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNullCheckEnd()V

    goto/16 :goto_0

    .line 268
    :pswitch_3a
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNullCheckEndMemST()V

    goto/16 :goto_0

    .line 269
    :pswitch_3b
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNullCheckEndMemSTPush()V

    goto/16 :goto_0

    .line 271
    :pswitch_3c
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opJump()V

    goto/16 :goto_0

    .line 272
    :pswitch_3d
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPush()V

    goto/16 :goto_0

    .line 275
    :pswitch_3e
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheckPush()V

    goto/16 :goto_0

    .line 276
    :pswitch_3f
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheckPushOrJump()V

    goto/16 :goto_0

    .line 277
    :pswitch_40
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheck()V

    goto/16 :goto_0

    .line 279
    :pswitch_41
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPop()V

    goto/16 :goto_0

    .line 280
    :pswitch_42
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPushOrJumpExact1()V

    goto/16 :goto_0

    .line 281
    :pswitch_43
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPushIfPeekNext()V

    goto/16 :goto_0

    .line 283
    :pswitch_44
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opRepeat()V

    goto/16 :goto_0

    .line 284
    :pswitch_45
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opRepeatNG()V

    goto/16 :goto_0

    .line 285
    :pswitch_46
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opRepeatInc()V

    goto/16 :goto_0

    .line 286
    :pswitch_47
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opRepeatIncSG()V

    goto/16 :goto_0

    .line 287
    :pswitch_48
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opRepeatIncNG()V

    goto/16 :goto_0

    .line 288
    :pswitch_49
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opRepeatIncNGSG()V

    goto/16 :goto_0

    .line 290
    :pswitch_4a
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPushPos()V

    goto/16 :goto_0

    .line 291
    :pswitch_4b
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPopPos()V

    goto/16 :goto_0

    .line 292
    :pswitch_4c
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPushPosNot()V

    goto/16 :goto_0

    .line 293
    :pswitch_4d
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFailPos()V

    goto/16 :goto_0

    .line 294
    :pswitch_4e
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPushStopBT()V

    goto/16 :goto_0

    .line 295
    :pswitch_4f
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPopStopBT()V

    goto/16 :goto_0

    .line 297
    :pswitch_50
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opLookBehind()V

    goto/16 :goto_0

    .line 298
    :pswitch_51
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opPushLookBehindNot()V

    goto/16 :goto_0

    .line 299
    :pswitch_52
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFailLookBehindNot()V

    goto/16 :goto_0

    .line 302
    :pswitch_53
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCall()V

    goto/16 :goto_0

    .line 303
    :pswitch_54
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opReturn()V

    goto/16 :goto_0

    .line 306
    :pswitch_55
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassSb()V

    goto/16 :goto_0

    .line 307
    :pswitch_56
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opCClassNotSb()V

    goto/16 :goto_0

    .line 309
    :pswitch_57
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharSb()V

    goto/16 :goto_0

    .line 310
    :pswitch_58
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharMLSb()V

    goto/16 :goto_0

    .line 311
    :pswitch_59
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharStarSb()V

    goto/16 :goto_0

    .line 312
    :pswitch_5a
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharMLStarSb()V

    goto/16 :goto_0

    .line 313
    :pswitch_5b
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharStarPeekNextSb()V

    goto/16 :goto_0

    .line 314
    :pswitch_5c
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opAnyCharMLStarPeekNextSb()V

    goto/16 :goto_0

    .line 315
    :pswitch_5d
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheckAnyCharStarSb()V

    goto/16 :goto_0

    .line 316
    :pswitch_5e
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opStateCheckAnyCharMLStarSb()V

    goto/16 :goto_0

    .line 318
    :pswitch_5f
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordSb()V

    goto/16 :goto_0

    .line 319
    :pswitch_60
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNotWordSb()V

    goto/16 :goto_0

    .line 320
    :pswitch_61
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordBoundSb()V

    goto/16 :goto_0

    .line 321
    :pswitch_62
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opNotWordBoundSb()V

    goto/16 :goto_0

    .line 322
    :pswitch_63
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordBeginSb()V

    goto/16 :goto_0

    .line 323
    :pswitch_64
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opWordEndSb()V

    goto/16 :goto_0

    .line 325
    :pswitch_65
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opLookBehindSb()V

    goto/16 :goto_0

    .line 327
    :pswitch_66
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExact1ICSb()V

    goto/16 :goto_0

    .line 328
    :pswitch_67
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opExactNICSb()V

    goto/16 :goto_0

    .line 331
    :pswitch_68
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->finish()I

    move-result v2

    goto/16 :goto_1

    .line 333
    :pswitch_69
    invoke-direct {p0}, Lorg/joni/ByteCodeMachine;->opFail()V

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_2c
        :pswitch_2b
        :pswitch_2d
        :pswitch_2f
        :pswitch_2e
        :pswitch_30
        :pswitch_69
        :pswitch_3c
        :pswitch_3d
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_48
        :pswitch_47
        :pswitch_49
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_55
        :pswitch_56
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
    .end packed-switch
.end method
