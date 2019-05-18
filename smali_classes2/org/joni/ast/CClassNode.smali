.class public final Lorg/joni/ast/CClassNode;
.super Lorg/joni/ast/Node;
.source "CClassNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joni/ast/CClassNode$CCStateArg;
    }
.end annotation


# static fields
.field private static final FLAG_NCCLASS_NOT:I = 0x1

.field private static final FLAG_NCCLASS_SHARE:I = 0x2


# instance fields
.field public final bs:Lorg/joni/BitSet;

.field private ctype:I

.field private enc:Lorg/jcodings/Encoding;

.field flags:I

.field public mbuf:Lorg/joni/CodeRangeBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    .line 44
    new-instance v0, Lorg/joni/BitSet;

    invoke-direct {v0}, Lorg/joni/BitSet;-><init>()V

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 52
    return-void
.end method

.method public constructor <init>(ILorg/jcodings/Encoding;ZI[I)V
    .locals 0
    .param p1, "ctype"    # I
    .param p2, "enc"    # Lorg/jcodings/Encoding;
    .param p3, "not"    # Z
    .param p4, "sbOut"    # I
    .param p5, "ranges"    # [I

    .prologue
    .line 55
    invoke-direct {p0, p3, p4, p5}, Lorg/joni/ast/CClassNode;-><init>(ZI[I)V

    .line 56
    iput p1, p0, Lorg/joni/ast/CClassNode;->ctype:I

    .line 57
    iput-object p2, p0, Lorg/joni/ast/CClassNode;->enc:Lorg/jcodings/Encoding;

    .line 58
    return-void
.end method

.method public constructor <init>(ZI[I)V
    .locals 6
    .param p1, "not"    # Z
    .param p2, "sbOut"    # I
    .param p3, "ranges"    # [I

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    .line 44
    new-instance v5, Lorg/joni/BitSet;

    invoke-direct {v5}, Lorg/joni/BitSet;-><init>()V

    iput-object v5, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->setNot()V

    .line 71
    :cond_0
    if-lez p2, :cond_3

    if-eqz p3, :cond_3

    .line 72
    const/4 v5, 0x0

    aget v3, p3, v5

    .line 73
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 74
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v0, p3, v5

    .line 75
    .local v0, "from":I
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, p3, v5

    .line 76
    .local v4, "to":I
    move v2, v0

    .local v2, "j":I
    :goto_1
    if-gt v2, v4, :cond_2

    .line 77
    if-lt v2, p2, :cond_1

    .line 78
    invoke-direct {p0, p3}, Lorg/joni/ast/CClassNode;->setupBuffer([I)V

    .line 86
    .end local v0    # "from":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v4    # "to":I
    :goto_2
    return-void

    .line 81
    .restart local v0    # "from":I
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "n":I
    .restart local v4    # "to":I
    :cond_1
    iget-object v5, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v5, v2}, Lorg/joni/BitSet;->set(I)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "from":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v4    # "to":I
    :cond_3
    invoke-direct {p0, p3}, Lorg/joni/ast/CClassNode;->setupBuffer([I)V

    goto :goto_2
.end method

.method private setupBuffer([I)V
    .locals 1
    .param p1, "ranges"    # [I

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Lorg/joni/CodeRangeBuffer;

    invoke-direct {v0, p1}, Lorg/joni/CodeRangeBuffer;-><init>([I)V

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    goto :goto_0
.end method


# virtual methods
.method public addAllMultiByteRange(Lorg/jcodings/Encoding;)V
    .locals 1
    .param p1, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-static {p1, v0}, Lorg/joni/CodeRangeBuffer;->addAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 156
    return-void
.end method

.method public addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V
    .locals 7
    .param p1, "ctype"    # I
    .param p2, "not"    # Z
    .param p3, "env"    # Lorg/joni/ScanEnvironment;
    .param p4, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    const/16 v2, 0x100

    .line 334
    iget-object v3, p3, Lorg/joni/ScanEnvironment;->enc:Lorg/jcodings/Encoding;

    .line 337
    .local v3, "enc":Lorg/jcodings/Encoding;
    sparse-switch p1, :sswitch_data_0

    .line 362
    invoke-virtual {v3, p1, p4}, Lorg/jcodings/Encoding;->ctypeCodeRange(ILorg/jcodings/IntHolder;)[I

    move-result-object v5

    .line 363
    .local v5, "ranges":[I
    if-eqz v5, :cond_6

    .line 364
    iget v4, p4, Lorg/jcodings/IntHolder;->value:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joni/ast/CClassNode;->addCTypeByRange(IZLorg/jcodings/Encoding;I[I)V

    .line 426
    .end local v5    # "ranges":[I
    :cond_0
    :goto_0
    return-void

    .line 339
    :sswitch_0
    if-nez p2, :cond_1

    iget-object v0, p3, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const/16 v0, 0x2028

    const/16 v1, 0x2029

    invoke-virtual {p0, p3, v0, v1}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    .line 345
    :cond_1
    :sswitch_1
    xor-int/lit16 p1, p1, 0x100

    .line 346
    if-eqz p2, :cond_4

    .line 347
    const/4 v6, 0x0

    .local v6, "c":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 348
    sget-object v0, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    invoke-virtual {v0, v6, p1}, Lorg/jcodings/specific/ASCIIEncoding;->isCodeCType(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 347
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 351
    :cond_3
    invoke-virtual {p0, v3}, Lorg/joni/ast/CClassNode;->addAllMultiByteRange(Lorg/jcodings/Encoding;)V

    goto :goto_0

    .line 353
    .end local v6    # "c":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_2
    if-ge v6, v2, :cond_0

    .line 354
    sget-object v0, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    invoke-virtual {v0, v6, p1}, Lorg/jcodings/specific/ASCIIEncoding;->isCodeCType(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 353
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 368
    .end local v6    # "c":I
    .restart local v5    # "ranges":[I
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 424
    new-instance v0, Lorg/joni/exception/InternalException;

    const-string v1, "internal parser error (bug)"

    invoke-direct {v0, v1}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_0
    if-eqz p2, :cond_9

    .line 381
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 382
    invoke-virtual {v3, v6, p1}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 381
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 384
    :cond_8
    invoke-virtual {p0, v3}, Lorg/joni/ast/CClassNode;->addAllMultiByteRange(Lorg/jcodings/Encoding;)V

    goto :goto_0

    .line 386
    .end local v6    # "c":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_4
    if-ge v6, v2, :cond_0

    .line 387
    invoke-virtual {v3, v6, p1}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 386
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 394
    .end local v6    # "c":I
    :pswitch_1
    if-eqz p2, :cond_c

    .line 395
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_5
    if-ge v6, v2, :cond_0

    .line 396
    invoke-virtual {v3, v6, p1}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 395
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 399
    .end local v6    # "c":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_6
    if-ge v6, v2, :cond_e

    .line 400
    invoke-virtual {v3, v6, p1}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 399
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 402
    :cond_e
    invoke-virtual {p0, v3}, Lorg/joni/ast/CClassNode;->addAllMultiByteRange(Lorg/jcodings/Encoding;)V

    goto/16 :goto_0

    .line 407
    .end local v6    # "c":I
    :pswitch_2
    if-nez p2, :cond_11

    .line 408
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_7
    if-ge v6, v2, :cond_10

    .line 409
    invoke-virtual {v3, v6}, Lorg/jcodings/Encoding;->isSbWord(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V

    .line 408
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 412
    :cond_10
    invoke-virtual {p0, v3}, Lorg/joni/ast/CClassNode;->addAllMultiByteRange(Lorg/jcodings/Encoding;)V

    goto/16 :goto_0

    .line 414
    .end local v6    # "c":I
    :cond_11
    const/4 v6, 0x0

    .restart local v6    # "c":I
    :goto_8
    if-ge v6, v2, :cond_0

    .line 416
    :try_start_0
    invoke-virtual {v3, v6}, Lorg/jcodings/Encoding;->codeToMbcLength(I)I

    move-result v0

    if-lez v0, :cond_12

    .line 417
    invoke-virtual {v3, v6}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0, v6}, Lorg/joni/BitSet;->set(I)V
    :try_end_0
    .catch Lorg/jcodings/exception/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_12
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 418
    :catch_0
    move-exception v0

    goto :goto_9

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_1
        0x109 -> :sswitch_0
        0x10c -> :sswitch_1
    .end sparse-switch

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addCTypeByRange(IZLorg/jcodings/Encoding;I[I)V
    .locals 6
    .param p1, "ctype"    # I
    .param p2, "not"    # Z
    .param p3, "enc"    # Lorg/jcodings/Encoding;
    .param p4, "sbOut"    # I
    .param p5, "mbr"    # [I

    .prologue
    const v5, 0x7fffffff

    .line 266
    const/4 v4, 0x0

    aget v2, p5, v4

    .line 268
    .local v2, "n":I
    if-nez p2, :cond_4

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 270
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v1, p5, v4

    .local v1, "j":I
    :goto_1
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, p5, v4

    if-gt v1, v4, :cond_2

    .line 271
    if-lt v1, p4, :cond_1

    .line 280
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    if-lt v1, v4, :cond_0

    .line 281
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, p5, v4

    invoke-virtual {p0, v1, v4}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 286
    :cond_0
    :goto_2
    if-ge v0, v2, :cond_7

    .line 287
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, p5, v5

    invoke-virtual {p0, v4, v5}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    :cond_1
    iget-object v4, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v4, v1}, Lorg/joni/BitSet;->set(I)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "j":I
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_7

    .line 296
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, p5, v5

    invoke-virtual {p0, v4, v5}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 300
    .end local v0    # "i":I
    :cond_4
    const/4 v3, 0x0

    .line 302
    .local v3, "prev":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v2, :cond_a

    .line 303
    move v1, v3

    .restart local v1    # "j":I
    :goto_5
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    if-ge v1, v4, :cond_9

    .line 304
    if-lt v1, p4, :cond_8

    .line 306
    move v3, p4

    .line 307
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_6

    .line 308
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    if-ge v3, v4, :cond_5

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    .line 309
    :cond_5
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, p5, v4

    add-int/lit8 v3, v4, 0x1

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 311
    :cond_6
    if-ge v3, v5, :cond_7

    invoke-virtual {p0, v3, v5}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    .line 331
    .end local v1    # "j":I
    .end local v3    # "prev":I
    :cond_7
    :goto_7
    return-void

    .line 314
    .restart local v1    # "j":I
    .restart local v3    # "prev":I
    :cond_8
    iget-object v4, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v4, v1}, Lorg/joni/BitSet;->set(I)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 316
    :cond_9
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, p5, v4

    add-int/lit8 v3, v4, 0x1

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 319
    .end local v1    # "j":I
    :cond_a
    move v1, v3

    .restart local v1    # "j":I
    :goto_8
    if-ge v1, p4, :cond_b

    .line 320
    iget-object v4, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v4, v1}, Lorg/joni/BitSet;->set(I)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 324
    :cond_b
    move v3, p4

    .line 325
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_d

    .line 326
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    if-ge v3, v4, :cond_c

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p5, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    .line 327
    :cond_c
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, p5, v4

    add-int/lit8 v3, v4, 0x1

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 329
    :cond_d
    if-ge v3, v5, :cond_7

    invoke-virtual {p0, v3, v5}, Lorg/joni/ast/CClassNode;->addCodeRangeToBuf(II)V

    goto :goto_7
.end method

.method public addCodeRange(Lorg/joni/ScanEnvironment;II)V
    .locals 1
    .param p1, "env"    # Lorg/joni/ScanEnvironment;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-static {v0, p1, p2, p3}, Lorg/joni/CodeRangeBuffer;->addCodeRange(Lorg/joni/CodeRangeBuffer;Lorg/joni/ScanEnvironment;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 152
    return-void
.end method

.method public addCodeRangeToBuf(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-static {v0, p1, p2}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 148
    return-void
.end method

.method public and(Lorg/joni/ast/CClassNode;Lorg/jcodings/Encoding;)V
    .locals 11
    .param p1, "other"    # Lorg/joni/ast/CClassNode;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/4 v10, 0x0

    .line 171
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v6

    .line 172
    .local v6, "not1":Z
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 173
    .local v2, "bsr1":Lorg/joni/BitSet;
    iget-object v4, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 174
    .local v4, "buf1":Lorg/joni/CodeRangeBuffer;
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v7

    .line 175
    .local v7, "not2":Z
    iget-object v3, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 176
    .local v3, "bsr2":Lorg/joni/BitSet;
    iget-object v5, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 178
    .local v5, "buf2":Lorg/joni/CodeRangeBuffer;
    if-eqz v6, :cond_0

    .line 179
    new-instance v0, Lorg/joni/BitSet;

    invoke-direct {v0}, Lorg/joni/BitSet;-><init>()V

    .line 180
    .local v0, "bs1":Lorg/joni/BitSet;
    invoke-virtual {v2, v0}, Lorg/joni/BitSet;->invertTo(Lorg/joni/BitSet;)V

    .line 181
    move-object v2, v0

    .line 184
    .end local v0    # "bs1":Lorg/joni/BitSet;
    :cond_0
    if-eqz v7, :cond_1

    .line 185
    new-instance v1, Lorg/joni/BitSet;

    invoke-direct {v1}, Lorg/joni/BitSet;-><init>()V

    .line 186
    .local v1, "bs2":Lorg/joni/BitSet;
    invoke-virtual {v3, v1}, Lorg/joni/BitSet;->invertTo(Lorg/joni/BitSet;)V

    .line 187
    move-object v3, v1

    .line 190
    .end local v1    # "bs2":Lorg/joni/BitSet;
    :cond_1
    invoke-virtual {v2, v3}, Lorg/joni/BitSet;->and(Lorg/joni/BitSet;)V

    .line 192
    iget-object v9, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    if-eq v2, v9, :cond_2

    .line 193
    iget-object v9, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v9, v2}, Lorg/joni/BitSet;->copy(Lorg/joni/BitSet;)V

    .line 194
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 197
    :cond_2
    if-eqz v6, :cond_3

    .line 198
    iget-object v9, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v9}, Lorg/joni/BitSet;->invert()V

    .line 201
    :cond_3
    const/4 v8, 0x0

    .line 203
    .local v8, "pbuf":Lorg/joni/CodeRangeBuffer;
    invoke-virtual {p2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v9

    if-nez v9, :cond_5

    .line 204
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 205
    invoke-static {p2, v4, v10, v5, v10}, Lorg/joni/CodeRangeBuffer;->orCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;ZLorg/joni/CodeRangeBuffer;Z)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    .line 213
    :cond_4
    :goto_0
    iput-object v8, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 216
    :cond_5
    return-void

    .line 207
    :cond_6
    invoke-static {v4, v6, v5, v7}, Lorg/joni/CodeRangeBuffer;->andCodeRangeBuff(Lorg/joni/CodeRangeBuffer;ZLorg/joni/CodeRangeBuffer;Z)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    .line 209
    if-eqz v6, :cond_4

    .line 210
    invoke-static {p2, v8}, Lorg/joni/CodeRangeBuffer;->notCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0}, Lorg/joni/BitSet;->clear()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 64
    return-void
.end method

.method public clearNot()V
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    .line 552
    return-void
.end method

.method public clearNotFlag(Lorg/jcodings/Encoding;)V
    .locals 1
    .param p1, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0}, Lorg/joni/BitSet;->invert()V

    .line 162
    invoke-virtual {p1}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-static {p1, v0}, Lorg/joni/CodeRangeBuffer;->notCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->clearNot()V

    .line 167
    :cond_1
    return-void
.end method

.method public clearShare()V
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    .line 564
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 100
    instance-of v2, p1, Lorg/joni/ast/CClassNode;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 101
    check-cast v0, Lorg/joni/ast/CClassNode;

    .line 102
    .local v0, "cc":Lorg/joni/ast/CClassNode;
    iget v2, p0, Lorg/joni/ast/CClassNode;->ctype:I

    iget v3, v0, Lorg/joni/ast/CClassNode;->ctype:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v2

    invoke-virtual {v0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/joni/ast/CClassNode;->enc:Lorg/jcodings/Encoding;

    iget-object v3, v0, Lorg/joni/ast/CClassNode;->enc:Lorg/jcodings/Encoding;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flagsToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "flags":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isShare()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SHARE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "Character Class"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCodeInCC(Lorg/jcodings/Encoding;I)Z
    .locals 3
    .param p1, "enc"    # Lorg/jcodings/Encoding;
    .param p2, "code"    # I

    .prologue
    .line 538
    invoke-virtual {p1}, Lorg/jcodings/Encoding;->minLength()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 539
    const/4 v0, 0x2

    .line 543
    .local v0, "len":I
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/joni/ast/CClassNode;->isCodeInCCLength(II)Z

    move-result v1

    return v1

    .line 541
    .end local v0    # "len":I
    :cond_0
    invoke-virtual {p1, p2}, Lorg/jcodings/Encoding;->codeToMbcLength(I)I

    move-result v0

    .restart local v0    # "len":I
    goto :goto_0
.end method

.method public isCodeInCCLength(II)Z
    .locals 3
    .param p1, "encLength"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x1

    .line 518
    if-gt p1, v1, :cond_0

    const/16 v2, 0x100

    if-lt p2, v2, :cond_2

    .line 519
    :cond_0
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    if-nez v2, :cond_1

    .line 520
    const/4 v0, 0x0

    .line 528
    .local v0, "found":Z
    :goto_0
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 529
    if-nez v0, :cond_3

    .line 531
    :goto_1
    return v1

    .line 522
    .end local v0    # "found":Z
    :cond_1
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-virtual {v2}, Lorg/joni/CodeRangeBuffer;->getCodeRange()[I

    move-result-object v2

    invoke-static {v2, p2}, Lorg/jcodings/CodeRange;->isInCodeRange([II)Z

    move-result v0

    .restart local v0    # "found":Z
    goto :goto_0

    .line 525
    .end local v0    # "found":Z
    :cond_2
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v2, p2}, Lorg/joni/BitSet;->at(I)Z

    move-result v0

    .restart local v0    # "found":Z
    goto :goto_0

    .line 529
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v1, v0

    .line 531
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0}, Lorg/joni/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNot()Z
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShare()Z
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextStateClass(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V
    .locals 2
    .param p1, "arg"    # Lorg/joni/ast/CClassNode$CCStateArg;
    .param p2, "env"    # Lorg/joni/ScanEnvironment;

    .prologue
    .line 439
    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    sget-object v1, Lorg/joni/constants/CCSTATE;->RANGE:Lorg/joni/constants/CCSTATE;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/joni/exception/SyntaxException;

    const-string v1, "char-class value at end of range"

    invoke-direct {v0, v1}, Lorg/joni/exception/SyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    sget-object v1, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->CLASS:Lorg/joni/constants/CCVALTYPE;

    if-eq v0, v1, :cond_1

    .line 442
    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    if-ne v0, v1, :cond_2

    .line 443
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    invoke-virtual {v0, v1}, Lorg/joni/BitSet;->set(I)V

    .line 448
    :cond_1
    :goto_0
    sget-object v0, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    .line 449
    sget-object v0, Lorg/joni/constants/CCVALTYPE;->CLASS:Lorg/joni/constants/CCVALTYPE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    .line 450
    return-void

    .line 444
    :cond_2
    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    if-ne v0, v1, :cond_1

    .line 445
    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    invoke-virtual {p0, p2, v0, v1}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    goto :goto_0
.end method

.method public nextStateValue(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V
    .locals 4
    .param p1, "arg"    # Lorg/joni/ast/CClassNode$CCStateArg;
    .param p2, "env"    # Lorg/joni/ScanEnvironment;

    .prologue
    const/16 v0, 0xff

    .line 454
    sget-object v1, Lorg/joni/ast/CClassNode$1;->$SwitchMap$org$joni$constants$CCSTATE:[I

    iget-object v2, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    invoke-virtual {v2}, Lorg/joni/constants/CCSTATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    iget-boolean v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    iput-boolean v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vsIsRaw:Z

    .line 510
    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    iput v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    .line 511
    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    .line 512
    return-void

    .line 456
    :pswitch_0
    iget-object v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    sget-object v2, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    if-ne v1, v2, :cond_2

    .line 457
    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    if-le v1, v0, :cond_1

    new-instance v0, Lorg/joni/exception/ValueException;

    const-string v1, "invalid code point value"

    invoke-direct {v0, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    invoke-virtual {v0, v1}, Lorg/joni/BitSet;->set(I)V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    if-ne v0, v1, :cond_0

    .line 460
    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    invoke-virtual {p0, p2, v0, v1}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    iget-object v2, p1, Lorg/joni/ast/CClassNode$CCStateArg;->type:Lorg/joni/constants/CCVALTYPE;

    if-ne v1, v2, :cond_8

    .line 466
    iget-object v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    sget-object v2, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    if-ne v1, v2, :cond_7

    .line 467
    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    if-gt v1, v0, :cond_3

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    if-le v1, v0, :cond_4

    :cond_3
    new-instance v0, Lorg/joni/exception/ValueException;

    const-string v1, "invalid code point value"

    invoke-direct {v0, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_4
    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    if-le v0, v1, :cond_6

    .line 470
    iget-object v0, p2, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->allowEmptyRangeInCC()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    sget-object v0, Lorg/joni/constants/CCSTATE;->COMPLETE:Lorg/joni/constants/CCSTATE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    goto :goto_0

    .line 475
    :cond_5
    new-instance v0, Lorg/joni/exception/ValueException;

    const-string v1, "empty range in char class"

    invoke-direct {v0, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_6
    iget-object v0, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v2, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    invoke-virtual {v0, v1, v2}, Lorg/joni/BitSet;->setRange(II)V

    .line 496
    :goto_1
    sget-object v0, Lorg/joni/constants/CCSTATE;->COMPLETE:Lorg/joni/constants/CCSTATE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    goto :goto_0

    .line 480
    :cond_7
    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    invoke-virtual {p0, p2, v0, v1}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    goto :goto_1

    .line 483
    :cond_8
    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v2, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    if-le v1, v2, :cond_a

    .line 484
    iget-object v0, p2, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->allowEmptyRangeInCC()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 486
    sget-object v0, Lorg/joni/constants/CCSTATE;->COMPLETE:Lorg/joni/constants/CCSTATE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    goto/16 :goto_0

    .line 489
    :cond_9
    new-instance v0, Lorg/joni/exception/ValueException;

    const-string v1, "empty range in char class"

    invoke-direct {v0, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_a
    iget-object v1, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget v2, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v3, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    if-ge v3, v0, :cond_b

    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    :cond_b
    invoke-virtual {v1, v2, v0}, Lorg/joni/BitSet;->setRange(II)V

    .line 493
    iget v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->vs:I

    iget v1, p1, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    invoke-virtual {p0, p2, v0, v1}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    goto :goto_1

    .line 501
    :pswitch_2
    sget-object v0, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    iput-object v0, p1, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    goto/16 :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public or(Lorg/joni/ast/CClassNode;Lorg/jcodings/Encoding;)V
    .locals 11
    .param p1, "other"    # Lorg/joni/ast/CClassNode;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/4 v10, 0x0

    .line 220
    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v6

    .line 221
    .local v6, "not1":Z
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 222
    .local v2, "bsr1":Lorg/joni/BitSet;
    iget-object v4, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 223
    .local v4, "buf1":Lorg/joni/CodeRangeBuffer;
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v7

    .line 224
    .local v7, "not2":Z
    iget-object v3, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 225
    .local v3, "bsr2":Lorg/joni/BitSet;
    iget-object v5, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 227
    .local v5, "buf2":Lorg/joni/CodeRangeBuffer;
    if-eqz v6, :cond_0

    .line 228
    new-instance v0, Lorg/joni/BitSet;

    invoke-direct {v0}, Lorg/joni/BitSet;-><init>()V

    .line 229
    .local v0, "bs1":Lorg/joni/BitSet;
    invoke-virtual {v2, v0}, Lorg/joni/BitSet;->invertTo(Lorg/joni/BitSet;)V

    .line 230
    move-object v2, v0

    .line 233
    .end local v0    # "bs1":Lorg/joni/BitSet;
    :cond_0
    if-eqz v7, :cond_1

    .line 234
    new-instance v1, Lorg/joni/BitSet;

    invoke-direct {v1}, Lorg/joni/BitSet;-><init>()V

    .line 235
    .local v1, "bs2":Lorg/joni/BitSet;
    invoke-virtual {v3, v1}, Lorg/joni/BitSet;->invertTo(Lorg/joni/BitSet;)V

    .line 236
    move-object v3, v1

    .line 239
    .end local v1    # "bs2":Lorg/joni/BitSet;
    :cond_1
    invoke-virtual {v2, v3}, Lorg/joni/BitSet;->or(Lorg/joni/BitSet;)V

    .line 241
    iget-object v9, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    if-eq v2, v9, :cond_2

    .line 242
    iget-object v9, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v9, v2}, Lorg/joni/BitSet;->copy(Lorg/joni/BitSet;)V

    .line 243
    iget-object v2, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 246
    :cond_2
    if-eqz v6, :cond_3

    .line 247
    iget-object v9, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v9}, Lorg/joni/BitSet;->invert()V

    .line 250
    :cond_3
    invoke-virtual {p2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v9

    if-nez v9, :cond_5

    .line 251
    const/4 v8, 0x0

    .line 252
    .local v8, "pbuf":Lorg/joni/CodeRangeBuffer;
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 253
    invoke-static {v4, v10, v5, v10}, Lorg/joni/CodeRangeBuffer;->andCodeRangeBuff(Lorg/joni/CodeRangeBuffer;ZLorg/joni/CodeRangeBuffer;Z)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    .line 260
    :cond_4
    :goto_0
    iput-object v8, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    .line 262
    .end local v8    # "pbuf":Lorg/joni/CodeRangeBuffer;
    :cond_5
    return-void

    .line 255
    .restart local v8    # "pbuf":Lorg/joni/CodeRangeBuffer;
    :cond_6
    invoke-static {p2, v4, v6, v5, v7}, Lorg/joni/CodeRangeBuffer;->orCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;ZLorg/joni/CodeRangeBuffer;Z)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    .line 256
    if-eqz v6, :cond_4

    .line 257
    invoke-static {p2, v8}, Lorg/joni/CodeRangeBuffer;->notCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    goto :goto_0
.end method

.method public setNot()V
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    .line 548
    return-void
.end method

.method public setShare()V
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/joni/ast/CClassNode;->flags:I

    .line 560
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "value":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joni/ast/CClassNode;->flagsToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  bs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/CClassNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  mbuf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/CClassNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
