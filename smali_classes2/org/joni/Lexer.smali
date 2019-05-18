.class Lorg/joni/Lexer;
.super Lorg/joni/ScannerSupport;
.source "Lexer.java"


# static fields
.field private static final send:[I


# instance fields
.field protected final env:Lorg/joni/ScanEnvironment;

.field protected final syntax:Lorg/joni/Syntax;

.field protected final token:Lorg/joni/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/joni/Lexer;->send:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3a
        0x5d
    .end array-data
.end method

.method protected constructor <init>(Lorg/joni/ScanEnvironment;[BII)V
    .locals 1
    .param p1, "env"    # Lorg/joni/ScanEnvironment;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 40
    iget-object v0, p1, Lorg/joni/ScanEnvironment;->enc:Lorg/jcodings/Encoding;

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/joni/ScannerSupport;-><init>(Lorg/jcodings/Encoding;[BII)V

    .line 37
    new-instance v0, Lorg/joni/Token;

    invoke-direct {v0}, Lorg/joni/Token;-><init>()V

    iput-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    .line 41
    iput-object p1, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    .line 42
    iget-object v0, p1, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    iput-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    .line 43
    return-void
.end method

.method private fetchEscapedValue()I
    .locals 2

    .prologue
    const/16 v1, 0x2d

    .line 137
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "end pattern at escape"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 140
    iget v0, p0, Lorg/joni/Lexer;->c:I

    sparse-switch v0, :sswitch_data_0

    .line 176
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValueBackSlash()V

    .line 179
    :goto_1
    iget v0, p0, Lorg/joni/Lexer;->c:I

    return v0

    .line 143
    :sswitch_0
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2EscCapitalMBarMeta()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "end pattern at meta"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 146
    iget v0, p0, Lorg/joni/Lexer;->c:I

    if-eq v0, v1, :cond_3

    const-string v0, "invalid meta-code syntax"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 147
    :cond_3
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "end pattern at meta"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 148
    :cond_4
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 149
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v0, v1, :cond_5

    .line 150
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValue()I

    move-result v0

    iput v0, p0, Lorg/joni/Lexer;->c:I

    .line 152
    :cond_5
    iget v0, p0, Lorg/joni/Lexer;->c:I

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/joni/Lexer;->c:I

    goto :goto_1

    .line 154
    :cond_6
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValueBackSlash()V

    goto :goto_1

    .line 159
    :sswitch_1
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2EscCapitalCBarControl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "end pattern at control"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 161
    :cond_7
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 162
    iget v0, p0, Lorg/joni/Lexer;->c:I

    if-eq v0, v1, :cond_8

    const-string v0, "invalid control-code syntax"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 163
    :cond_8
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValueControl()V

    goto :goto_1

    .line 165
    :cond_9
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValueBackSlash()V

    goto :goto_1

    .line 170
    :sswitch_2
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->opEscCControl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValueControl()V

    goto/16 :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4d -> :sswitch_0
        0x63 -> :sswitch_2
    .end sparse-switch
.end method

.method private fetchEscapedValueBackSlash()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v1, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v0, v1}, Lorg/joni/ScanEnvironment;->convertBackslashValue(I)I

    move-result v0

    iput v0, p0, Lorg/joni/Lexer;->c:I

    .line 184
    return-void
.end method

.method private fetchEscapedValueControl()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "end pattern at control"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 195
    iget v0, p0, Lorg/joni/Lexer;->c:I

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 196
    const/16 v0, 0x7f

    iput v0, p0, Lorg/joni/Lexer;->c:I

    goto :goto_0

    .line 198
    :cond_2
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v0, v1, :cond_3

    .line 199
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValue()I

    move-result v0

    iput v0, p0, Lorg/joni/Lexer;->c:I

    .line 201
    :cond_3
    iget v0, p0, Lorg/joni/Lexer;->c:I

    and-int/lit16 v0, v0, 0x9f

    iput v0, p0, Lorg/joni/Lexer;->c:I

    goto :goto_0
.end method

.method private fetchNameForNamedGroup(IZ)I
    .locals 11
    .param p1, "startCode"    # I
    .param p2, "ref"    # Z

    .prologue
    const/16 v10, 0x29

    const/4 v0, 0x0

    .line 319
    iget v7, p0, Lorg/joni/Lexer;->p:I

    .line 320
    .local v7, "src":I
    iput v0, p0, Lorg/joni/Lexer;->value:I

    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "isNum":I
    const/4 v6, 0x1

    .line 325
    .local v6, "sign":I
    invoke-direct {p0, p1}, Lorg/joni/Lexer;->nameEndCodePoint(I)I

    move-result v1

    .line 326
    .local v1, "endCode":I
    iget v5, p0, Lorg/joni/Lexer;->p:I

    .line 327
    .local v5, "pnumHead":I
    iget v4, p0, Lorg/joni/Lexer;->stop:I

    .line 329
    .local v4, "nameEnd":I
    const/4 v2, 0x0

    .line 330
    .local v2, "err":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v8

    if-nez v8, :cond_7

    .line 331
    const-string v8, "group name is empty"

    invoke-virtual {p0, v8}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    if-nez v2, :cond_12

    .line 357
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 358
    iget v4, p0, Lorg/joni/Lexer;->p:I

    .line 359
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 360
    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-eq v8, v1, :cond_2

    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-ne v8, v10, :cond_d

    .line 361
    :cond_2
    const/4 v8, 0x2

    if-ne v3, v8, :cond_3

    const-string v2, "invalid group name <%n>"

    .line 383
    :cond_3
    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-eq v8, v1, :cond_4

    .line 384
    const-string v2, "invalid group name <%n>"

    .line 385
    iget v4, p0, Lorg/joni/Lexer;->stop:I

    .line 388
    :cond_4
    const/4 v0, 0x0

    .line 389
    .local v0, "backNum":I
    if-eqz v3, :cond_6

    .line 390
    invoke-virtual {p0}, Lorg/joni/Lexer;->mark()V

    .line 391
    iput v5, p0, Lorg/joni/Lexer;->p:I

    .line 392
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v0

    .line 393
    invoke-virtual {p0}, Lorg/joni/Lexer;->restore()V

    .line 394
    if-gez v0, :cond_11

    .line 395
    const-string v8, "too big number"

    invoke-virtual {p0, v8}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 399
    :cond_5
    :goto_2
    mul-int/2addr v0, v6

    .line 401
    :cond_6
    iput v4, p0, Lorg/joni/Lexer;->value:I

    .line 411
    .end local v0    # "backNum":I
    :goto_3
    return v0

    .line 333
    :cond_7
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 334
    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-ne v8, v1, :cond_8

    const-string v8, "group name is empty"

    invoke-virtual {p0, v8}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 335
    :cond_8
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 336
    if-eqz p2, :cond_9

    .line 337
    const/4 v3, 0x1

    goto :goto_0

    .line 339
    :cond_9
    const-string v2, "invalid group name <%n>"

    goto :goto_0

    .line 342
    :cond_a
    iget v8, p0, Lorg/joni/Lexer;->c:I

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_c

    .line 343
    if-eqz p2, :cond_b

    .line 344
    const/4 v3, 0x2

    .line 345
    const/4 v6, -0x1

    .line 346
    iget v5, p0, Lorg/joni/Lexer;->p:I

    goto :goto_0

    .line 348
    :cond_b
    const-string v2, "invalid group name <%n>"

    goto :goto_0

    .line 351
    :cond_c
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 352
    const-string v2, "invalid char in group name <%n>"

    goto :goto_0

    .line 365
    :cond_d
    if-eqz v3, :cond_10

    .line 366
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 367
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 369
    :cond_e
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 370
    const-string v2, "invalid char in group name <%n>"

    goto/16 :goto_1

    .line 372
    :cond_f
    const-string v2, "invalid group name <%n>"

    goto/16 :goto_1

    .line 377
    :cond_10
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 378
    const-string v2, "invalid char in group name <%n>"

    goto/16 :goto_1

    .line 396
    .restart local v0    # "backNum":I
    :cond_11
    if-nez v0, :cond_5

    .line 397
    const-string v8, "invalid group name <%n>"

    invoke-virtual {p0, v8, v7, v4}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    goto :goto_2

    .line 404
    .end local v0    # "backNum":I
    :cond_12
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 405
    iget v4, p0, Lorg/joni/Lexer;->p:I

    .line 406
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 407
    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-eq v8, v1, :cond_13

    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-ne v8, v10, :cond_12

    .line 409
    :cond_13
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v8

    if-nez v8, :cond_14

    iget v4, p0, Lorg/joni/Lexer;->stop:I

    .line 410
    :cond_14
    invoke-virtual {p0, v2, v7, v4}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    goto/16 :goto_3
.end method

.method private final fetchNameForNoNamedGroup(IZ)I
    .locals 10
    .param p1, "startCode"    # I
    .param p2, "ref"    # Z

    .prologue
    const/4 v0, 0x0

    .line 418
    iget v7, p0, Lorg/joni/Lexer;->p:I

    .line 419
    .local v7, "src":I
    iput v0, p0, Lorg/joni/Lexer;->value:I

    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "isNum":I
    const/4 v6, 0x1

    .line 424
    .local v6, "sign":I
    invoke-direct {p0, p1}, Lorg/joni/Lexer;->nameEndCodePoint(I)I

    move-result v1

    .line 425
    .local v1, "endCode":I
    iget v5, p0, Lorg/joni/Lexer;->p:I

    .line 426
    .local v5, "pnumHead":I
    iget v4, p0, Lorg/joni/Lexer;->stop:I

    .line 428
    .local v4, "nameEnd":I
    const/4 v2, 0x0

    .line 429
    .local v2, "err":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v8

    if-nez v8, :cond_4

    .line 430
    const-string v8, "group name is empty"

    invoke-virtual {p0, v8}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 446
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 447
    iget v4, p0, Lorg/joni/Lexer;->p:I

    .line 449
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 450
    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-eq v8, v1, :cond_1

    iget v8, p0, Lorg/joni/Lexer;->c:I

    const/16 v9, 0x29

    if-ne v8, v9, :cond_8

    .line 454
    :cond_1
    if-nez v2, :cond_2

    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-eq v8, v1, :cond_2

    .line 455
    const-string v2, "invalid group name <%n>"

    .line 456
    iget v4, p0, Lorg/joni/Lexer;->stop:I

    .line 459
    :cond_2
    if-nez v2, :cond_a

    .line 460
    invoke-virtual {p0}, Lorg/joni/Lexer;->mark()V

    .line 461
    iput v5, p0, Lorg/joni/Lexer;->p:I

    .line 462
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v0

    .line 463
    .local v0, "backNum":I
    invoke-virtual {p0}, Lorg/joni/Lexer;->restore()V

    .line 464
    if-gez v0, :cond_9

    .line 465
    const-string v8, "too big number"

    invoke-virtual {p0, v8}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 469
    :cond_3
    :goto_1
    mul-int/2addr v0, v6

    .line 471
    iput v4, p0, Lorg/joni/Lexer;->value:I

    .line 475
    .end local v0    # "backNum":I
    :goto_2
    return v0

    .line 432
    :cond_4
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 433
    iget v8, p0, Lorg/joni/Lexer;->c:I

    if-ne v8, v1, :cond_5

    const-string v8, "group name is empty"

    invoke-virtual {p0, v8}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 435
    :cond_5
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 436
    const/4 v3, 0x1

    goto :goto_0

    .line 437
    :cond_6
    iget v8, p0, Lorg/joni/Lexer;->c:I

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_7

    .line 438
    const/4 v3, 0x2

    .line 439
    const/4 v6, -0x1

    .line 440
    iget v5, p0, Lorg/joni/Lexer;->p:I

    goto :goto_0

    .line 442
    :cond_7
    const-string v2, "invalid char in group name <%n>"

    goto :goto_0

    .line 451
    :cond_8
    iget-object v8, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v9, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v8, v9}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v2, "invalid char in group name <%n>"

    goto :goto_0

    .line 466
    .restart local v0    # "backNum":I
    :cond_9
    if-nez v0, :cond_3

    .line 467
    const-string v8, "invalid group name <%n>"

    invoke-virtual {p0, v8, v7, v4}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    goto :goto_1

    .line 474
    .end local v0    # "backNum":I
    :cond_a
    invoke-virtual {p0, v2, v7, v4}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    goto :goto_2
.end method

.method private fetchNameWithLevel(ILorg/jcodings/Ptr;Lorg/jcodings/Ptr;)Z
    .locals 15
    .param p1, "startCode"    # I
    .param p2, "rbackNum"    # Lorg/jcodings/Ptr;
    .param p3, "rlevel"    # Lorg/jcodings/Ptr;

    .prologue
    .line 225
    iget v12, p0, Lorg/joni/Lexer;->p:I

    .line 226
    .local v12, "src":I
    const/4 v4, 0x0

    .line 227
    .local v4, "existLevel":Z
    const/4 v7, 0x0

    .line 228
    .local v7, "isNum":I
    const/4 v11, 0x1

    .line 230
    .local v11, "sign":I
    invoke-direct/range {p0 .. p1}, Lorg/joni/Lexer;->nameEndCodePoint(I)I

    move-result v2

    .line 231
    .local v2, "endCode":I
    iget v10, p0, Lorg/joni/Lexer;->p:I

    .line 232
    .local v10, "pnumHead":I
    iget v9, p0, Lorg/joni/Lexer;->stop:I

    .line 234
    .local v9, "nameEnd":I
    const/4 v3, 0x0

    .line 235
    .local v3, "err":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v13

    if-nez v13, :cond_a

    .line 236
    const-string v13, "group name is empty"

    invoke-virtual {p0, v13}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 252
    iget v9, p0, Lorg/joni/Lexer;->p:I

    .line 253
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 254
    iget v13, p0, Lorg/joni/Lexer;->c:I

    if-eq v13, v2, :cond_1

    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x29

    if-eq v13, v14, :cond_1

    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_1

    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_e

    .line 255
    :cond_1
    const/4 v13, 0x2

    if-ne v7, v13, :cond_2

    const-string v3, "invalid group name <%n>"

    .line 271
    :cond_2
    const/4 v6, 0x0

    .line 272
    .local v6, "isEndCode":Z
    if-nez v3, :cond_7

    iget v13, p0, Lorg/joni/Lexer;->c:I

    if-eq v13, v2, :cond_7

    .line 273
    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_3

    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_6

    .line 274
    :cond_3
    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_11

    const/4 v5, -0x1

    .line 276
    .local v5, "flag":I
    :goto_1
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 277
    iget-object v13, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v14, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v13, v14}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "invalid group name <%n>"

    iget v14, p0, Lorg/joni/Lexer;->stop:I

    invoke-virtual {p0, v13, v12, v14}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    .line 278
    :cond_4
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 279
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v8

    .line 280
    .local v8, "level":I
    if-gez v8, :cond_5

    const-string v13, "too big number"

    invoke-virtual {p0, v13}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 281
    :cond_5
    mul-int v13, v8, v5

    move-object/from16 v0, p3

    iput v13, v0, Lorg/jcodings/Ptr;->p:I

    .line 282
    const/4 v4, 0x1

    .line 284
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 285
    iget v13, p0, Lorg/joni/Lexer;->c:I

    if-ne v13, v2, :cond_12

    const/4 v6, 0x1

    .line 288
    .end local v5    # "flag":I
    .end local v8    # "level":I
    :cond_6
    :goto_2
    if-nez v6, :cond_7

    .line 289
    const-string v3, "invalid group name <%n>"

    .line 290
    iget v9, p0, Lorg/joni/Lexer;->stop:I

    .line 294
    :cond_7
    if-nez v3, :cond_14

    .line 295
    if-eqz v7, :cond_9

    .line 296
    invoke-virtual {p0}, Lorg/joni/Lexer;->mark()V

    .line 297
    iput v10, p0, Lorg/joni/Lexer;->p:I

    .line 298
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v1

    .line 299
    .local v1, "backNum":I
    invoke-virtual {p0}, Lorg/joni/Lexer;->restore()V

    .line 300
    if-gez v1, :cond_13

    .line 301
    const-string v13, "too big number"

    invoke-virtual {p0, v13}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 305
    :cond_8
    :goto_3
    mul-int v13, v1, v11

    move-object/from16 v0, p2

    iput v13, v0, Lorg/jcodings/Ptr;->p:I

    .line 307
    .end local v1    # "backNum":I
    :cond_9
    iput v9, p0, Lorg/joni/Lexer;->value:I

    .line 311
    .end local v4    # "existLevel":Z
    :goto_4
    return v4

    .line 238
    .end local v6    # "isEndCode":Z
    .restart local v4    # "existLevel":Z
    :cond_a
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 239
    iget v13, p0, Lorg/joni/Lexer;->c:I

    if-ne v13, v2, :cond_b

    const-string v13, "group name is empty"

    invoke-virtual {p0, v13}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 240
    :cond_b
    iget-object v13, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v14, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v13, v14}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 241
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 242
    :cond_c
    iget v13, p0, Lorg/joni/Lexer;->c:I

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_d

    .line 243
    const/4 v7, 0x2

    .line 244
    const/4 v11, -0x1

    .line 245
    iget v10, p0, Lorg/joni/Lexer;->p:I

    goto/16 :goto_0

    .line 246
    :cond_d
    iget-object v13, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v14, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v13, v14}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 247
    const-string v3, "invalid group name <%n>"

    goto/16 :goto_0

    .line 259
    :cond_e
    if-eqz v7, :cond_10

    .line 260
    iget-object v13, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v14, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v13, v14}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 261
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 263
    :cond_f
    const-string v3, "invalid group name <%n>"

    goto/16 :goto_0

    .line 266
    :cond_10
    iget-object v13, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v14, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v13, v14}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 267
    const-string v3, "invalid char in group name <%n>"

    goto/16 :goto_0

    .line 274
    .restart local v6    # "isEndCode":Z
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 285
    .restart local v5    # "flag":I
    .restart local v8    # "level":I
    :cond_12
    const/4 v6, 0x0

    goto :goto_2

    .line 302
    .end local v5    # "flag":I
    .end local v8    # "level":I
    .restart local v1    # "backNum":I
    :cond_13
    if-nez v1, :cond_8

    .line 303
    const-string v13, "invalid group name <%n>"

    iget v14, p0, Lorg/joni/Lexer;->stop:I

    invoke-virtual {p0, v13, v12, v14}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    goto :goto_3

    .line 310
    .end local v1    # "backNum":I
    :cond_14
    const-string v13, "invalid group name <%n>"

    invoke-virtual {p0, v13, v12, v9}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    .line 311
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private fetchRangeQuantifier()I
    .locals 9

    .prologue
    const/16 v8, 0x2710

    .line 50
    invoke-virtual {p0}, Lorg/joni/Lexer;->mark()V

    .line 51
    iget-object v6, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v6}, Lorg/joni/Syntax;->allowInvalidInterval()Z

    move-result v4

    .line 53
    .local v4, "synAllow":Z
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v6

    if-nez v6, :cond_1

    .line 54
    if-eqz v4, :cond_0

    .line 55
    const/4 v3, 0x1

    .line 122
    :goto_0
    return v3

    .line 57
    :cond_0
    const-string v6, "end pattern at left brace"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 61
    :cond_1
    if-nez v4, :cond_3

    .line 62
    invoke-virtual {p0}, Lorg/joni/Lexer;->peek()I

    move-result v6

    iput v6, p0, Lorg/joni/Lexer;->c:I

    .line 63
    iget v6, p0, Lorg/joni/Lexer;->c:I

    const/16 v7, 0x29

    if-eq v6, v7, :cond_2

    iget v6, p0, Lorg/joni/Lexer;->c:I

    const/16 v7, 0x28

    if-eq v6, v7, :cond_2

    iget v6, p0, Lorg/joni/Lexer;->c:I

    const/16 v7, 0x7c

    if-ne v6, v7, :cond_3

    .line 64
    :cond_2
    const-string v6, "end pattern at left brace"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 68
    :cond_3
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v0

    .line 69
    .local v0, "low":I
    if-gez v0, :cond_4

    const-string v6, "too big number for repeat range"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 70
    :cond_4
    if-le v0, v8, :cond_5

    const-string v6, "too big number for repeat range"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 72
    :cond_5
    const/4 v1, 0x0

    .line 73
    .local v1, "nonLow":Z
    iget v6, p0, Lorg/joni/Lexer;->p:I

    iget v7, p0, Lorg/joni/Lexer;->_p:I

    if-ne v6, v7, :cond_6

    .line 74
    iget-object v6, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v6}, Lorg/joni/Syntax;->allowIntervalLowAbbrev()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 75
    const/4 v0, 0x0

    .line 76
    const/4 v1, 0x1

    .line 82
    :cond_6
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto :goto_0

    .line 78
    :cond_7
    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto :goto_0

    .line 84
    :cond_8
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "ret":I
    iget v6, p0, Lorg/joni/Lexer;->c:I

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_d

    .line 88
    iget v2, p0, Lorg/joni/Lexer;->p:I

    .line 89
    .local v2, "prev":I
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v5

    .line 90
    .local v5, "up":I
    if-gez v5, :cond_9

    const-string v6, "too big number for repeat range"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 91
    :cond_9
    if-le v5, v8, :cond_a

    const-string v6, "too big number for repeat range"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 93
    :cond_a
    iget v6, p0, Lorg/joni/Lexer;->p:I

    if-ne v6, v2, :cond_c

    .line 94
    if-eqz v1, :cond_b

    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto :goto_0

    .line 95
    :cond_b
    const/4 v5, -0x1

    .line 104
    .end local v2    # "prev":I
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto/16 :goto_0

    .line 98
    .end local v5    # "up":I
    :cond_d
    if-eqz v1, :cond_e

    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto/16 :goto_0

    .line 99
    :cond_e
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 100
    move v5, v0

    .line 101
    .restart local v5    # "up":I
    const/4 v3, 0x2

    goto :goto_1

    .line 105
    :cond_f
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 107
    iget-object v6, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v6}, Lorg/joni/Syntax;->opEscBraceInterval()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 108
    iget v6, p0, Lorg/joni/Lexer;->c:I

    iget-object v7, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v7, v7, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v7, v7, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-eq v6, v7, :cond_10

    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto/16 :goto_0

    .line 109
    :cond_10
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 112
    :cond_11
    iget v6, p0, Lorg/joni/Lexer;->c:I

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_12

    invoke-direct {p0, v4}, Lorg/joni/Lexer;->invalidRangeQuantifier(Z)I

    move-result v3

    goto/16 :goto_0

    .line 114
    :cond_12
    invoke-static {v5}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v6

    if-nez v6, :cond_13

    if-le v0, v5, :cond_13

    .line 115
    const-string v6, "upper is smaller than lower in repeat range"

    invoke-virtual {p0, v6}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 118
    :cond_13
    iget-object v6, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v7, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    iput-object v7, v6, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 119
    iget-object v6, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v6, v0}, Lorg/joni/Token;->setRepeatLower(I)V

    .line 120
    iget-object v6, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v6, v5}, Lorg/joni/Token;->setRepeatUpper(I)V

    goto/16 :goto_0
.end method

.method private fetchTokenFor_anchor(I)V
    .locals 2
    .param p1, "subType"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->ANCHOR:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 759
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, p1}, Lorg/joni/Token;->setAnchor(I)V

    .line 760
    return-void
.end method

.method private fetchTokenFor_charProperty()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 946
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2EscPBraceCharProperty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 947
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 948
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->CHAR_PROPERTY:Lorg/joni/constants/TokenType;

    iput-object v3, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 949
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v0, p0, Lorg/joni/Lexer;->c:I

    const/16 v4, 0x50

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lorg/joni/Token;->setPropNot(Z)V

    .line 951
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2EscPBraceCircumflexNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 953
    iget v0, p0, Lorg/joni/Lexer;->c:I

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_3

    .line 954
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v3}, Lorg/joni/Token;->getPropNot()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/joni/Token;->setPropNot(Z)V

    .line 962
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 949
    goto :goto_0

    :cond_2
    move v1, v2

    .line 954
    goto :goto_1

    .line 956
    :cond_3
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    goto :goto_2

    .line 960
    :cond_4
    const-string v0, "invalid Unicode Property \\<%n>"

    iget v1, p0, Lorg/joni/Lexer;->c:I

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;C)V

    goto :goto_2
.end method

.method private fetchTokenFor_digit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 811
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 812
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 813
    .local v0, "last":I
    invoke-virtual {p0}, Lorg/joni/Lexer;->scanUnsignedNumber()I

    move-result v1

    .line 814
    .local v1, "num":I
    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 827
    :cond_0
    iget v2, p0, Lorg/joni/Lexer;->c:I

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    iget v2, p0, Lorg/joni/Lexer;->c:I

    const/16 v3, 0x39

    if-ne v2, v3, :cond_6

    .line 828
    :cond_1
    iput v0, p0, Lorg/joni/Lexer;->p:I

    .line 829
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 835
    :goto_0
    return-void

    .line 815
    :cond_2
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opDecimalBackref()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->numMem:I

    if-le v1, v2, :cond_3

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 816
    :cond_3
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->strictCheckBackref()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 817
    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v1, v2, :cond_4

    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v2, v2, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v2, v2, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    aget-object v2, v2, v1

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "invalid backref number/name"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 819
    :cond_5
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->BACKREF:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 820
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/joni/Token;->setBackrefNum(I)V

    .line 821
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setBackrefRef1(I)V

    .line 822
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v4}, Lorg/joni/Token;->setBackrefByName(Z)V

    .line 823
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v4}, Lorg/joni/Token;->setBackrefExistLevel(Z)V

    goto :goto_0

    .line 832
    :cond_6
    iput v0, p0, Lorg/joni/Lexer;->p:I

    .line 834
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_zero()V

    goto :goto_0
.end method

.method private fetchTokenFor_metaChars()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 965
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->anyChar:I

    if-ne v0, v1, :cond_1

    .line 966
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->ANYCHAR:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->anyTime:I

    if-ne v0, v1, :cond_2

    .line 968
    invoke-direct {p0, v3, v2}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto :goto_0

    .line 969
    :cond_2
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->zeroOrOneTime:I

    if-ne v0, v1, :cond_3

    .line 970
    invoke-direct {p0, v3, v4}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto :goto_0

    .line 971
    :cond_3
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->oneOrMoreTime:I

    if-ne v0, v1, :cond_4

    .line 972
    invoke-direct {p0, v4, v2}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto :goto_0

    .line 973
    :cond_4
    iget v0, p0, Lorg/joni/Lexer;->c:I

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v1, v1, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v1, v1, Lorg/joni/Syntax$MetaCharTable;->anyCharAnyTime:I

    if-ne v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->ANYCHAR_ANYTIME:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_0
.end method

.method private fetchTokenFor_namedBackref()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 854
    iget-object v7, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v7}, Lorg/joni/Syntax;->op2EscKNamedBackref()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 855
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 856
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 857
    iget v7, p0, Lorg/joni/Lexer;->c:I

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_0

    iget v7, p0, Lorg/joni/Lexer;->c:I

    const/16 v8, 0x27

    if-ne v7, v8, :cond_d

    .line 858
    :cond_0
    iget v3, p0, Lorg/joni/Lexer;->p:I

    .line 861
    .local v3, "last":I
    new-instance v5, Lorg/jcodings/Ptr;

    invoke-direct {v5}, Lorg/jcodings/Ptr;-><init>()V

    .line 862
    .local v5, "rbackNum":Lorg/jcodings/Ptr;
    new-instance v6, Lorg/jcodings/Ptr;

    invoke-direct {v6}, Lorg/jcodings/Ptr;-><init>()V

    .line 863
    .local v6, "rlevel":Lorg/jcodings/Ptr;
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v8, p0, Lorg/joni/Lexer;->c:I

    invoke-direct {p0, v8, v5, v6}, Lorg/joni/Lexer;->fetchNameWithLevel(ILorg/jcodings/Ptr;Lorg/jcodings/Ptr;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/joni/Token;->setBackrefExistLevel(Z)V

    .line 864
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v8, v6, Lorg/jcodings/Ptr;->p:I

    invoke-virtual {v7, v8}, Lorg/joni/Token;->setBackrefLevel(I)V

    .line 865
    iget v0, v5, Lorg/jcodings/Ptr;->p:I

    .line 869
    .local v0, "backNum":I
    iget v4, p0, Lorg/joni/Lexer;->value:I

    .line 871
    .local v4, "nameEnd":I
    if-eqz v0, :cond_5

    .line 872
    if-gez v0, :cond_1

    .line 873
    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->backrefRelToAbs(I)I

    move-result v0

    .line 874
    if-gtz v0, :cond_1

    const-string v7, "invalid backref number/name"

    invoke-virtual {p0, v7}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 877
    :cond_1
    iget-object v7, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v7}, Lorg/joni/Syntax;->strictCheckBackref()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v7, v7, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v0, v7, :cond_2

    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v7, v7, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    if-nez v7, :cond_3

    .line 878
    :cond_2
    const-string v7, "invalid backref number/name"

    invoke-virtual {p0, v7}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 880
    :cond_3
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v8, Lorg/joni/constants/TokenType;->BACKREF:Lorg/joni/constants/TokenType;

    iput-object v8, v7, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 881
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/joni/Token;->setBackrefByName(Z)V

    .line 882
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v7, v9}, Lorg/joni/Token;->setBackrefNum(I)V

    .line 883
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v7, v0}, Lorg/joni/Token;->setBackrefRef1(I)V

    .line 921
    .end local v0    # "backNum":I
    .end local v3    # "last":I
    .end local v4    # "nameEnd":I
    .end local v5    # "rbackNum":Lorg/jcodings/Ptr;
    .end local v6    # "rlevel":Lorg/jcodings/Ptr;
    :cond_4
    :goto_0
    return-void

    .line 885
    .restart local v0    # "backNum":I
    .restart local v3    # "last":I
    .restart local v4    # "nameEnd":I
    .restart local v5    # "rbackNum":Lorg/jcodings/Ptr;
    .restart local v6    # "rlevel":Lorg/jcodings/Ptr;
    :cond_5
    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v7, v7, Lorg/joni/ScanEnvironment;->reg:Lorg/joni/Regex;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v3, v4}, Lorg/joni/Regex;->nameToGroupNumbers([BII)Lorg/joni/NameEntry;

    move-result-object v1

    .line 886
    .local v1, "e":Lorg/joni/NameEntry;
    if-nez v1, :cond_6

    const-string v7, "undefined name <%n> reference"

    invoke-virtual {p0, v7, v3, v4}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;II)V

    .line 888
    :cond_6
    iget-object v7, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v7}, Lorg/joni/Syntax;->strictCheckBackref()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 889
    iget v7, v1, Lorg/joni/NameEntry;->backNum:I

    if-ne v7, v9, :cond_9

    .line 890
    iget v7, v1, Lorg/joni/NameEntry;->backRef1:I

    iget-object v8, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v8, v8, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v7, v8, :cond_7

    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v7, v7, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v7, v7, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget v8, v1, Lorg/joni/NameEntry;->backRef1:I

    aget-object v7, v7, v8

    if-nez v7, :cond_8

    .line 892
    :cond_7
    const-string v7, "invalid backref number/name"

    invoke-virtual {p0, v7}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 902
    :cond_8
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v8, Lorg/joni/constants/TokenType;->BACKREF:Lorg/joni/constants/TokenType;

    iput-object v8, v7, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 903
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v7, v9}, Lorg/joni/Token;->setBackrefByName(Z)V

    .line 905
    iget v7, v1, Lorg/joni/NameEntry;->backNum:I

    if-ne v7, v9, :cond_c

    .line 906
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v7, v9}, Lorg/joni/Token;->setBackrefNum(I)V

    .line 907
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v8, v1, Lorg/joni/NameEntry;->backRef1:I

    invoke-virtual {v7, v8}, Lorg/joni/Token;->setBackrefRef1(I)V

    goto :goto_0

    .line 894
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, v1, Lorg/joni/NameEntry;->backNum:I

    if-ge v2, v7, :cond_8

    .line 895
    iget-object v7, v1, Lorg/joni/NameEntry;->backRefs:[I

    aget v7, v7, v2

    iget-object v8, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v8, v8, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v7, v8, :cond_a

    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v7, v7, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v7, v7, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget-object v8, v1, Lorg/joni/NameEntry;->backRefs:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    if-nez v7, :cond_b

    .line 897
    :cond_a
    const-string v7, "invalid backref number/name"

    invoke-virtual {p0, v7}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 894
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 909
    .end local v2    # "i":I
    :cond_c
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v8, v1, Lorg/joni/NameEntry;->backNum:I

    invoke-virtual {v7, v8}, Lorg/joni/Token;->setBackrefNum(I)V

    .line 910
    iget-object v7, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v8, v1, Lorg/joni/NameEntry;->backRefs:[I

    invoke-virtual {v7, v8}, Lorg/joni/Token;->setBackrefRefs([I)V

    goto/16 :goto_0

    .line 914
    .end local v0    # "backNum":I
    .end local v1    # "e":Lorg/joni/NameEntry;
    .end local v3    # "last":I
    .end local v4    # "nameEnd":I
    .end local v5    # "rbackNum":Lorg/jcodings/Ptr;
    .end local v6    # "rlevel":Lorg/jcodings/Ptr;
    :cond_d
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 915
    const-string v7, "invalid back reference"

    invoke-virtual {p0, v7}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    :cond_e
    const-string v7, "invalid back reference"

    invoke-virtual {p0, v7}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fetchTokenFor_openBrace()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchRangeQuantifier()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 755
    :goto_0
    :pswitch_0
    return-void

    .line 744
    :pswitch_1
    invoke-direct {p0}, Lorg/joni/Lexer;->greedyCheck()V

    goto :goto_0

    .line 747
    :pswitch_2
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->fixedIntervalIsGreedyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-direct {p0}, Lorg/joni/Lexer;->possessiveCheck()V

    goto :goto_0

    .line 750
    :cond_0
    invoke-direct {p0}, Lorg/joni/Lexer;->greedyCheck()V

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fetchTokenFor_repeat(II)V
    .locals 2
    .param p1, "lower"    # I
    .param p2, "upper"    # I

    .prologue
    .line 735
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->OP_REPEAT:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 736
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, p1}, Lorg/joni/Token;->setRepeatLower(I)V

    .line 737
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, p2}, Lorg/joni/Token;->setRepeatUpper(I)V

    .line 738
    invoke-direct {p0}, Lorg/joni/Lexer;->greedyCheck()V

    .line 739
    return-void
.end method

.method private fetchTokenFor_subexpCall()V
    .locals 5

    .prologue
    .line 924
    iget-object v3, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v3}, Lorg/joni/Syntax;->op2EscGSubexpCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 926
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 927
    iget v3, p0, Lorg/joni/Lexer;->c:I

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/joni/Lexer;->c:I

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    .line 928
    :cond_0
    iget v1, p0, Lorg/joni/Lexer;->p:I

    .line 929
    .local v1, "last":I
    iget v3, p0, Lorg/joni/Lexer;->c:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/joni/Lexer;->fetchName(IZ)I

    move-result v0

    .line 930
    .local v0, "gNum":I
    iget v2, p0, Lorg/joni/Lexer;->value:I

    .line 931
    .local v2, "nameEnd":I
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v4, Lorg/joni/constants/TokenType;->CALL:Lorg/joni/constants/TokenType;

    iput-object v4, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 932
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v3, v1}, Lorg/joni/Token;->setCallNameP(I)V

    .line 933
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v3, v2}, Lorg/joni/Token;->setCallNameEnd(I)V

    .line 934
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v3, v0}, Lorg/joni/Token;->setCallGNum(I)V

    .line 943
    .end local v0    # "gNum":I
    .end local v1    # "last":I
    .end local v2    # "nameEnd":I
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 937
    const-string v3, "invalid subexp call"

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_3
    const-string v3, "invalid subexp call"

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchTokenFor_uHex()V
    .locals 4

    .prologue
    .line 795
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-nez v2, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 798
    .local v0, "last":I
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2EscUHex4()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->scanUnsignedHexadecimalNumber(I)I

    move-result v1

    .line 800
    .local v1, "num":I
    if-gez v1, :cond_2

    const-string v2, "too big number"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 801
    :cond_2
    iget v2, p0, Lorg/joni/Lexer;->p:I

    if-ne v2, v0, :cond_3

    .line 802
    const/4 v1, 0x0

    .line 804
    :cond_3
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 805
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/16 v3, 0x10

    iput v3, v2, Lorg/joni/Token;->base:I

    .line 806
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setCode(I)V

    goto :goto_0
.end method

.method private fetchTokenFor_xBrace()V
    .locals 6

    .prologue
    .line 763
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-nez v2, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 766
    .local v0, "last":I
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscXBraceHex8()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 767
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 768
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->scanUnsignedHexadecimalNumber(I)I

    move-result v1

    .line 769
    .local v1, "num":I
    if-gez v1, :cond_2

    const-string v2, "too big wide-char value"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 770
    :cond_2
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 771
    iget-object v2, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {p0}, Lorg/joni/Lexer;->peek()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jcodings/Encoding;->isXDigit(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "too long wide-char value"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 774
    :cond_3
    iget v2, p0, Lorg/joni/Lexer;->p:I

    iget-object v3, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v4, p0, Lorg/joni/Lexer;->bytes:[B

    iget v5, p0, Lorg/joni/Lexer;->stop:I

    invoke-virtual {v3, v4, v0, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_4

    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 775
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 776
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 777
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setCode(I)V

    goto :goto_0

    .line 780
    :cond_4
    iput v0, p0, Lorg/joni/Lexer;->p:I

    goto :goto_0

    .line 782
    .end local v1    # "num":I
    :cond_5
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscXHex2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->scanUnsignedHexadecimalNumber(I)I

    move-result v1

    .line 784
    .restart local v1    # "num":I
    if-gez v1, :cond_6

    const-string v2, "too big number"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 785
    :cond_6
    iget v2, p0, Lorg/joni/Lexer;->p:I

    if-ne v2, v0, :cond_7

    .line 786
    const/4 v1, 0x0

    .line 788
    :cond_7
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 789
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/16 v3, 0x10

    iput v3, v2, Lorg/joni/Token;->base:I

    .line 790
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setC(I)V

    goto/16 :goto_0
.end method

.method private fetchTokenFor_zero()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 838
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscOctal3()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 839
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 840
    .local v0, "last":I
    iget v2, p0, Lorg/joni/Lexer;->c:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->scanUnsignedOctalNumber(I)I

    move-result v1

    .line 841
    .local v1, "num":I
    if-gez v1, :cond_0

    const-string v2, "too big number"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 842
    :cond_0
    iget v2, p0, Lorg/joni/Lexer;->p:I

    if-ne v2, v0, :cond_1

    .line 843
    const/4 v1, 0x0

    .line 845
    :cond_1
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 846
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/16 v3, 0x8

    iput v3, v2, Lorg/joni/Token;->base:I

    .line 847
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setC(I)V

    .line 851
    .end local v0    # "last":I
    .end local v1    # "num":I
    :cond_2
    :goto_1
    return-void

    .line 840
    .restart local v0    # "last":I
    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    .line 848
    .end local v0    # "last":I
    :cond_4
    iget v2, p0, Lorg/joni/Lexer;->c:I

    if-eq v2, v3, :cond_2

    .line 849
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    goto :goto_1
.end method

.method private fetchTokenInCCFor_and()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2CClassSetOp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 639
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->CC_AND:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 641
    :cond_0
    return-void
.end method

.method private fetchTokenInCCFor_charType(ZI)V
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->CHAR_TYPE:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 523
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, p2}, Lorg/joni/Token;->setPropCType(I)V

    .line 524
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, p1}, Lorg/joni/Token;->setPropNot(Z)V

    .line 525
    return-void
.end method

.method private fetchTokenInCCFor_digit()V
    .locals 4

    .prologue
    .line 598
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscOctal3()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 600
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 601
    .local v0, "last":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->scanUnsignedOctalNumber(I)I

    move-result v1

    .line 602
    .local v1, "num":I
    if-gez v1, :cond_0

    const-string v2, "too big number"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 603
    :cond_0
    iget v2, p0, Lorg/joni/Lexer;->p:I

    if-ne v2, v0, :cond_1

    .line 604
    const/4 v1, 0x0

    .line 606
    :cond_1
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 607
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/16 v3, 0x8

    iput v3, v2, Lorg/joni/Token;->base:I

    .line 608
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setC(I)V

    .line 610
    .end local v0    # "last":I
    .end local v1    # "num":I
    :cond_2
    return-void
.end method

.method private fetchTokenInCCFor_p()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 528
    invoke-virtual {p0}, Lorg/joni/Lexer;->peek()I

    move-result v0

    .line 529
    .local v0, "c2":I
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscPBraceCharProperty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 531
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v4, Lorg/joni/constants/TokenType;->CHAR_PROPERTY:Lorg/joni/constants/TokenType;

    iput-object v4, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 532
    iget-object v4, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v5, 0x50

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lorg/joni/Token;->setPropNot(Z)V

    .line 534
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscPBraceCircumflexNot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetchTo()I

    move-result v0

    .line 536
    const/16 v1, 0x5e

    if-ne v0, v1, :cond_3

    .line 537
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v4, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v4}, Lorg/joni/Token;->getPropNot()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lorg/joni/Token;->setPropNot(Z)V

    .line 545
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 532
    goto :goto_0

    :cond_2
    move v2, v3

    .line 537
    goto :goto_1

    .line 539
    :cond_3
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    goto :goto_2

    .line 543
    :cond_4
    const-string v1, "invalid Unicode Property \\<%n>"

    iget v2, p0, Lorg/joni/Lexer;->c:I

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;C)V

    goto :goto_2
.end method

.method private fetchTokenInCCFor_posixBracket()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->opPosixBracket()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v1, p0, Lorg/joni/Lexer;->p:I

    iput v1, v0, Lorg/joni/Token;->backP:I

    .line 615
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 616
    sget-object v0, Lorg/joni/Lexer;->send:[I

    sget-object v1, Lorg/joni/Lexer;->send:[I

    array-length v1, v1

    const/16 v2, 0x5d

    invoke-direct {p0, v0, v1, v2}, Lorg/joni/Lexer;->strExistCheckWithEsc([III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->POSIX_BRACKET_OPEN:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 634
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 621
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2CClassSetOp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->CC_CC_OPEN:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2CClassSetOp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v1, Lorg/joni/constants/TokenType;->CC_CC_OPEN:Lorg/joni/constants/TokenType;

    iput-object v1, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchTokenInCCFor_u()V
    .locals 4

    .prologue
    .line 582
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-nez v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 585
    .local v0, "last":I
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2EscUHex4()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->scanUnsignedHexadecimalNumber(I)I

    move-result v1

    .line 587
    .local v1, "num":I
    if-gez v1, :cond_2

    const-string v2, "too big number"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 588
    :cond_2
    iget v2, p0, Lorg/joni/Lexer;->p:I

    if-ne v2, v0, :cond_3

    .line 589
    const/4 v1, 0x0

    .line 591
    :cond_3
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 592
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/16 v3, 0x10

    iput v3, v2, Lorg/joni/Token;->base:I

    .line 593
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v2, v1}, Lorg/joni/Token;->setCode(I)V

    goto :goto_0
.end method

.method private fetchTokenInCCFor_x()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 548
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget v1, p0, Lorg/joni/Lexer;->p:I

    .line 551
    .local v1, "last":I
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v3}, Lorg/joni/Syntax;->opEscXBraceHex8()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 552
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 553
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->scanUnsignedHexadecimalNumber(I)I

    move-result v2

    .line 554
    .local v2, "num":I
    if-gez v2, :cond_2

    const-string v3, "too big wide-char value"

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 555
    :cond_2
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 556
    invoke-virtual {p0}, Lorg/joni/Lexer;->peek()I

    move-result v0

    .line 557
    .local v0, "c2":I
    iget-object v3, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v0}, Lorg/jcodings/Encoding;->isXDigit(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "too long wide-char value"

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 560
    .end local v0    # "c2":I
    :cond_3
    iget v3, p0, Lorg/joni/Lexer;->p:I

    iget-object v4, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/Lexer;->bytes:[B

    iget v6, p0, Lorg/joni/Lexer;->stop:I

    invoke-virtual {v4, v5, v1, v6}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x7d

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 562
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v4, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    iput-object v4, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 563
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput v7, v3, Lorg/joni/Token;->base:I

    .line 564
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v3, v2}, Lorg/joni/Token;->setCode(I)V

    goto :goto_0

    .line 567
    :cond_4
    iput v1, p0, Lorg/joni/Lexer;->p:I

    goto :goto_0

    .line 569
    .end local v2    # "num":I
    :cond_5
    iget-object v3, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v3}, Lorg/joni/Syntax;->opEscXHex2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->scanUnsignedHexadecimalNumber(I)I

    move-result v2

    .line 571
    .restart local v2    # "num":I
    if-gez v2, :cond_6

    const-string v3, "too big number"

    invoke-virtual {p0, v3}, Lorg/joni/Lexer;->newValueException(Ljava/lang/String;)V

    .line 572
    :cond_6
    iget v3, p0, Lorg/joni/Lexer;->p:I

    if-ne v3, v1, :cond_7

    .line 573
    const/4 v2, 0x0

    .line 575
    :cond_7
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v4, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    iput-object v4, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 576
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput v7, v3, Lorg/joni/Token;->base:I

    .line 577
    iget-object v3, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v3, v2}, Lorg/joni/Token;->setC(I)V

    goto/16 :goto_0
.end method

.method private greedyCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1226
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->opQMarkNonGreedy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1230
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, v1}, Lorg/joni/Token;->setRepeatGreedy(Z)V

    .line 1231
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, v1}, Lorg/joni/Token;->setRepeatPossessive(Z)V

    .line 1235
    :goto_0
    return-void

    .line 1233
    :cond_0
    invoke-direct {p0}, Lorg/joni/Lexer;->possessiveCheck()V

    goto :goto_0
.end method

.method private invalidRangeQuantifier(Z)I
    .locals 1
    .param p1, "synAllow"    # Z

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/joni/Lexer;->restore()V

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    const-string v0, "invalid repeat range {lower,upper}"

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nameEndCodePoint(I)I
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 208
    :sswitch_0
    const/16 v0, 0x3e

    goto :goto_0

    .line 210
    :sswitch_1
    const/16 v0, 0x27

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private possessiveCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1238
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    .line 1239
    invoke-virtual {v0}, Lorg/joni/Syntax;->op2PlusPossessiveRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v1, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    .line 1240
    invoke-virtual {v0}, Lorg/joni/Syntax;->op2PlusPossessiveInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v1, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    if-ne v0, v1, :cond_2

    .line 1242
    :cond_1
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1244
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, v2}, Lorg/joni/Token;->setRepeatGreedy(Z)V

    .line 1245
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, v2}, Lorg/joni/Token;->setRepeatPossessive(Z)V

    .line 1250
    :goto_0
    return-void

    .line 1247
    :cond_2
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v0, v2}, Lorg/joni/Token;->setRepeatGreedy(Z)V

    .line 1248
    iget-object v0, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/joni/Token;->setRepeatPossessive(Z)V

    goto :goto_0
.end method

.method private strExistCheckWithEsc([III)Z
    .locals 9
    .param p1, "s"    # [I
    .param p2, "n"    # I
    .param p3, "bad"    # I

    .prologue
    const/4 v6, 0x0

    .line 488
    iget v2, p0, Lorg/joni/Lexer;->p:I

    .line 489
    .local v2, "p":I
    iget v4, p0, Lorg/joni/Lexer;->stop:I

    .line 491
    .local v4, "to":I
    const/4 v1, 0x0

    .line 492
    .local v1, "inEsc":Z
    const/4 v0, 0x0

    .line 493
    .local v0, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 494
    if-eqz v1, :cond_0

    .line 495
    const/4 v1, 0x0

    .line 496
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v2, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_0

    .line 498
    :cond_0
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v2, v4}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v5

    .line 499
    .local v5, "x":I
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v2, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    add-int v3, v2, v7

    .line 500
    .local v3, "q":I
    aget v7, p1, v6

    if-ne v5, v7, :cond_5

    .line 501
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p2, :cond_1

    if-ge v3, v4, :cond_1

    .line 502
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v3, v4}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v5

    .line 503
    aget v7, p1, v0

    if-eq v5, v7, :cond_3

    .line 506
    :cond_1
    if-lt v0, p2, :cond_4

    const/4 v6, 0x1

    .line 516
    .end local v3    # "q":I
    .end local v5    # "x":I
    :cond_2
    return v6

    .line 504
    .restart local v3    # "q":I
    .restart local v5    # "x":I
    :cond_3
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    add-int/2addr v3, v7

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_4
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v2, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_0

    .line 509
    :cond_5
    iget-object v7, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v8, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {v7, v8, v2, v4}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v5

    .line 510
    if-eq v5, p3, :cond_2

    .line 511
    iget-object v7, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v7, v7, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v7, v7, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v5, v7, :cond_6

    const/4 v1, 0x1

    .line 512
    :cond_6
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected final backrefRelToAbs(I)I
    .locals 1
    .param p1, "relNo"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v0, v0, Lorg/joni/ScanEnvironment;->numMem:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method protected final fetchCharPropertyToCType()I
    .locals 5

    .prologue
    .line 1253
    invoke-virtual {p0}, Lorg/joni/Lexer;->mark()V

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1256
    iget v0, p0, Lorg/joni/Lexer;->p:I

    .line 1257
    .local v0, "last":I
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1258
    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 1259
    iget-object v1, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/Lexer;->bytes:[B

    iget v3, p0, Lorg/joni/Lexer;->_p:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/jcodings/Encoding;->propertyNameToCType([BII)I

    move-result v1

    .line 1265
    .end local v0    # "last":I
    :goto_0
    return v1

    .line 1260
    .restart local v0    # "last":I
    :cond_1
    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    .line 1261
    :cond_2
    new-instance v1, Lorg/jcodings/exception/CharacterPropertyException;

    const-string v2, "invalid character property name <%n>"

    iget-object v3, p0, Lorg/joni/Lexer;->bytes:[B

    iget v4, p0, Lorg/joni/Lexer;->_p:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/jcodings/exception/CharacterPropertyException;-><init>(Ljava/lang/String;[BII)V

    throw v1

    .line 1264
    .end local v0    # "last":I
    :cond_3
    const-string v1, "internal parser error (bug)"

    invoke-virtual {p0, v1}, Lorg/joni/Lexer;->newInternalException(Ljava/lang/String;)V

    .line 1265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final fetchName(IZ)I
    .locals 1
    .param p1, "startCode"    # I
    .param p2, "ref"    # Z

    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Lorg/joni/Lexer;->fetchNameForNamedGroup(IZ)I

    move-result v0

    return v0
.end method

.method protected final fetchToken()Lorg/joni/constants/TokenType;
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 983
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-nez v2, :cond_1

    .line 984
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 985
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 1222
    :goto_1
    return-object v1

    .line 988
    :cond_1
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v3, Lorg/joni/constants/TokenType;->STRING:Lorg/joni/constants/TokenType;

    iput-object v3, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 989
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput v4, v2, Lorg/joni/Token;->base:I

    .line 990
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v3, p0, Lorg/joni/Lexer;->p:I

    iput v3, v2, Lorg/joni/Token;->backP:I

    .line 992
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 994
    iget v2, p0, Lorg/joni/Lexer;->c:I

    iget-object v3, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v3, v3, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v3, v3, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2IneffectiveEscape()Z

    move-result v2

    if-nez v2, :cond_5

    .line 995
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "end pattern at escape"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 997
    :cond_2
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v3, p0, Lorg/joni/Lexer;->p:I

    iput v3, v2, Lorg/joni/Token;->backP:I

    .line 998
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1000
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v3, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v2, v3}, Lorg/joni/Token;->setC(I)V

    .line 1001
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput-boolean v1, v2, Lorg/joni/Token;->escaped:Z

    .line 1002
    iget v2, p0, Lorg/joni/Lexer;->c:I

    packed-switch v2, :pswitch_data_0

    .line 1114
    :pswitch_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 1115
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValue()I

    move-result v0

    .line 1118
    .local v0, "num":I
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getC()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1119
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 1120
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v1, v0}, Lorg/joni/Token;->setCode(I)V

    .line 1222
    .end local v0    # "num":I
    :cond_3
    :goto_2
    :sswitch_0
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_1

    .line 1005
    :pswitch_1
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscAsteriskZeroInf()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4, v5}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto :goto_2

    .line 1008
    :pswitch_2
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscPlusOneInf()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v5}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto :goto_2

    .line 1011
    :pswitch_3
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscQMarkZeroOne()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v1}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto :goto_2

    .line 1014
    :pswitch_4
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscBraceInterval()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_openBrace()V

    goto :goto_2

    .line 1017
    :pswitch_5
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscVBarAlt()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_2

    .line 1020
    :pswitch_6
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscLParenSubexp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_OPEN:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_2

    .line 1023
    :pswitch_7
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscLParenSubexp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_2

    .line 1026
    :pswitch_8
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscWWord()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10c

    invoke-direct {p0, v4, v1}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_2

    .line 1029
    :pswitch_9
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscWWord()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10c

    invoke-direct {p0, v1, v2}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_2

    .line 1032
    :pswitch_a
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscBWordBound()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1035
    :pswitch_b
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscBWordBound()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1038
    :pswitch_c
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscLtGtWordBeginEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1041
    :pswitch_d
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscLtGtWordBeginEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1044
    :pswitch_e
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscSWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x109

    invoke-direct {p0, v4, v1}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_2

    .line 1047
    :pswitch_f
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscSWhiteSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x109

    invoke-direct {p0, v1, v2}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_2

    .line 1050
    :pswitch_10
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscDDigit()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x104

    invoke-direct {p0, v4, v1}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_2

    .line 1053
    :pswitch_11
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscDDigit()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x104

    invoke-direct {p0, v1, v2}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_2

    .line 1056
    :pswitch_12
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscHXDigit()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4, v7}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_2

    .line 1059
    :pswitch_13
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2EscHXDigit()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v7}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_2

    .line 1062
    :pswitch_14
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opEscAZBufAnchor()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1065
    :pswitch_15
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscAZBufAnchor()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1068
    :pswitch_16
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscAZBufAnchor()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v6}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1071
    :pswitch_17
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opEscCapitalGBeginAnchor()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1074
    :pswitch_18
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2EscGnuBufAnchor()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1077
    :pswitch_19
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscGnuBufAnchor()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v6}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    .line 1080
    :pswitch_1a
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_xBrace()V

    goto/16 :goto_2

    .line 1083
    :pswitch_1b
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_uHex()V

    goto/16 :goto_2

    .line 1094
    :pswitch_1c
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_digit()V

    goto/16 :goto_2

    .line 1097
    :pswitch_1d
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_zero()V

    goto/16 :goto_2

    .line 1100
    :pswitch_1e
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_namedBackref()V

    goto/16 :goto_2

    .line 1103
    :pswitch_1f
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_subexpCall()V

    goto/16 :goto_2

    .line 1106
    :pswitch_20
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscCapitalQQuote()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->QUOTE_OPEN:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto/16 :goto_2

    .line 1110
    :pswitch_21
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_charProperty()V

    goto/16 :goto_2

    .line 1122
    .restart local v0    # "num":I
    :cond_4
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v1, v1, Lorg/joni/Token;->backP:I

    iget-object v2, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget-object v3, p0, Lorg/joni/Lexer;->bytes:[B

    iget-object v4, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v4, v4, Lorg/joni/Token;->backP:I

    iget v5, p0, Lorg/joni/Lexer;->stop:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/joni/Lexer;->p:I

    goto/16 :goto_2

    .line 1129
    .end local v0    # "num":I
    :cond_5
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v3, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v2, v3}, Lorg/joni/Token;->setC(I)V

    .line 1130
    iget-object v2, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput-boolean v4, v2, Lorg/joni/Token;->escaped:Z

    .line 1132
    iget v2, p0, Lorg/joni/Lexer;->c:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opVariableMetaCharacters()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1133
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_metaChars()V

    goto/16 :goto_2

    .line 1138
    :cond_6
    iget v2, p0, Lorg/joni/Lexer;->c:I

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    .line 1210
    :sswitch_1
    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v2}, Lorg/joni/Option;->isExtend(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 1140
    :sswitch_2
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opDotAnyChar()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->ANYCHAR:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto/16 :goto_2

    .line 1143
    :sswitch_3
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opAsteriskZeroInf()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4, v5}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto/16 :goto_2

    .line 1146
    :sswitch_4
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opPlusOneInf()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v5}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto/16 :goto_2

    .line 1149
    :sswitch_5
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opQMarkZeroOne()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v1}, Lorg/joni/Lexer;->fetchTokenFor_repeat(II)V

    goto/16 :goto_2

    .line 1152
    :sswitch_6
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opBraceInterval()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenFor_openBrace()V

    goto/16 :goto_2

    .line 1155
    :sswitch_7
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opVBarAlt()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto/16 :goto_2

    .line 1159
    :sswitch_8
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2QMarkGroupEffect()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1160
    invoke-virtual {p0}, Lorg/joni/Lexer;->inc()V

    .line 1161
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->peekIs(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1162
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1164
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "end pattern in group"

    invoke-virtual {p0, v2}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 1165
    :cond_8
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1166
    iget v2, p0, Lorg/joni/Lexer;->c:I

    iget-object v3, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v3, v3, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v3, v3, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v2, v3, :cond_9

    .line 1167
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    goto :goto_3

    .line 1169
    :cond_9
    iget v2, p0, Lorg/joni/Lexer;->c:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_7

    goto/16 :goto_0

    .line 1174
    :cond_a
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 1177
    :cond_b
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opLParenSubexp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_OPEN:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto/16 :goto_2

    .line 1180
    :sswitch_9
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opLParenSubexp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto/16 :goto_2

    .line 1183
    :sswitch_a
    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->opLineAnchor()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v2}, Lorg/joni/Option;->isSingleline(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_4
    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x2

    goto :goto_4

    .line 1186
    :sswitch_b
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opLineAnchor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v1}, Lorg/joni/Option;->isSingleline(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x10

    :goto_5
    invoke-direct {p0, v1}, Lorg/joni/Lexer;->fetchTokenFor_anchor(I)V

    goto/16 :goto_2

    :cond_d
    const/16 v1, 0x20

    goto :goto_5

    .line 1189
    :sswitch_c
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->opBracketCC()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->CC_CC_OPEN:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto/16 :goto_2

    .line 1196
    :sswitch_d
    iget-object v2, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v2}, Lorg/joni/Option;->isExtend(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1197
    :cond_e
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 1199
    iget-object v2, p0, Lorg/joni/Lexer;->enc:Lorg/jcodings/Encoding;

    iget v3, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v2, v3}, Lorg/jcodings/Encoding;->isNewLine(I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_19
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_0
        :pswitch_14
        :pswitch_b
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_8
        :pswitch_1a
        :pswitch_0
        :pswitch_16
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1138
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_d
        0x24 -> :sswitch_b
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x2a -> :sswitch_3
        0x2b -> :sswitch_4
        0x2e -> :sswitch_2
        0x3f -> :sswitch_5
        0x5b -> :sswitch_c
        0x5d -> :sswitch_0
        0x5e -> :sswitch_a
        0x7b -> :sswitch_6
        0x7c -> :sswitch_7
    .end sparse-switch
.end method

.method protected final fetchTokenInCC()Lorg/joni/constants/TokenType;
    .locals 8

    .prologue
    const/16 v7, 0x109

    const/16 v6, 0x104

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 644
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 646
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 727
    :goto_0
    return-object v1

    .line 649
    :cond_0
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 650
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->CHAR:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 651
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput v3, v1, Lorg/joni/Token;->base:I

    .line 652
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v2, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v1, v2}, Lorg/joni/Token;->setC(I)V

    .line 653
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput-boolean v3, v1, Lorg/joni/Token;->escaped:Z

    .line 655
    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_2

    .line 656
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 727
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_0

    .line 657
    :cond_2
    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    .line 658
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->CC_RANGE:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_1

    .line 659
    :cond_3
    iget v1, p0, Lorg/joni/Lexer;->c:I

    iget-object v2, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    iget-object v2, v2, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v2, v2, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v1, v2, :cond_6

    .line 660
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->backSlashEscapeInCC()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_0

    .line 661
    :cond_4
    invoke-virtual {p0}, Lorg/joni/Lexer;->left()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "end pattern at escape"

    invoke-virtual {p0, v1}, Lorg/joni/Lexer;->newSyntaxException(Ljava/lang/String;)V

    .line 662
    :cond_5
    invoke-virtual {p0}, Lorg/joni/Lexer;->fetch()V

    .line 663
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iput-boolean v4, v1, Lorg/joni/Token;->escaped:Z

    .line 664
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    iget v2, p0, Lorg/joni/Lexer;->c:I

    invoke-virtual {v1, v2}, Lorg/joni/Token;->setC(I)V

    .line 666
    iget v1, p0, Lorg/joni/Lexer;->c:I

    sparse-switch v1, :sswitch_data_0

    .line 713
    invoke-virtual {p0}, Lorg/joni/Lexer;->unfetch()V

    .line 714
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchEscapedValue()I

    move-result v0

    .line 715
    .local v0, "num":I
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getC()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 716
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    invoke-virtual {v1, v0}, Lorg/joni/Token;->setCode(I)V

    .line 717
    iget-object v1, p0, Lorg/joni/Lexer;->token:Lorg/joni/Token;

    sget-object v2, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    iput-object v2, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    goto :goto_1

    .line 668
    .end local v0    # "num":I
    :sswitch_0
    const/16 v1, 0x10c

    invoke-direct {p0, v3, v1}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_1

    .line 671
    :sswitch_1
    const/16 v1, 0x10c

    invoke-direct {p0, v4, v1}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_1

    .line 674
    :sswitch_2
    invoke-direct {p0, v3, v6}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_1

    .line 677
    :sswitch_3
    invoke-direct {p0, v4, v6}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_1

    .line 680
    :sswitch_4
    invoke-direct {p0, v3, v7}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_1

    .line 683
    :sswitch_5
    invoke-direct {p0, v4, v7}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto :goto_1

    .line 686
    :sswitch_6
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscHXDigit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v5}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_1

    .line 689
    :sswitch_7
    iget-object v1, p0, Lorg/joni/Lexer;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2EscHXDigit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v4, v5}, Lorg/joni/Lexer;->fetchTokenInCCFor_charType(ZI)V

    goto/16 :goto_1

    .line 693
    :sswitch_8
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenInCCFor_p()V

    goto/16 :goto_1

    .line 696
    :sswitch_9
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenInCCFor_x()V

    goto/16 :goto_1

    .line 699
    :sswitch_a
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenInCCFor_u()V

    goto/16 :goto_1

    .line 709
    :sswitch_b
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenInCCFor_digit()V

    goto/16 :goto_1

    .line 722
    :cond_6
    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_7

    .line 723
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenInCCFor_posixBracket()V

    goto/16 :goto_1

    .line 724
    :cond_7
    iget v1, p0, Lorg/joni/Lexer;->c:I

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 725
    invoke-direct {p0}, Lorg/joni/Lexer;->fetchTokenInCCFor_and()V

    goto/16 :goto_1

    .line 666
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_b
        0x31 -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x34 -> :sswitch_b
        0x35 -> :sswitch_b
        0x36 -> :sswitch_b
        0x37 -> :sswitch_b
        0x44 -> :sswitch_3
        0x48 -> :sswitch_7
        0x50 -> :sswitch_8
        0x53 -> :sswitch_5
        0x57 -> :sswitch_1
        0x64 -> :sswitch_2
        0x68 -> :sswitch_6
        0x70 -> :sswitch_8
        0x73 -> :sswitch_4
        0x75 -> :sswitch_a
        0x77 -> :sswitch_0
        0x78 -> :sswitch_9
    .end sparse-switch
.end method

.method protected final syntaxWarn(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/joni/Lexer;->env:Lorg/joni/ScanEnvironment;

    iget-object v0, v0, Lorg/joni/ScanEnvironment;->reg:Lorg/joni/Regex;

    iget-object v0, v0, Lorg/joni/Regex;->warnings:Lorg/joni/WarnCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/joni/Lexer;->bytes:[B

    invoke-virtual {p0}, Lorg/joni/Lexer;->getBegin()I

    move-result v4

    invoke-virtual {p0}, Lorg/joni/Lexer;->getEnd()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 1276
    return-void
.end method

.method protected final syntaxWarn(Ljava/lang/String;C)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "c"    # C

    .prologue
    .line 1269
    const-string v0, "<%n>"

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joni/Lexer;->syntaxWarn(Ljava/lang/String;)V

    .line 1270
    return-void
.end method
