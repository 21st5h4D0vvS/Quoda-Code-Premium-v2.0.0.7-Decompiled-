.class final Lorg/joni/Analyser;
.super Lorg/joni/Parser;
.source "Analyser.java"


# static fields
.field private static final CEC_CONT_BIG_REPEAT:I = 0x4

.field private static final CEC_INFINITE_NUM:I = 0x7fffffff

.field private static final CEC_IN_FINITE_REPEAT:I = 0x2

.field private static final CEC_IN_INFINITE_REPEAT:I = 0x1

.field private static final CEC_THRES_NUM_BIG_REPEAT:I = 0x200

.field private static final EXPAND_STRING_MAX_LENGTH:I = 0x64

.field private static final FOUND_CALLED_NODE:I = 0x1

.field private static final GET_CHAR_LEN_TOP_ALT_VARLEN:I = -0x2

.field private static final GET_CHAR_LEN_VARLEN:I = -0x1

.field private static final IN_ALT:I = 0x1

.field private static final IN_NOT:I = 0x2

.field private static final IN_REPEAT:I = 0x4

.field private static final IN_VAR_REPEAT:I = 0x8

.field private static final MAX_NODE_OPT_INFO_REF_COUNT:I = 0x5

.field private static final RECURSION_EXIST:I = 0x1

.field private static final RECURSION_INFINITE:I = 0x2

.field private static final THRESHOLD_CASE_FOLD_ALT_FOR_EXPANSION:I = 0x8


# direct methods
.method protected constructor <init>(Lorg/joni/ScanEnvironment;[BII)V
    .locals 0
    .param p1, "env"    # Lorg/joni/ScanEnvironment;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joni/Parser;-><init>(Lorg/joni/ScanEnvironment;[BII)V

    .line 62
    return-void
.end method

.method private checkTypeTree(Lorg/joni/ast/Node;III)Z
    .locals 6
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "typeMask"    # I
    .param p3, "encloseMask"    # I
    .param p4, "anchorMask"    # I

    .prologue
    const/4 v4, 0x1

    .line 960
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType2Bit()I

    move-result v5

    and-int/2addr v5, p2

    if-nez v5, :cond_1

    move v3, v4

    .line 995
    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    return v3

    .line 962
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :cond_1
    const/4 v3, 0x0

    .line 964
    .local v3, "invalid":Z
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 974
    :pswitch_0
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v4, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/joni/Analyser;->checkTypeTree(Lorg/joni/ast/Node;III)Z

    move-result v3

    .line 975
    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_1
    move-object v1, p1

    .line 967
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 969
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_2
    iget-object v4, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/joni/Analyser;->checkTypeTree(Lorg/joni/ast/Node;III)Z

    move-result v3

    .line 970
    if-nez v3, :cond_0

    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_2

    goto :goto_0

    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_2
    move-object v2, p1

    .line 978
    check-cast v2, Lorg/joni/ast/EncloseNode;

    .line 979
    .local v2, "en":Lorg/joni/ast/EncloseNode;
    iget v5, v2, Lorg/joni/ast/EncloseNode;->type:I

    and-int/2addr v5, p3

    if-nez v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 980
    :cond_3
    iget-object v4, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/joni/Analyser;->checkTypeTree(Lorg/joni/ast/Node;III)Z

    move-result v3

    .line 981
    goto :goto_0

    .end local v2    # "en":Lorg/joni/ast/EncloseNode;
    :pswitch_3
    move-object v0, p1

    .line 984
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 985
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v5, v0, Lorg/joni/ast/AnchorNode;->type:I

    and-int/2addr v5, p4

    if-nez v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 987
    :cond_4
    iget-object v4, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/joni/Analyser;->checkTypeTree(Lorg/joni/ast/Node;III)Z

    move-result v3

    goto :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private divideLookBehindAlternatives(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;
    .locals 7
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1313
    move-object v0, p1

    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1314
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v1, v0, Lorg/joni/ast/AnchorNode;->type:I

    .line 1315
    .local v1, "anchorType":I
    iget-object v2, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    .local v2, "head":Lorg/joni/ast/Node;
    move-object v6, v2

    .line 1316
    check-cast v6, Lorg/joni/ast/ConsAltNode;

    iget-object v4, v6, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    .line 1318
    .local v4, "np":Lorg/joni/ast/Node;
    invoke-direct {p0, p1, v2}, Lorg/joni/Analyser;->swap(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)V

    .line 1320
    move-object v5, p1

    .line 1321
    .local v5, "tmp":Lorg/joni/ast/Node;
    move-object p1, v2

    .line 1322
    move-object v2, v5

    move-object v6, p1

    .line 1324
    check-cast v6, Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v6, v2}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 1325
    check-cast v2, Lorg/joni/ast/AnchorNode;

    .end local v2    # "head":Lorg/joni/ast/Node;
    invoke-virtual {v2, v4}, Lorg/joni/ast/AnchorNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 1326
    move-object v4, p1

    .line 1328
    :goto_0
    check-cast v4, Lorg/joni/ast/ConsAltNode;

    .end local v4    # "np":Lorg/joni/ast/Node;
    iget-object v4, v4, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .restart local v4    # "np":Lorg/joni/ast/Node;
    if-eqz v4, :cond_0

    .line 1329
    new-instance v3, Lorg/joni/ast/AnchorNode;

    invoke-direct {v3, v1}, Lorg/joni/ast/AnchorNode;-><init>(I)V

    .local v3, "insert":Lorg/joni/ast/AnchorNode;
    move-object v6, v4

    .line 1330
    check-cast v6, Lorg/joni/ast/ConsAltNode;

    iget-object v6, v6, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {v3, v6}, Lorg/joni/ast/AnchorNode;->setTarget(Lorg/joni/ast/Node;)V

    move-object v6, v4

    .line 1331
    check-cast v6, Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v6, v3}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    goto :goto_0

    .line 1334
    .end local v3    # "insert":Lorg/joni/ast/AnchorNode;
    :cond_0
    const/16 v6, 0x2000

    if-ne v1, v6, :cond_2

    .line 1335
    move-object v4, p1

    :cond_1
    move-object v6, v4

    .line 1337
    check-cast v6, Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v6}, Lorg/joni/ast/ConsAltNode;->toListNode()V

    .line 1338
    check-cast v4, Lorg/joni/ast/ConsAltNode;

    .end local v4    # "np":Lorg/joni/ast/Node;
    iget-object v4, v4, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .restart local v4    # "np":Lorg/joni/ast/Node;
    if-nez v4, :cond_1

    .line 1341
    :cond_2
    return-object p1
.end method

.method private expandCaseFoldMakeRemString([BII)Lorg/joni/ast/Node;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 1480
    new-instance v0, Lorg/joni/ast/StringNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/joni/ast/StringNode;-><init>([BII)V

    .line 1482
    .local v0, "node":Lorg/joni/ast/StringNode;
    invoke-direct {p0, v0}, Lorg/joni/Analyser;->updateStringNodeCaseFold(Lorg/joni/ast/Node;)V

    .line 1483
    invoke-virtual {v0}, Lorg/joni/ast/StringNode;->setAmbig()V

    .line 1484
    invoke-virtual {v0}, Lorg/joni/ast/StringNode;->setDontGetOptInfo()V

    .line 1485
    return-object v0
.end method

.method private expandCaseFoldString(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;
    .locals 18
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1544
    move-object/from16 v13, p1

    check-cast v13, Lorg/joni/ast/StringNode;

    .line 1546
    .local v13, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual {v13}, Lorg/joni/ast/StringNode;->isAmbig()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v13}, Lorg/joni/ast/StringNode;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object/from16 v17, p1

    .line 1615
    :goto_0
    return-object v17

    .line 1548
    :cond_1
    iget-object v6, v13, Lorg/joni/ast/StringNode;->bytes:[B

    .line 1549
    .local v6, "bytes":[B
    iget v7, v13, Lorg/joni/ast/StringNode;->p:I

    .line 1550
    .local v7, "p":I
    iget v9, v13, Lorg/joni/ast/StringNode;->end:I

    .line 1551
    .local v9, "end":I
    const/4 v11, 0x1

    .line 1553
    .local v11, "altNum":I
    const/16 v16, 0x0

    .local v16, "topRoot":Lorg/joni/ast/ConsAltNode;
    const/4 v12, 0x0

    .line 1554
    .local v12, "root":Lorg/joni/ast/ConsAltNode;
    new-instance v10, Lorg/jcodings/ObjPtr;

    invoke-direct {v10}, Lorg/jcodings/ObjPtr;-><init>()V

    .line 1555
    .local v10, "prevNode":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<Lorg/joni/ast/Node;>;"
    const/4 v15, 0x0

    .line 1557
    .local v15, "stringNode":Lorg/joni/ast/StringNode;
    :goto_1
    if-ge v7, v9, :cond_5

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v4, v4, Lorg/joni/Regex;->caseFoldFlag:I

    invoke-virtual {v3, v4, v6, v7, v9}, Lorg/jcodings/Encoding;->caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;

    move-result-object v5

    .line 1559
    .local v5, "items":[Lorg/jcodings/CaseFoldCodeItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v6, v7, v9}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v8

    .line 1561
    .local v8, "len":I
    array-length v3, v5

    if-nez v3, :cond_4

    .line 1562
    if-nez v15, :cond_3

    .line 1563
    if-nez v12, :cond_2

    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1564
    const/4 v4, 0x0

    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/Node;

    invoke-static {v4, v3}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    move-result-object v12

    move-object/from16 v16, v12

    .line 1567
    :cond_2
    new-instance v15, Lorg/joni/ast/StringNode;

    .end local v15    # "stringNode":Lorg/joni/ast/StringNode;
    invoke-direct {v15}, Lorg/joni/ast/StringNode;-><init>()V

    .restart local v15    # "stringNode":Lorg/joni/ast/StringNode;
    iput-object v15, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 1569
    if-eqz v12, :cond_3

    invoke-static {v12, v15}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    .line 1573
    :cond_3
    add-int v3, v7, v8

    invoke-virtual {v15, v6, v7, v3}, Lorg/joni/ast/StringNode;->cat([BII)V

    .line 1595
    :goto_2
    add-int/2addr v7, v8

    .line 1596
    goto :goto_1

    .line 1575
    :cond_4
    array-length v3, v5

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v11, v3

    .line 1576
    const/16 v3, 0x8

    if-le v11, v3, :cond_8

    .line 1598
    .end local v5    # "items":[Lorg/jcodings/CaseFoldCodeItem;
    .end local v8    # "len":I
    :cond_5
    if-ge v7, v9, :cond_7

    .line 1599
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Lorg/joni/Analyser;->expandCaseFoldMakeRemString([BII)Lorg/joni/ast/Node;

    move-result-object v14

    .line 1601
    .local v14, "srem":Lorg/joni/ast/Node;
    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    if-eqz v3, :cond_6

    if-nez v12, :cond_6

    .line 1602
    const/4 v4, 0x0

    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/Node;

    invoke-static {v4, v3}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    move-result-object v12

    move-object/from16 v16, v12

    .line 1605
    :cond_6
    if-nez v12, :cond_d

    .line 1606
    iput-object v14, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 1612
    .end local v14    # "srem":Lorg/joni/ast/Node;
    :cond_7
    :goto_3
    if-eqz v16, :cond_e

    move-object/from16 v17, v16

    .line 1614
    .local v17, "xnode":Lorg/joni/ast/Node;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/joni/Analyser;->swap(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)V

    goto/16 :goto_0

    .line 1578
    .end local v17    # "xnode":Lorg/joni/ast/Node;
    .restart local v5    # "items":[Lorg/jcodings/CaseFoldCodeItem;
    .restart local v8    # "len":I
    :cond_8
    if-nez v12, :cond_9

    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 1579
    const/4 v4, 0x0

    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/Node;

    invoke-static {v4, v3}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    move-result-object v12

    move-object/from16 v16, v12

    .line 1582
    :cond_9
    array-length v4, v5

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/joni/Analyser;->expandCaseFoldStringAlt(I[Lorg/jcodings/CaseFoldCodeItem;[BIIILorg/jcodings/ObjPtr;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1583
    if-nez v12, :cond_b

    .line 1584
    iget-object v0, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "topRoot":Lorg/joni/ast/ConsAltNode;
    check-cast v16, Lorg/joni/ast/ConsAltNode;

    .line 1589
    .restart local v16    # "topRoot":Lorg/joni/ast/ConsAltNode;
    :goto_5
    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/ConsAltNode;

    iget-object v12, v3, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    .end local v12    # "root":Lorg/joni/ast/ConsAltNode;
    check-cast v12, Lorg/joni/ast/ConsAltNode;

    .line 1593
    .restart local v12    # "root":Lorg/joni/ast/ConsAltNode;
    :cond_a
    :goto_6
    const/4 v15, 0x0

    goto :goto_2

    .line 1586
    :cond_b
    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/Node;

    invoke-static {v12, v3}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    goto :goto_5

    .line 1591
    :cond_c
    if-eqz v12, :cond_a

    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/Node;

    invoke-static {v12, v3}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    goto :goto_6

    .line 1608
    .end local v5    # "items":[Lorg/jcodings/CaseFoldCodeItem;
    .end local v8    # "len":I
    .restart local v14    # "srem":Lorg/joni/ast/Node;
    :cond_d
    invoke-static {v12, v14}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    goto :goto_3

    .line 1612
    .end local v14    # "srem":Lorg/joni/ast/Node;
    :cond_e
    iget-object v3, v10, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v3, Lorg/joni/ast/Node;

    move-object/from16 v17, v3

    goto :goto_4
.end method

.method private expandCaseFoldStringAlt(I[Lorg/jcodings/CaseFoldCodeItem;[BIIILorg/jcodings/ObjPtr;)Z
    .locals 14
    .param p1, "itemNum"    # I
    .param p2, "items"    # [Lorg/jcodings/CaseFoldCodeItem;
    .param p3, "bytes"    # [B
    .param p4, "p"    # I
    .param p5, "slen"    # I
    .param p6, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/jcodings/CaseFoldCodeItem;",
            "[BIII",
            "Lorg/jcodings/ObjPtr",
            "<",
            "Lorg/joni/ast/Node;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1490
    .local p7, "node":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<Lorg/joni/ast/Node;>;"
    const/4 v11, 0x0

    .line 1491
    .local v11, "varlen":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 1492
    aget-object v12, p2, v4

    iget v12, v12, Lorg/jcodings/CaseFoldCodeItem;->byteLen:I

    move/from16 v0, p5

    if-eq v12, v0, :cond_1

    .line 1493
    const/4 v11, 0x1

    .line 1498
    :cond_0
    const/4 v10, 0x0

    .line 1499
    .local v10, "varANode":Lorg/joni/ast/ConsAltNode;
    if-eqz v11, :cond_2

    .line 1500
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v10

    move-object/from16 v0, p7

    iput-object v10, v0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 1502
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/joni/ast/ConsAltNode;->newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v6

    .line 1503
    .local v6, "listNode":Lorg/joni/ast/ConsAltNode;
    invoke-virtual {v10, v6}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 1505
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v2

    .line 1506
    .local v2, "altNode":Lorg/joni/ast/ConsAltNode;
    invoke-virtual {v6, v2}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 1511
    .end local v6    # "listNode":Lorg/joni/ast/ConsAltNode;
    :goto_1
    new-instance v9, Lorg/joni/ast/StringNode;

    add-int v12, p4, p5

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v9, v0, v1, v12}, Lorg/joni/ast/StringNode;-><init>([BII)V

    .line 1512
    .local v9, "snode":Lorg/joni/ast/StringNode;
    invoke-virtual {v2, v9}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 1514
    const/4 v4, 0x0

    :goto_2
    if-ge v4, p1, :cond_6

    .line 1515
    new-instance v9, Lorg/joni/ast/StringNode;

    .end local v9    # "snode":Lorg/joni/ast/StringNode;
    invoke-direct {v9}, Lorg/joni/ast/StringNode;-><init>()V

    .line 1517
    .restart local v9    # "snode":Lorg/joni/ast/StringNode;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    aget-object v12, p2, v4

    iget v12, v12, Lorg/jcodings/CaseFoldCodeItem;->codeLen:I

    if-ge v5, v12, :cond_3

    aget-object v12, p2, v4

    iget-object v12, v12, Lorg/jcodings/CaseFoldCodeItem;->code:[I

    aget v12, v12, v5

    iget-object v13, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v9, v12, v13}, Lorg/joni/ast/StringNode;->catCode(ILorg/jcodings/Encoding;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1491
    .end local v2    # "altNode":Lorg/joni/ast/ConsAltNode;
    .end local v5    # "j":I
    .end local v9    # "snode":Lorg/joni/ast/StringNode;
    .end local v10    # "varANode":Lorg/joni/ast/ConsAltNode;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1508
    .restart local v10    # "varANode":Lorg/joni/ast/ConsAltNode;
    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v2

    .restart local v2    # "altNode":Lorg/joni/ast/ConsAltNode;
    move-object/from16 v0, p7

    iput-object v2, v0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    goto :goto_1

    .line 1519
    .restart local v5    # "j":I
    .restart local v9    # "snode":Lorg/joni/ast/StringNode;
    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v3

    .line 1520
    .local v3, "an":Lorg/joni/ast/ConsAltNode;
    aget-object v12, p2, v4

    iget v12, v12, Lorg/jcodings/CaseFoldCodeItem;->byteLen:I

    move/from16 v0, p5

    if-eq v12, v0, :cond_5

    .line 1521
    aget-object v12, p2, v4

    iget v12, v12, Lorg/jcodings/CaseFoldCodeItem;->byteLen:I

    add-int v7, p4, v12

    .line 1522
    .local v7, "q":I
    move/from16 v0, p6

    if-ge v7, v0, :cond_4

    .line 1523
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-direct {p0, v0, v7, v1}, Lorg/joni/Analyser;->expandCaseFoldMakeRemString([BII)Lorg/joni/ast/Node;

    move-result-object v8

    .line 1525
    .local v8, "rem":Lorg/joni/ast/Node;
    const/4 v12, 0x0

    invoke-static {v12, v9}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    move-result-object v6

    .line 1526
    .restart local v6    # "listNode":Lorg/joni/ast/ConsAltNode;
    invoke-static {v6, v8}, Lorg/joni/ast/ConsAltNode;->listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;

    .line 1527
    invoke-virtual {v3, v6}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 1531
    .end local v6    # "listNode":Lorg/joni/ast/ConsAltNode;
    .end local v8    # "rem":Lorg/joni/ast/Node;
    :goto_4
    invoke-virtual {v10, v3}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    .line 1532
    move-object v10, v3

    .line 1514
    .end local v7    # "q":I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1529
    .restart local v7    # "q":I
    :cond_4
    invoke-virtual {v3, v9}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    goto :goto_4

    .line 1534
    .end local v7    # "q":I
    :cond_5
    invoke-virtual {v3, v9}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 1535
    invoke-virtual {v2, v3}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    .line 1536
    move-object v2, v3

    goto :goto_5

    .line 1539
    .end local v3    # "an":Lorg/joni/ast/ConsAltNode;
    .end local v5    # "j":I
    :cond_6
    return v11
.end method

.method private getCharLengthTree(Lorg/joni/ast/Node;I)I
    .locals 13
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "level"    # I

    .prologue
    const/4 v12, -0x1

    .line 626
    add-int/lit8 p2, p2, 0x1

    .line 628
    const/4 v3, 0x0

    .line 629
    .local v3, "len":I
    const/4 v10, 0x0

    iput v10, p0, Lorg/joni/Analyser;->returnCode:I

    .line 631
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 727
    :pswitch_0
    iput v12, p0, Lorg/joni/Analyser;->returnCode:I

    .line 729
    :cond_0
    :goto_0
    :pswitch_1
    return v3

    :pswitch_2
    move-object v4, p1

    .line 633
    check-cast v4, Lorg/joni/ast/ConsAltNode;

    .line 635
    .local v4, "ln":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v10, v4, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v7

    .line 636
    .local v7, "tlen":I
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_2

    invoke-static {v3, v7}, Lorg/joni/MinMaxLen;->distanceAdd(II)I

    move-result v3

    .line 637
    :cond_2
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_0

    iget-object v4, v4, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v4, :cond_1

    goto :goto_0

    .end local v4    # "ln":Lorg/joni/ast/ConsAltNode;
    .end local v7    # "tlen":I
    :pswitch_3
    move-object v0, p1

    .line 641
    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .line 642
    .local v0, "an":Lorg/joni/ast/ConsAltNode;
    const/4 v9, 0x0

    .line 644
    .local v9, "varLen":Z
    iget-object v10, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v7

    .line 645
    .restart local v7    # "tlen":I
    :cond_3
    :goto_1
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_4

    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v0, :cond_4

    .line 646
    iget-object v10, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v8

    .line 647
    .local v8, "tlen2":I
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_3

    .line 648
    if-eq v7, v8, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    .line 652
    .end local v8    # "tlen2":I
    :cond_4
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_0

    .line 653
    if-eqz v9, :cond_6

    .line 654
    const/4 v10, 0x1

    if-ne p2, v10, :cond_5

    .line 655
    const/4 v10, -0x2

    iput v10, p0, Lorg/joni/Analyser;->returnCode:I

    goto :goto_0

    .line 657
    :cond_5
    iput v12, p0, Lorg/joni/Analyser;->returnCode:I

    goto :goto_0

    .line 660
    :cond_6
    move v3, v7

    goto :goto_0

    .end local v0    # "an":Lorg/joni/ast/ConsAltNode;
    .end local v7    # "tlen":I
    .end local v9    # "varLen":Z
    :pswitch_4
    move-object v6, p1

    .line 666
    check-cast v6, Lorg/joni/ast/StringNode;

    .line 667
    .local v6, "sn":Lorg/joni/ast/StringNode;
    iget-object v10, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6, v10}, Lorg/joni/ast/StringNode;->length(Lorg/jcodings/Encoding;)I

    move-result v3

    .line 668
    goto :goto_0

    .end local v6    # "sn":Lorg/joni/ast/StringNode;
    :pswitch_5
    move-object v5, p1

    .line 671
    check-cast v5, Lorg/joni/ast/QuantifierNode;

    .line 672
    .local v5, "qn":Lorg/joni/ast/QuantifierNode;
    iget v10, v5, Lorg/joni/ast/QuantifierNode;->lower:I

    iget v11, v5, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v10, v11, :cond_7

    .line 673
    iget-object v10, v5, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v7

    .line 674
    .restart local v7    # "tlen":I
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_0

    iget v10, v5, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-static {v7, v10}, Lorg/joni/MinMaxLen;->distanceMultiply(II)I

    move-result v3

    goto :goto_0

    .line 676
    .end local v7    # "tlen":I
    :cond_7
    iput v12, p0, Lorg/joni/Analyser;->returnCode:I

    goto :goto_0

    .end local v5    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_6
    move-object v1, p1

    .line 682
    check-cast v1, Lorg/joni/ast/CallNode;

    .line 683
    .local v1, "cn":Lorg/joni/ast/CallNode;
    invoke-virtual {v1}, Lorg/joni/ast/CallNode;->isRecursion()Z

    move-result v10

    if-nez v10, :cond_8

    .line 684
    iget-object v10, v1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v3

    goto/16 :goto_0

    .line 686
    :cond_8
    iput v12, p0, Lorg/joni/Analyser;->returnCode:I

    goto/16 :goto_0

    .line 692
    .end local v1    # "cn":Lorg/joni/ast/CallNode;
    :pswitch_7
    const/4 v3, 0x1

    .line 696
    :pswitch_8
    const/4 v3, 0x1

    .line 697
    goto/16 :goto_0

    :pswitch_9
    move-object v2, p1

    .line 700
    check-cast v2, Lorg/joni/ast/EncloseNode;

    .line 701
    .local v2, "en":Lorg/joni/ast/EncloseNode;
    iget v10, v2, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v10, :pswitch_data_1

    :pswitch_a
    goto/16 :goto_0

    .line 704
    :pswitch_b
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isCLenFixed()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 705
    iget v3, v2, Lorg/joni/ast/EncloseNode;->charLength:I

    goto/16 :goto_0

    .line 707
    :cond_9
    iget-object v10, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v3

    .line 708
    iget v10, p0, Lorg/joni/Analyser;->returnCode:I

    if-nez v10, :cond_0

    .line 709
    iput v3, v2, Lorg/joni/ast/EncloseNode;->charLength:I

    .line 710
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->setCLenFixed()V

    goto/16 :goto_0

    .line 718
    :pswitch_c
    iget-object v10, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10, p2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v3

    goto/16 :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 701
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;
    .locals 8
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "exact"    # Z

    .prologue
    .line 886
    const/4 v2, 0x0

    .line 888
    .local v2, "n":Lorg/joni/ast/Node;
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 955
    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return-object v2

    .line 899
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_1
    if-nez p2, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 903
    :pswitch_2
    check-cast p1, Lorg/joni/ast/ConsAltNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v6, p1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, p2}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v2

    .line 904
    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_3
    move-object v5, p1

    .line 907
    check-cast v5, Lorg/joni/ast/StringNode;

    .line 908
    .local v5, "sn":Lorg/joni/ast/StringNode;
    iget v6, v5, Lorg/joni/ast/StringNode;->end:I

    iget v7, v5, Lorg/joni/ast/StringNode;->p:I

    if-le v6, v7, :cond_0

    .line 910
    if-eqz p2, :cond_1

    invoke-virtual {v5}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->options:I

    invoke-static {v6}, Lorg/joni/Option;->isIgnoreCase(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 913
    :cond_1
    move-object v2, p1

    .line 915
    goto :goto_0

    .end local v5    # "sn":Lorg/joni/ast/StringNode;
    :pswitch_4
    move-object v4, p1

    .line 918
    check-cast v4, Lorg/joni/ast/QuantifierNode;

    .line 919
    .local v4, "qn":Lorg/joni/ast/QuantifierNode;
    iget v6, v4, Lorg/joni/ast/QuantifierNode;->lower:I

    if-lez v6, :cond_0

    .line 920
    iget-object v6, v4, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    if-eqz v6, :cond_2

    .line 921
    iget-object v2, v4, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    goto :goto_0

    .line 923
    :cond_2
    iget-object v6, v4, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, p2}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v2

    goto :goto_0

    .end local v4    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_5
    move-object v1, p1

    .line 929
    check-cast v1, Lorg/joni/ast/EncloseNode;

    .line 931
    .local v1, "en":Lorg/joni/ast/EncloseNode;
    iget v6, v1, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v6, :pswitch_data_1

    :pswitch_6
    goto :goto_0

    .line 941
    :pswitch_7
    iget-object v6, v1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, p2}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v2

    goto :goto_0

    .line 933
    :pswitch_8
    iget-object v6, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v3, v6, Lorg/joni/Regex;->options:I

    .line 934
    .local v3, "options":I
    iget-object v6, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v7, v1, Lorg/joni/ast/EncloseNode;->option:I

    iput v7, v6, Lorg/joni/Regex;->options:I

    .line 935
    iget-object v6, v1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, p2}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v2

    .line 936
    iget-object v6, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v6, Lorg/joni/Regex;->options:I

    goto :goto_0

    .end local v1    # "en":Lorg/joni/ast/EncloseNode;
    .end local v3    # "options":I
    :pswitch_9
    move-object v0, p1

    .line 947
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 948
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v6, v0, Lorg/joni/ast/AnchorNode;->type:I

    const/16 v7, 0x400

    if-ne v6, v7, :cond_0

    iget-object v6, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, p2}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v2

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 931
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getMaxMatchLength(Lorg/joni/ast/Node;)I
    .locals 11
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 515
    const/4 v6, 0x0

    .line 517
    .local v6, "max":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 616
    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_1
    move-object v5, p1

    .line 519
    check-cast v5, Lorg/joni/ast/ConsAltNode;

    .line 521
    .local v5, "ln":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v9, v5, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v8

    .line 522
    .local v8, "tmax":I
    invoke-static {v6, v8}, Lorg/joni/MinMaxLen;->distanceAdd(II)I

    move-result v6

    .line 523
    iget-object v5, v5, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v5, :cond_1

    goto :goto_0

    .end local v5    # "ln":Lorg/joni/ast/ConsAltNode;
    .end local v8    # "tmax":I
    :pswitch_2
    move-object v0, p1

    .line 527
    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .line 529
    .local v0, "an":Lorg/joni/ast/ConsAltNode;
    :cond_2
    iget-object v9, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v8

    .line 530
    .restart local v8    # "tmax":I
    if-ge v6, v8, :cond_3

    move v6, v8

    .line 531
    :cond_3
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_2

    goto :goto_0

    .line 535
    .end local v0    # "an":Lorg/joni/ast/ConsAltNode;
    .end local v8    # "tmax":I
    :pswitch_3
    check-cast p1, Lorg/joni/ast/StringNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v6

    .line 536
    goto :goto_0

    .line 539
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_4
    iget-object v9, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v9}, Lorg/jcodings/Encoding;->maxLengthDistance()I

    move-result v6

    .line 540
    goto :goto_0

    .line 544
    :pswitch_5
    iget-object v9, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v9}, Lorg/jcodings/Encoding;->maxLengthDistance()I

    move-result v6

    .line 545
    goto :goto_0

    :pswitch_6
    move-object v1, p1

    .line 548
    check-cast v1, Lorg/joni/ast/BackRefNode;

    .line 549
    .local v1, "br":Lorg/joni/ast/BackRefNode;
    invoke-virtual {v1}, Lorg/joni/ast/BackRefNode;->isRecursion()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 550
    const v6, 0x7fffffff

    .line 551
    goto :goto_0

    .line 554
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v9, v1, Lorg/joni/ast/BackRefNode;->backNum:I

    if-ge v4, v9, :cond_0

    .line 555
    iget-object v9, v1, Lorg/joni/ast/BackRefNode;->back:[I

    aget v9, v9, v4

    iget-object v10, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v10, v10, Lorg/joni/ScanEnvironment;->numMem:I

    if-le v9, v10, :cond_6

    .line 556
    iget-object v9, p0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v9}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "invalid backref number/name"

    invoke-virtual {p0, v9}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    .line 554
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 558
    :cond_6
    iget-object v9, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v9, v9, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget-object v10, v1, Lorg/joni/ast/BackRefNode;->back:[I

    aget v10, v10, v4

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v8

    .line 559
    .restart local v8    # "tmax":I
    if-ge v6, v8, :cond_5

    move v6, v8

    goto :goto_2

    .end local v1    # "br":Lorg/joni/ast/BackRefNode;
    .end local v4    # "i":I
    .end local v8    # "tmax":I
    :pswitch_7
    move-object v2, p1

    .line 566
    check-cast v2, Lorg/joni/ast/CallNode;

    .line 567
    .local v2, "cn":Lorg/joni/ast/CallNode;
    invoke-virtual {v2}, Lorg/joni/ast/CallNode;->isRecursion()Z

    move-result v9

    if-nez v9, :cond_7

    .line 568
    iget-object v9, v2, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v6

    goto/16 :goto_0

    .line 570
    :cond_7
    const v6, 0x7fffffff

    goto/16 :goto_0

    .end local v2    # "cn":Lorg/joni/ast/CallNode;
    :pswitch_8
    move-object v7, p1

    .line 576
    check-cast v7, Lorg/joni/ast/QuantifierNode;

    .line 577
    .local v7, "qn":Lorg/joni/ast/QuantifierNode;
    iget v9, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    if-eqz v9, :cond_0

    .line 578
    iget-object v9, v7, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v6

    .line 579
    if-eqz v6, :cond_0

    .line 580
    iget v9, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v9}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 581
    iget v9, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v6, v9}, Lorg/joni/MinMaxLen;->distanceMultiply(II)I

    move-result v6

    goto/16 :goto_0

    .line 583
    :cond_8
    const v6, 0x7fffffff

    goto/16 :goto_0

    .end local v7    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_9
    move-object v3, p1

    .line 590
    check-cast v3, Lorg/joni/ast/EncloseNode;

    .line 591
    .local v3, "en":Lorg/joni/ast/EncloseNode;
    iget v9, v3, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v9, :pswitch_data_1

    :pswitch_a
    goto/16 :goto_0

    .line 594
    :pswitch_b
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->isMaxFixed()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 595
    iget v6, v3, Lorg/joni/ast/EncloseNode;->maxLength:I

    goto/16 :goto_0

    .line 597
    :cond_9
    iget-object v9, v3, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v6

    .line 598
    iput v6, v3, Lorg/joni/ast/EncloseNode;->maxLength:I

    .line 599
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->setMaxFixed()V

    goto/16 :goto_0

    .line 606
    :pswitch_c
    iget-object v9, v3, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v6

    goto/16 :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 591
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private getMinMatchLength(Lorg/joni/ast/Node;)I
    .locals 13
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v12, 0x0

    .line 408
    const/4 v5, 0x0

    .line 410
    .local v5, "min":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 511
    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_1
    move-object v0, p1

    .line 412
    check-cast v0, Lorg/joni/ast/BackRefNode;

    .line 413
    .local v0, "br":Lorg/joni/ast/BackRefNode;
    invoke-virtual {v0}, Lorg/joni/ast/BackRefNode;->isRecursion()Z

    move-result v10

    if-nez v10, :cond_0

    .line 415
    iget-object v10, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v10, v10, v12

    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v11, Lorg/joni/ScanEnvironment;->numMem:I

    if-le v10, v11, :cond_3

    .line 416
    iget-object v10, p0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "invalid backref number/name"

    invoke-virtual {p0, v10}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    .line 421
    :cond_1
    :goto_1
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    iget v10, v0, Lorg/joni/ast/BackRefNode;->backNum:I

    if-ge v4, v10, :cond_0

    .line 422
    iget-object v10, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v10, v10, v4

    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v11, Lorg/joni/ScanEnvironment;->numMem:I

    if-le v10, v11, :cond_4

    .line 423
    iget-object v10, p0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "invalid backref number/name"

    invoke-virtual {p0, v10}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    .line 421
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 418
    .end local v4    # "i":I
    :cond_3
    iget-object v10, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v10, v10, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget-object v11, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v5

    goto :goto_1

    .line 425
    .restart local v4    # "i":I
    :cond_4
    iget-object v10, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v10, v10, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget-object v11, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v11, v11, v4

    aget-object v10, v10, v11

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v7

    .line 426
    .local v7, "tmin":I
    if-le v5, v7, :cond_2

    move v5, v7

    goto :goto_3

    .end local v0    # "br":Lorg/joni/ast/BackRefNode;
    .end local v4    # "i":I
    .end local v7    # "tmin":I
    :pswitch_2
    move-object v2, p1

    .line 433
    check-cast v2, Lorg/joni/ast/CallNode;

    .line 434
    .local v2, "cn":Lorg/joni/ast/CallNode;
    invoke-virtual {v2}, Lorg/joni/ast/CallNode;->isRecursion()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 435
    iget-object v3, v2, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    check-cast v3, Lorg/joni/ast/EncloseNode;

    .line 436
    .local v3, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->isMinFixed()Z

    move-result v10

    if-eqz v10, :cond_0

    iget v5, v3, Lorg/joni/ast/EncloseNode;->minLength:I

    goto :goto_0

    .line 438
    .end local v3    # "en":Lorg/joni/ast/EncloseNode;
    :cond_5
    iget-object v10, v2, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v5

    goto :goto_0

    .end local v2    # "cn":Lorg/joni/ast/CallNode;
    :pswitch_3
    move-object v1, p1

    .line 444
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 446
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_6
    iget-object v10, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v10

    add-int/2addr v5, v10

    .line 447
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_6

    goto/16 :goto_0

    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_4
    move-object v9, p1

    .line 451
    check-cast v9, Lorg/joni/ast/ConsAltNode;

    .line 453
    .local v9, "y":Lorg/joni/ast/ConsAltNode;
    :cond_7
    iget-object v8, v9, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    .line 454
    .local v8, "x":Lorg/joni/ast/Node;
    invoke-direct {p0, v8}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v7

    .line 455
    .restart local v7    # "tmin":I
    if-ne v9, p1, :cond_9

    .line 456
    move v5, v7

    .line 460
    :cond_8
    :goto_4
    iget-object v9, v9, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v9, :cond_7

    goto/16 :goto_0

    .line 457
    :cond_9
    if-le v5, v7, :cond_8

    .line 458
    move v5, v7

    goto :goto_4

    .line 464
    .end local v7    # "tmin":I
    .end local v8    # "x":Lorg/joni/ast/Node;
    .end local v9    # "y":Lorg/joni/ast/ConsAltNode;
    :pswitch_5
    check-cast p1, Lorg/joni/ast/StringNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v5

    .line 465
    goto/16 :goto_0

    .line 468
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_6
    const/4 v5, 0x1

    .line 469
    goto/16 :goto_0

    .line 473
    :pswitch_7
    const/4 v5, 0x1

    .line 474
    goto/16 :goto_0

    :pswitch_8
    move-object v6, p1

    .line 477
    check-cast v6, Lorg/joni/ast/QuantifierNode;

    .line 478
    .local v6, "qn":Lorg/joni/ast/QuantifierNode;
    iget v10, v6, Lorg/joni/ast/QuantifierNode;->lower:I

    if-lez v10, :cond_0

    .line 479
    iget-object v10, v6, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v5

    .line 480
    iget v10, v6, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-static {v5, v10}, Lorg/joni/MinMaxLen;->distanceMultiply(II)I

    move-result v5

    goto/16 :goto_0

    .end local v6    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_9
    move-object v3, p1

    .line 485
    check-cast v3, Lorg/joni/ast/EncloseNode;

    .line 486
    .restart local v3    # "en":Lorg/joni/ast/EncloseNode;
    iget v10, v3, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v10, :pswitch_data_1

    :pswitch_a
    goto/16 :goto_0

    .line 489
    :pswitch_b
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->isMinFixed()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 490
    iget v5, v3, Lorg/joni/ast/EncloseNode;->minLength:I

    goto/16 :goto_0

    .line 492
    :cond_a
    iget-object v10, v3, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v5

    .line 493
    iput v5, v3, Lorg/joni/ast/EncloseNode;->minLength:I

    .line 494
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->setMinFixed()V

    goto/16 :goto_0

    .line 501
    :pswitch_c
    iget-object v10, v3, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v10}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v5

    goto/16 :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 486
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private isNotIncluded(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)Z
    .locals 23
    .param p1, "x"    # Lorg/joni/ast/Node;
    .param p2, "y"    # Lorg/joni/ast/Node;

    .prologue
    .line 739
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/joni/ast/Node;->getType()I

    move-result v15

    .line 741
    .local v15, "yType":I
    invoke-virtual/range {p1 .. p1}, Lorg/joni/ast/Node;->getType()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 882
    :cond_0
    :goto_1
    const/16 v18, 0x0

    .end local p2    # "y":Lorg/joni/ast/Node;
    :goto_2
    return v18

    .line 743
    .restart local p2    # "y":Lorg/joni/ast/Node;
    :pswitch_0
    packed-switch v15, :pswitch_data_1

    goto :goto_1

    .line 759
    :pswitch_1
    move-object/from16 v11, p1

    .line 760
    .local v11, "tmp":Lorg/joni/ast/Node;
    move-object/from16 p1, p2

    .line 761
    move-object/from16 p2, v11

    .line 762
    goto :goto_0

    .end local v11    # "tmp":Lorg/joni/ast/Node;
    :pswitch_2
    move-object/from16 v4, p2

    .line 745
    check-cast v4, Lorg/joni/ast/CTypeNode;

    .local v4, "cny":Lorg/joni/ast/CTypeNode;
    move-object/from16 v3, p1

    .line 746
    check-cast v3, Lorg/joni/ast/CTypeNode;

    .line 747
    .local v3, "cnx":Lorg/joni/ast/CTypeNode;
    iget v0, v4, Lorg/joni/ast/CTypeNode;->ctype:I

    move/from16 v18, v0

    iget v0, v3, Lorg/joni/ast/CTypeNode;->ctype:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    iget-boolean v0, v4, Lorg/joni/ast/CTypeNode;->not:Z

    move/from16 v18, v0

    iget-boolean v0, v3, Lorg/joni/ast/CTypeNode;->not:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    goto :goto_2

    .line 751
    .end local v3    # "cnx":Lorg/joni/ast/CTypeNode;
    .end local v4    # "cny":Lorg/joni/ast/CTypeNode;
    :pswitch_3
    move-object/from16 v11, p1

    .line 752
    .restart local v11    # "tmp":Lorg/joni/ast/Node;
    move-object/from16 p1, p2

    .line 753
    move-object/from16 p2, v11

    .line 755
    goto :goto_0

    .end local v11    # "tmp":Lorg/joni/ast/Node;
    :pswitch_4
    move-object/from16 v13, p1

    .line 770
    check-cast v13, Lorg/joni/ast/CClassNode;

    .line 772
    .local v13, "xc":Lorg/joni/ast/CClassNode;
    packed-switch v15, :pswitch_data_2

    goto :goto_1

    .line 821
    :pswitch_5
    move-object/from16 v11, p1

    .line 822
    .restart local v11    # "tmp":Lorg/joni/ast/Node;
    move-object/from16 p1, p2

    .line 823
    move-object/from16 p2, v11

    .line 824
    goto :goto_0

    .end local v11    # "tmp":Lorg/joni/ast/Node;
    :pswitch_6
    move-object/from16 v18, p2

    .line 774
    check-cast v18, Lorg/joni/ast/CTypeNode;

    move-object/from16 v0, v18

    iget v0, v0, Lorg/joni/ast/CTypeNode;->ctype:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_3

    goto :goto_1

    .line 776
    :pswitch_7
    check-cast p2, Lorg/joni/ast/CTypeNode;

    .end local p2    # "y":Lorg/joni/ast/Node;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lorg/joni/ast/CTypeNode;->not:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 777
    iget-object v0, v13, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    invoke-virtual {v13}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-nez v18, :cond_4

    .line 778
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    const/16 v18, 0x100

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 779
    iget-object v0, v13, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/joni/BitSet;->at(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/jcodings/Encoding;->isSbWord(I)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    goto/16 :goto_2

    .line 778
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 783
    :cond_3
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 785
    .end local v7    # "i":I
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 787
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    const/16 v18, 0x100

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/jcodings/Encoding;->isSbWord(I)Z

    move-result v18

    if-nez v18, :cond_7

    .line 789
    invoke-virtual {v13}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-nez v18, :cond_6

    .line 790
    iget-object v0, v13, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/joni/BitSet;->at(I)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    goto/16 :goto_2

    .line 792
    :cond_6
    iget-object v0, v13, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/joni/BitSet;->at(I)Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x0

    goto/16 :goto_2

    .line 787
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 796
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_2

    .end local v7    # "i":I
    .restart local p2    # "y":Lorg/joni/ast/Node;
    :pswitch_8
    move-object/from16 v16, p2

    .line 806
    check-cast v16, Lorg/joni/ast/CClassNode;

    .line 808
    .local v16, "yc":Lorg/joni/ast/CClassNode;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    const/16 v18, 0x100

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    .line 809
    iget-object v0, v13, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/joni/BitSet;->at(I)Z

    move-result v12

    .line 810
    .local v12, "v":Z
    if-eqz v12, :cond_9

    invoke-virtual {v13}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_9
    if-nez v12, :cond_d

    invoke-virtual {v13}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 811
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/joni/BitSet;->at(I)Z

    move-result v12

    .line 812
    if-eqz v12, :cond_b

    invoke-virtual/range {v16 .. v16}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_b
    if-nez v12, :cond_d

    invoke-virtual/range {v16 .. v16}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 808
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 815
    .end local v12    # "v":Z
    :cond_e
    iget-object v0, v13, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    invoke-virtual {v13}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    invoke-virtual/range {v16 .. v16}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v18

    if-nez v18, :cond_11

    :cond_10
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 816
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_2

    .end local v7    # "i":I
    .end local v13    # "xc":Lorg/joni/ast/CClassNode;
    .end local v16    # "yc":Lorg/joni/ast/CClassNode;
    :pswitch_9
    move-object/from16 v14, p1

    .line 833
    check-cast v14, Lorg/joni/ast/StringNode;

    .line 834
    .local v14, "xs":Lorg/joni/ast/StringNode;
    invoke-virtual {v14}, Lorg/joni/ast/StringNode;->length()I

    move-result v18

    if-eqz v18, :cond_0

    .line 836
    packed-switch v15, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v17, p2

    .line 859
    check-cast v17, Lorg/joni/ast/StringNode;

    .line 860
    .local v17, "ys":Lorg/joni/ast/StringNode;
    invoke-virtual {v14}, Lorg/joni/ast/StringNode;->length()I

    move-result v8

    .line 861
    .local v8, "len":I
    invoke-virtual/range {v17 .. v17}, Lorg/joni/ast/StringNode;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v8, v0, :cond_12

    invoke-virtual/range {v17 .. v17}, Lorg/joni/ast/StringNode;->length()I

    move-result v8

    .line 862
    :cond_12
    invoke-virtual {v14}, Lorg/joni/ast/StringNode;->isAmbig()Z

    move-result v18

    if-nez v18, :cond_13

    invoke-virtual/range {v17 .. v17}, Lorg/joni/ast/StringNode;->isAmbig()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 864
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_2

    .end local v8    # "len":I
    .end local v17    # "ys":Lorg/joni/ast/StringNode;
    :pswitch_b
    move-object/from16 v6, p2

    .line 838
    check-cast v6, Lorg/joni/ast/CTypeNode;

    .line 839
    .local v6, "cy":Lorg/joni/ast/CTypeNode;
    iget v0, v6, Lorg/joni/ast/CTypeNode;->ctype:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_5

    goto/16 :goto_1

    .line 841
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v18, v0

    iget-object v0, v14, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v19, v0

    iget v0, v14, Lorg/joni/ast/StringNode;->p:I

    move/from16 v20, v0

    iget v0, v14, Lorg/joni/ast/StringNode;->end:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lorg/jcodings/Encoding;->isMbcWord([BII)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 842
    iget-boolean v0, v6, Lorg/joni/ast/CTypeNode;->not:Z

    move/from16 v18, v0

    goto/16 :goto_2

    .line 844
    :cond_14
    iget-boolean v0, v6, Lorg/joni/ast/CTypeNode;->not:Z

    move/from16 v18, v0

    if-nez v18, :cond_15

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_2

    .end local v6    # "cy":Lorg/joni/ast/CTypeNode;
    :pswitch_d
    move-object/from16 v2, p2

    .line 854
    check-cast v2, Lorg/joni/ast/CClassNode;

    .line 855
    .local v2, "cc":Lorg/joni/ast/CClassNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v18, v0

    iget-object v0, v14, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v19, v0

    iget v0, v14, Lorg/joni/ast/StringNode;->p:I

    move/from16 v20, v0

    iget v0, v14, Lorg/joni/ast/StringNode;->p:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jcodings/Encoding;->maxLength()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v5

    .line 856
    .local v5, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v5}, Lorg/joni/ast/CClassNode;->isCodeInCC(Lorg/jcodings/Encoding;I)Z

    move-result v18

    if-nez v18, :cond_16

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 866
    .end local v2    # "cc":Lorg/joni/ast/CClassNode;
    .end local v5    # "code":I
    .restart local v8    # "len":I
    .restart local v17    # "ys":Lorg/joni/ast/StringNode;
    :cond_17
    const/4 v7, 0x0

    .restart local v7    # "i":I
    move-object/from16 v0, v17

    iget v9, v0, Lorg/joni/ast/StringNode;->p:I

    .local v9, "p":I
    iget v10, v14, Lorg/joni/ast/StringNode;->p:I

    .local v10, "q":I
    :goto_6
    if-ge v7, v8, :cond_0

    .line 867
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v9

    iget-object v0, v14, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    const/16 v18, 0x1

    goto/16 :goto_2

    .line 866
    :cond_18
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 743
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 772
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_6
    .end packed-switch

    .line 774
    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_7
    .end packed-switch

    .line 836
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_b
    .end packed-switch

    .line 839
    :pswitch_data_5
    .packed-switch 0xc
        :pswitch_c
    .end packed-switch
.end method

.method private nextSetup(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)V
    .locals 10
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "nextNode"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1368
    :goto_0
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v3

    .line 1369
    .local v3, "type":I
    const/4 v6, 0x5

    if-ne v3, v6, :cond_2

    move-object v2, p1

    .line 1370
    check-cast v2, Lorg/joni/ast/QuantifierNode;

    .line 1371
    .local v2, "qn":Lorg/joni/ast/QuantifierNode;
    iget-boolean v6, v2, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v6, :cond_1

    iget v6, v2, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v6}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1373
    invoke-direct {p0, p2, v9}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/joni/ast/StringNode;

    .line 1375
    .local v1, "n":Lorg/joni/ast/StringNode;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lorg/joni/ast/StringNode;->bytes:[B

    iget v7, v1, Lorg/joni/ast/StringNode;->p:I

    aget-byte v6, v6, v7

    if-eqz v6, :cond_0

    .line 1376
    iput-object v1, v2, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    .line 1380
    :cond_0
    iget v6, v2, Lorg/joni/ast/QuantifierNode;->lower:I

    if-gt v6, v9, :cond_1

    .line 1381
    iget-object v6, v2, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v6}, Lorg/joni/ast/Node;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1382
    iget-object v6, v2, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, v8}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v4

    .line 1383
    .local v4, "x":Lorg/joni/ast/Node;
    if-eqz v4, :cond_1

    .line 1384
    invoke-direct {p0, p2, v8}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v5

    .line 1385
    .local v5, "y":Lorg/joni/ast/Node;
    if-eqz v5, :cond_1

    invoke-direct {p0, v4, v5}, Lorg/joni/Analyser;->isNotIncluded(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1386
    new-instance v0, Lorg/joni/ast/EncloseNode;

    const/4 v6, 0x4

    invoke-direct {v0, v6}, Lorg/joni/ast/EncloseNode;-><init>(I)V

    .line 1387
    .local v0, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v0}, Lorg/joni/ast/EncloseNode;->setStopBtSimpleRepeat()V

    .line 1389
    invoke-direct {p0, p1, v0}, Lorg/joni/Analyser;->swap(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)V

    .line 1391
    invoke-virtual {v0, p1}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 1408
    .end local v0    # "en":Lorg/joni/ast/EncloseNode;
    .end local v1    # "n":Lorg/joni/ast/StringNode;
    .end local v2    # "qn":Lorg/joni/ast/QuantifierNode;
    .end local v4    # "x":Lorg/joni/ast/Node;
    .end local v5    # "y":Lorg/joni/ast/Node;
    :cond_1
    return-void

    .line 1397
    :cond_2
    const/4 v6, 0x6

    if-ne v3, v6, :cond_1

    move-object v0, p1

    .line 1398
    check-cast v0, Lorg/joni/ast/EncloseNode;

    .line 1399
    .restart local v0    # "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v0}, Lorg/joni/ast/EncloseNode;->isMemory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1400
    iget-object p1, v0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    .line 1402
    goto :goto_0
.end method

.method private noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;
    .locals 1
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "map"    # [I
    .param p3, "counter"    # Lorg/jcodings/Ptr;

    .prologue
    .line 237
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-object p1

    .line 240
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMapFor_cosAlt(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMapFor_quantifier(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)V

    goto :goto_0

    .line 246
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMapFor_enclose(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object p1

    .line 247
    goto :goto_0

    .line 249
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMapFor_anchor(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noNameDisableMapFor_anchor(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)V
    .locals 2
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "map"    # [I
    .param p3, "counter"    # Lorg/jcodings/Ptr;

    .prologue
    .line 226
    move-object v0, p1

    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 227
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v1, v0, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 232
    :sswitch_0
    iget-object v1, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joni/ast/AnchorNode;->setTarget(Lorg/joni/ast/Node;)V

    goto :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private noNameDisableMapFor_cosAlt(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)V
    .locals 2
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "map"    # [I
    .param p3, "counter"    # Lorg/jcodings/Ptr;

    .prologue
    .line 186
    move-object v0, p1

    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .line 188
    .local v0, "can":Lorg/joni/ast/ConsAltNode;
    :cond_0
    iget-object v1, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 189
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_0

    .line 190
    return-void
.end method

.method private noNameDisableMapFor_enclose(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "map"    # [I
    .param p3, "counter"    # Lorg/jcodings/Ptr;

    .prologue
    .line 205
    move-object v0, p1

    check-cast v0, Lorg/joni/ast/EncloseNode;

    .line 206
    .local v0, "en":Lorg/joni/ast/EncloseNode;
    iget v1, v0, Lorg/joni/ast/EncloseNode;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 207
    invoke-virtual {v0}, Lorg/joni/ast/EncloseNode;->isNamedGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget v1, p3, Lorg/jcodings/Ptr;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p3, Lorg/jcodings/Ptr;->p:I

    .line 209
    iget v1, v0, Lorg/joni/ast/EncloseNode;->regNum:I

    iget v2, p3, Lorg/jcodings/Ptr;->p:I

    aput v2, p2, v1

    .line 210
    iget v1, p3, Lorg/jcodings/Ptr;->p:I

    iput v1, v0, Lorg/joni/ast/EncloseNode;->regNum:I

    .line 212
    iget-object v1, v0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 222
    :goto_0
    return-object p1

    .line 214
    :cond_0
    iget-object p1, v0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    .line 215
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, v0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2, p3}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    goto :goto_0
.end method

.method private noNameDisableMapFor_quantifier(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)V
    .locals 5
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "map"    # [I
    .param p3, "counter"    # Lorg/jcodings/Ptr;

    .prologue
    .line 193
    move-object v1, p1

    check-cast v1, Lorg/joni/ast/QuantifierNode;

    .line 194
    .local v1, "qn":Lorg/joni/ast/QuantifierNode;
    iget-object v2, v1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    .line 195
    .local v2, "target":Lorg/joni/ast/Node;
    move-object v0, v2

    .line 196
    .local v0, "old":Lorg/joni/ast/Node;
    invoke-direct {p0, v2, p2, p3}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object v2

    .line 198
    if-eq v2, v0, :cond_0

    .line 199
    invoke-virtual {v1, v2}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 200
    invoke-virtual {v2}, Lorg/joni/ast/Node;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    check-cast v2, Lorg/joni/ast/QuantifierNode;

    .end local v2    # "target":Lorg/joni/ast/Node;
    invoke-virtual {v1, v2}, Lorg/joni/ast/QuantifierNode;->reduceNestedQuantifier(Lorg/joni/ast/QuantifierNode;)V

    .line 202
    :cond_0
    return-void
.end method

.method private optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V
    .locals 31
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "opt"    # Lorg/joni/NodeOptInfo;
    .param p3, "oenv"    # Lorg/joni/OptEnvironment;

    .prologue
    .line 1930
    invoke-virtual/range {p2 .. p2}, Lorg/joni/NodeOptInfo;->clear()V

    .line 1931
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/joni/NodeOptInfo;->setBoundNode(Lorg/joni/MinMaxLen;)V

    .line 1933
    invoke-virtual/range {p1 .. p1}, Lorg/joni/ast/Node;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2213
    const-string v3, "internal parser error (bug)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/joni/Analyser;->newInternalException(Ljava/lang/String;)V

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 1935
    :pswitch_0
    new-instance v20, Lorg/joni/OptEnvironment;

    invoke-direct/range {v20 .. v20}, Lorg/joni/OptEnvironment;-><init>()V

    .line 1936
    .local v20, "nenv":Lorg/joni/OptEnvironment;
    new-instance v22, Lorg/joni/NodeOptInfo;

    invoke-direct/range {v22 .. v22}, Lorg/joni/NodeOptInfo;-><init>()V

    .line 1937
    .local v22, "nopt":Lorg/joni/NodeOptInfo;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/joni/OptEnvironment;->copy(Lorg/joni/OptEnvironment;)V

    move-object/from16 v16, p1

    .line 1938
    check-cast v16, Lorg/joni/ast/ConsAltNode;

    .line 1940
    .local v16, "lin":Lorg/joni/ast/ConsAltNode;
    :cond_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 1941
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    invoke-virtual {v3, v4}, Lorg/joni/MinMaxLen;->add(Lorg/joni/MinMaxLen;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lorg/joni/NodeOptInfo;->concatLeftNode(Lorg/joni/NodeOptInfo;Lorg/jcodings/Encoding;)V

    .line 1943
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    goto :goto_0

    .line 1948
    .end local v16    # "lin":Lorg/joni/ast/ConsAltNode;
    .end local v20    # "nenv":Lorg/joni/OptEnvironment;
    .end local v22    # "nopt":Lorg/joni/NodeOptInfo;
    :pswitch_1
    new-instance v22, Lorg/joni/NodeOptInfo;

    invoke-direct/range {v22 .. v22}, Lorg/joni/NodeOptInfo;-><init>()V

    .restart local v22    # "nopt":Lorg/joni/NodeOptInfo;
    move-object/from16 v9, p1

    .line 1949
    check-cast v9, Lorg/joni/ast/ConsAltNode;

    .line 1951
    .local v9, "aln":Lorg/joni/ast/ConsAltNode;
    :cond_2
    iget-object v3, v9, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 1952
    move-object/from16 v0, p1

    if-ne v9, v0, :cond_3

    .line 1953
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/NodeOptInfo;->copy(Lorg/joni/NodeOptInfo;)V

    .line 1957
    :goto_1
    iget-object v9, v9, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v9, :cond_2

    goto :goto_0

    .line 1955
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/joni/NodeOptInfo;->altMerge(Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    goto :goto_1

    .end local v9    # "aln":Lorg/joni/ast/ConsAltNode;
    .end local v22    # "nopt":Lorg/joni/NodeOptInfo;
    :pswitch_2
    move-object/from16 v27, p1

    .line 1962
    check-cast v27, Lorg/joni/ast/StringNode;

    .line 1964
    .local v27, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual/range {v27 .. v27}, Lorg/joni/ast/StringNode;->length()I

    move-result v26

    .line 1966
    .local v26, "slen":I
    invoke-virtual/range {v27 .. v27}, Lorg/joni/ast/StringNode;->isAmbig()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1967
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v0, v27

    iget v5, v0, Lorg/joni/ast/StringNode;->p:I

    move-object/from16 v0, v27

    iget v6, v0, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual/range {v27 .. v27}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual/range {v3 .. v8}, Lorg/joni/OptExactInfo;->concatStr([BIIZLorg/jcodings/Encoding;)V

    .line 1969
    if-lez v26, :cond_4

    .line 1970
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v0, v27

    iget v5, v0, Lorg/joni/ast/StringNode;->p:I

    aget-byte v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v4, v5}, Lorg/joni/OptMapInfo;->addChar(BLorg/jcodings/Encoding;)V

    .line 1973
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v26

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    .line 1992
    :goto_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget v3, v3, Lorg/joni/OptExactInfo;->length:I

    move/from16 v0, v26

    if-ne v3, v0, :cond_0

    .line 1993
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    goto/16 :goto_0

    .line 1976
    :cond_5
    invoke-virtual/range {v27 .. v27}, Lorg/joni/ast/StringNode;->isDontGetOptInfo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1977
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/joni/ast/StringNode;->length(Lorg/jcodings/Encoding;)I

    move-result v19

    .line 1978
    .local v19, "n":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3}, Lorg/jcodings/Encoding;->maxLengthDistance()I

    move-result v3

    mul-int v17, v3, v19

    .line 1989
    .end local v19    # "n":I
    .local v17, "max":I
    :goto_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    goto :goto_2

    .line 1980
    .end local v17    # "max":I
    :cond_6
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v0, v27

    iget v5, v0, Lorg/joni/ast/StringNode;->p:I

    move-object/from16 v0, v27

    iget v6, v0, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual/range {v27 .. v27}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual/range {v3 .. v8}, Lorg/joni/OptExactInfo;->concatStr([BIIZLorg/jcodings/Encoding;)V

    .line 1981
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->ignoreCase:Z

    .line 1983
    if-lez v26, :cond_7

    .line 1984
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v0, v27

    iget v5, v0, Lorg/joni/ast/StringNode;->p:I

    move-object/from16 v0, v27

    iget v6, v0, Lorg/joni/ast/StringNode;->end:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p3

    iget v8, v0, Lorg/joni/OptEnvironment;->caseFoldFlag:I

    invoke-virtual/range {v3 .. v8}, Lorg/joni/OptMapInfo;->addCharAmb([BIILorg/jcodings/Encoding;I)V

    .line 1987
    :cond_7
    move/from16 v17, v26

    .restart local v17    # "max":I
    goto :goto_3

    .end local v17    # "max":I
    .end local v26    # "slen":I
    .end local v27    # "sn":Lorg/joni/ast/StringNode;
    :pswitch_3
    move-object/from16 v12, p1

    .line 1999
    check-cast v12, Lorg/joni/ast/CClassNode;

    .line 2001
    .local v12, "cc":Lorg/joni/ast/CClassNode;
    iget-object v3, v12, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    if-nez v3, :cond_8

    invoke-virtual {v12}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2002
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3}, Lorg/jcodings/Encoding;->minLength()I

    move-result v18

    .line 2003
    .local v18, "min":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3}, Lorg/jcodings/Encoding;->maxLengthDistance()I

    move-result v17

    .line 2004
    .restart local v17    # "max":I
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2006
    .end local v17    # "max":I
    .end local v18    # "min":I
    :cond_9
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    const/16 v3, 0x100

    if-ge v15, v3, :cond_d

    .line 2007
    iget-object v3, v12, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v3, v15}, Lorg/joni/BitSet;->at(I)Z

    move-result v30

    .line 2008
    .local v30, "z":Z
    if-eqz v30, :cond_a

    invoke-virtual {v12}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    if-nez v30, :cond_c

    invoke-virtual {v12}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2009
    :cond_b
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    int-to-byte v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v4, v5}, Lorg/joni/OptMapInfo;->addChar(BLorg/jcodings/Encoding;)V

    .line 2006
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2012
    .end local v30    # "z":Z
    :cond_d
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2019
    .end local v12    # "cc":Lorg/joni/ast/CClassNode;
    .end local v15    # "i":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3}, Lorg/jcodings/Encoding;->maxLengthDistance()I

    move-result v17

    .line 2020
    .restart local v17    # "max":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_12

    .line 2021
    const/16 v18, 0x1

    .restart local v18    # "min":I
    move-object/from16 v13, p1

    .line 2022
    check-cast v13, Lorg/joni/ast/CTypeNode;

    .line 2024
    .local v13, "cn":Lorg/joni/ast/CTypeNode;
    iget v3, v13, Lorg/joni/ast/CTypeNode;->ctype:I

    packed-switch v3, :pswitch_data_1

    .line 2044
    .end local v13    # "cn":Lorg/joni/ast/CTypeNode;
    :cond_e
    :goto_5
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2026
    .restart local v13    # "cn":Lorg/joni/ast/CTypeNode;
    :pswitch_5
    iget-boolean v3, v13, Lorg/joni/ast/CTypeNode;->not:Z

    if-eqz v3, :cond_10

    .line 2027
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    const/16 v3, 0x100

    if-ge v15, v3, :cond_e

    .line 2028
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v15}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2029
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    int-to-byte v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v4, v5}, Lorg/joni/OptMapInfo;->addChar(BLorg/jcodings/Encoding;)V

    .line 2027
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 2033
    .end local v15    # "i":I
    :cond_10
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_7
    const/16 v3, 0x100

    if-ge v15, v3, :cond_e

    .line 2034
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v15}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2035
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    int-to-byte v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v4, v5}, Lorg/joni/OptMapInfo;->addChar(BLorg/jcodings/Encoding;)V

    .line 2033
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 2042
    .end local v13    # "cn":Lorg/joni/ast/CTypeNode;
    .end local v15    # "i":I
    .end local v18    # "min":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3}, Lorg/jcodings/Encoding;->minLength()I

    move-result v18

    .restart local v18    # "min":I
    goto :goto_5

    .line 2049
    .end local v17    # "max":I
    .end local v18    # "min":I
    :pswitch_6
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v4}, Lorg/jcodings/Encoding;->minLength()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v5}, Lorg/jcodings/Encoding;->maxLengthDistance()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v10, p1

    .line 2054
    check-cast v10, Lorg/joni/ast/AnchorNode;

    .line 2055
    .local v10, "an":Lorg/joni/ast/AnchorNode;
    iget v3, v10, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 2062
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v4, v10, Lorg/joni/ast/AnchorNode;->type:I

    invoke-virtual {v3, v4}, Lorg/joni/OptAnchorInfo;->add(I)V

    goto/16 :goto_0

    .line 2066
    :sswitch_1
    new-instance v22, Lorg/joni/NodeOptInfo;

    invoke-direct/range {v22 .. v22}, Lorg/joni/NodeOptInfo;-><init>()V

    .line 2067
    .restart local v22    # "nopt":Lorg/joni/NodeOptInfo;
    iget-object v3, v10, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 2068
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget v3, v3, Lorg/joni/OptExactInfo;->length:I

    if-lez v3, :cond_14

    .line 2069
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v3, v4}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    .line 2073
    :cond_13
    :goto_8
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 2074
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget v3, v3, Lorg/joni/OptMapInfo;->value:I

    if-lez v3, :cond_0

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v3, v4}, Lorg/joni/OptMapInfo;->copy(Lorg/joni/OptMapInfo;)V

    goto/16 :goto_0

    .line 2070
    :cond_14
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget v3, v3, Lorg/joni/OptExactInfo;->length:I

    if-lez v3, :cond_13

    .line 2071
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    invoke-virtual {v3, v4}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    goto :goto_8

    .end local v10    # "an":Lorg/joni/ast/AnchorNode;
    .end local v22    # "nopt":Lorg/joni/NodeOptInfo;
    :pswitch_8
    move-object/from16 v11, p1

    .line 2087
    check-cast v11, Lorg/joni/ast/BackRefNode;

    .line 2089
    .local v11, "br":Lorg/joni/ast/BackRefNode;
    invoke-virtual {v11}, Lorg/joni/ast/BackRefNode;->isRecursion()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2090
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2094
    :cond_15
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/joni/OptEnvironment;->scanEnv:Lorg/joni/ScanEnvironment;

    iget-object v0, v3, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    move-object/from16 v21, v0

    .line 2096
    .local v21, "nodes":[Lorg/joni/ast/Node;
    const/16 v18, 0x0

    .line 2097
    .restart local v18    # "min":I
    const/16 v17, 0x0

    .line 2099
    .restart local v17    # "max":I
    if-eqz v21, :cond_16

    iget-object v3, v11, Lorg/joni/ast/BackRefNode;->back:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v3, v21, v3

    if-eqz v3, :cond_16

    .line 2100
    iget-object v3, v11, Lorg/joni/ast/BackRefNode;->back:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v3, v21, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v18

    .line 2101
    iget-object v3, v11, Lorg/joni/ast/BackRefNode;->back:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v3, v21, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v17

    .line 2104
    :cond_16
    const/4 v15, 0x1

    .restart local v15    # "i":I
    :goto_9
    iget v3, v11, Lorg/joni/ast/BackRefNode;->backNum:I

    if-ge v15, v3, :cond_19

    .line 2105
    iget-object v3, v11, Lorg/joni/ast/BackRefNode;->back:[I

    aget v3, v3, v15

    aget-object v3, v21, v3

    if-eqz v3, :cond_18

    .line 2106
    iget-object v3, v11, Lorg/joni/ast/BackRefNode;->back:[I

    aget v3, v3, v15

    aget-object v3, v21, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v29

    .line 2107
    .local v29, "tmin":I
    iget-object v3, v11, Lorg/joni/ast/BackRefNode;->back:[I

    aget v3, v3, v15

    aget-object v3, v21, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/joni/Analyser;->getMaxMatchLength(Lorg/joni/ast/Node;)I

    move-result v28

    .line 2108
    .local v28, "tmax":I
    move/from16 v0, v18

    move/from16 v1, v29

    if-le v0, v1, :cond_17

    move/from16 v18, v29

    .line 2109
    :cond_17
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    move/from16 v17, v28

    .line 2104
    .end local v28    # "tmax":I
    .end local v29    # "tmin":I
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 2112
    :cond_19
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .end local v11    # "br":Lorg/joni/ast/BackRefNode;
    .end local v15    # "i":I
    .end local v17    # "max":I
    .end local v18    # "min":I
    .end local v21    # "nodes":[Lorg/joni/ast/Node;
    :pswitch_9
    move-object/from16 v13, p1

    .line 2118
    check-cast v13, Lorg/joni/ast/CallNode;

    .line 2119
    .local v13, "cn":Lorg/joni/ast/CallNode;
    invoke-virtual {v13}, Lorg/joni/ast/CallNode;->isRecursion()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2120
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2122
    :cond_1a
    move-object/from16 v0, p3

    iget v0, v0, Lorg/joni/OptEnvironment;->options:I

    move/from16 v24, v0

    .line 2123
    .local v24, "safe":I
    iget-object v3, v13, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    check-cast v3, Lorg/joni/ast/EncloseNode;

    iget v3, v3, Lorg/joni/ast/EncloseNode;->option:I

    move-object/from16 v0, p3

    iput v3, v0, Lorg/joni/OptEnvironment;->options:I

    .line 2124
    iget-object v3, v13, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 2125
    move/from16 v0, v24

    move-object/from16 v1, p3

    iput v0, v1, Lorg/joni/OptEnvironment;->options:I

    goto/16 :goto_0

    .line 2132
    .end local v13    # "cn":Lorg/joni/ast/CallNode;
    .end local v24    # "safe":I
    :pswitch_a
    new-instance v22, Lorg/joni/NodeOptInfo;

    invoke-direct/range {v22 .. v22}, Lorg/joni/NodeOptInfo;-><init>()V

    .restart local v22    # "nopt":Lorg/joni/NodeOptInfo;
    move-object/from16 v23, p1

    .line 2133
    check-cast v23, Lorg/joni/ast/QuantifierNode;

    .line 2134
    .local v23, "qn":Lorg/joni/ast/QuantifierNode;
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 2135
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v3, :cond_1d

    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v3}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2136
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->max:I

    if-nez v3, :cond_1b

    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v3}, Lorg/joni/ast/Node;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v3, v0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v3, :cond_1b

    .line 2137
    move-object/from16 v0, p3

    iget v3, v0, Lorg/joni/OptEnvironment;->options:I

    invoke-static {v3}, Lorg/joni/Option;->isMultiline(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2138
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Lorg/joni/OptAnchorInfo;->add(I)V

    .line 2167
    :cond_1b
    :goto_a
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->min:I

    move-object/from16 v0, v23

    iget v4, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-static {v3, v4}, Lorg/joni/MinMaxLen;->distanceMultiply(II)I

    move-result v18

    .line 2169
    .restart local v18    # "min":I
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v3}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2170
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->max:I

    if-lez v3, :cond_21

    const v17, 0x7fffffff

    .line 2174
    .restart local v17    # "max":I
    :goto_b
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2140
    .end local v17    # "max":I
    .end local v18    # "min":I
    :cond_1c
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lorg/joni/OptAnchorInfo;->add(I)V

    goto :goto_a

    .line 2144
    :cond_1d
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-lez v3, :cond_1b

    .line 2145
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/NodeOptInfo;->copy(Lorg/joni/NodeOptInfo;)V

    .line 2146
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget v3, v3, Lorg/joni/OptExactInfo;->length:I

    if-lez v3, :cond_1f

    .line 2147
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-boolean v3, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    if-eqz v3, :cond_1f

    .line 2149
    const/4 v15, 0x2

    .restart local v15    # "i":I
    :goto_c
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-gt v15, v3, :cond_1e

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v3}, Lorg/joni/OptExactInfo;->isFull()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 2150
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v4, v5}, Lorg/joni/OptExactInfo;->concat(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 2149
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 2152
    :cond_1e
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ge v15, v3, :cond_1f

    .line 2153
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 2157
    .end local v15    # "i":I
    :cond_1f
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move-object/from16 v0, v23

    iget v4, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    if-eq v3, v4, :cond_20

    .line 2158
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 2159
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 2161
    :cond_20
    move-object/from16 v0, v23

    iget v3, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1b

    .line 2162
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/joni/OptExactInfo;->reachEnd:Z

    goto/16 :goto_a

    .line 2170
    .restart local v18    # "min":I
    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 2172
    :cond_22
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->max:I

    move-object/from16 v0, v23

    iget v4, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v3, v4}, Lorg/joni/MinMaxLen;->distanceMultiply(II)I

    move-result v17

    .restart local v17    # "max":I
    goto/16 :goto_b

    .end local v17    # "max":I
    .end local v18    # "min":I
    .end local v22    # "nopt":Lorg/joni/NodeOptInfo;
    .end local v23    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_b
    move-object/from16 v14, p1

    .line 2179
    check-cast v14, Lorg/joni/ast/EncloseNode;

    .line 2180
    .local v14, "en":Lorg/joni/ast/EncloseNode;
    iget v3, v14, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v3, :pswitch_data_2

    :pswitch_c
    goto/16 :goto_0

    .line 2189
    :pswitch_d
    iget v3, v14, Lorg/joni/ast/EncloseNode;->optCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lorg/joni/ast/EncloseNode;->optCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_25

    .line 2190
    const/16 v18, 0x0

    .line 2191
    .restart local v18    # "min":I
    const v17, 0x7fffffff

    .line 2192
    .restart local v17    # "max":I
    invoke-virtual {v14}, Lorg/joni/ast/EncloseNode;->isMinFixed()Z

    move-result v3

    if-eqz v3, :cond_23

    iget v0, v14, Lorg/joni/ast/EncloseNode;->minLength:I

    move/from16 v18, v0

    .line 2193
    :cond_23
    invoke-virtual {v14}, Lorg/joni/ast/EncloseNode;->isMaxFixed()Z

    move-result v3

    if-eqz v3, :cond_24

    iget v0, v14, Lorg/joni/ast/EncloseNode;->maxLength:I

    move/from16 v17, v0

    .line 2194
    :cond_24
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/joni/MinMaxLen;->set(II)V

    goto/16 :goto_0

    .line 2182
    .end local v17    # "max":I
    .end local v18    # "min":I
    :pswitch_e
    move-object/from16 v0, p3

    iget v0, v0, Lorg/joni/OptEnvironment;->options:I

    move/from16 v25, v0

    .line 2183
    .local v25, "save":I
    iget v3, v14, Lorg/joni/ast/EncloseNode;->option:I

    move-object/from16 v0, p3

    iput v3, v0, Lorg/joni/OptEnvironment;->options:I

    .line 2184
    iget-object v3, v14, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 2185
    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Lorg/joni/OptEnvironment;->options:I

    goto/16 :goto_0

    .line 2196
    .end local v25    # "save":I
    :cond_25
    iget-object v3, v14, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 2197
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    const v4, 0xc000

    invoke-virtual {v3, v4}, Lorg/joni/OptAnchorInfo;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2198
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/joni/OptEnvironment;->scanEnv:Lorg/joni/ScanEnvironment;

    iget v3, v3, Lorg/joni/ScanEnvironment;->backrefedMem:I

    iget v4, v14, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v3, v4}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2199
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    const v4, 0xc000

    invoke-virtual {v3, v4}, Lorg/joni/OptAnchorInfo;->remove(I)V

    goto/16 :goto_0

    .line 2206
    :pswitch_f
    iget-object v3, v14, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    goto/16 :goto_0

    .line 1933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 2024
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
    .end packed-switch

    .line 2055
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch

    .line 2180
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private quantifiersMemoryInfo(Lorg/joni/ast/Node;)I
    .locals 7
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 348
    const/4 v3, 0x0

    .line 350
    .local v3, "info":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v6, v3

    .line 404
    :goto_1
    return v6

    :pswitch_1
    move-object v0, p1

    .line 353
    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .line 355
    .local v0, "can":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v6, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/Analyser;->quantifiersMemoryInfo(Lorg/joni/ast/Node;)I

    move-result v5

    .line 356
    .local v5, "v":I
    if-le v5, v3, :cond_2

    move v3, v5

    .line 357
    :cond_2
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_1

    goto :goto_0

    .end local v0    # "can":Lorg/joni/ast/ConsAltNode;
    .end local v5    # "v":I
    :pswitch_2
    move-object v1, p1

    .line 362
    check-cast v1, Lorg/joni/ast/CallNode;

    .line 363
    .local v1, "cn":Lorg/joni/ast/CallNode;
    invoke-virtual {v1}, Lorg/joni/ast/CallNode;->isRecursion()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    const/4 v6, 0x3

    goto :goto_1

    .line 366
    :cond_3
    iget-object v6, v1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/Analyser;->quantifiersMemoryInfo(Lorg/joni/ast/Node;)I

    move-result v3

    .line 369
    goto :goto_0

    .end local v1    # "cn":Lorg/joni/ast/CallNode;
    :pswitch_3
    move-object v4, p1

    .line 372
    check-cast v4, Lorg/joni/ast/QuantifierNode;

    .line 373
    .local v4, "qn":Lorg/joni/ast/QuantifierNode;
    iget v6, v4, Lorg/joni/ast/QuantifierNode;->upper:I

    if-eqz v6, :cond_0

    .line 374
    iget-object v6, v4, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/Analyser;->quantifiersMemoryInfo(Lorg/joni/ast/Node;)I

    move-result v3

    goto :goto_0

    .end local v4    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_4
    move-object v2, p1

    .line 379
    check-cast v2, Lorg/joni/ast/EncloseNode;

    .line 380
    .local v2, "en":Lorg/joni/ast/EncloseNode;
    iget v6, v2, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v6, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    .line 382
    :pswitch_6
    const/4 v6, 0x2

    goto :goto_1

    .line 386
    :pswitch_7
    iget-object v6, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/Analyser;->quantifiersMemoryInfo(Lorg/joni/ast/Node;)I

    move-result v3

    .line 387
    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 380
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private renumberByMap(Lorg/joni/ast/Node;[I)V
    .locals 2
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "map"    # [I

    .prologue
    .line 256
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 277
    .end local p1    # "node":Lorg/joni/ast/Node;
    :goto_0
    :pswitch_0
    return-void

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_1
    move-object v0, p1

    .line 259
    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .line 261
    .local v0, "can":Lorg/joni/ast/ConsAltNode;
    :cond_0
    iget-object v1, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2}, Lorg/joni/Analyser;->renumberByMap(Lorg/joni/ast/Node;[I)V

    .line 262
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 266
    .end local v0    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_2
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v1, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2}, Lorg/joni/Analyser;->renumberByMap(Lorg/joni/ast/Node;[I)V

    goto :goto_0

    .line 270
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_3
    check-cast p1, Lorg/joni/ast/EncloseNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v1, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p2}, Lorg/joni/Analyser;->renumberByMap(Lorg/joni/ast/Node;[I)V

    goto :goto_0

    .line 274
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_4
    check-cast p1, Lorg/joni/ast/BackRefNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p1, p2}, Lorg/joni/ast/BackRefNode;->renumber([I)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setCallAttr(Lorg/joni/ast/CallNode;)V
    .locals 3
    .param p1, "cn"    # Lorg/joni/ast/CallNode;

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v0, v0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget v1, p1, Lorg/joni/ast/CallNode;->groupNum:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    .line 1232
    iget-object v0, p1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    if-nez v0, :cond_0

    const-string v0, "undefined name <%n> reference"

    iget v1, p1, Lorg/joni/ast/CallNode;->nameP:I

    iget v2, p1, Lorg/joni/ast/CallNode;->nameEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;II)V

    .line 1234
    :cond_0
    iget-object v0, p1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    check-cast v0, Lorg/joni/ast/EncloseNode;

    invoke-virtual {v0}, Lorg/joni/ast/EncloseNode;->setCalled()V

    .line 1235
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->btMemStart:I

    iget v2, p1, Lorg/joni/ast/CallNode;->groupNum:I

    invoke-static {v1, v2}, Lorg/joni/BitStatus;->bsOnAt(II)I

    move-result v1

    iput v1, v0, Lorg/joni/ScanEnvironment;->btMemStart:I

    .line 1236
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v0, v0, Lorg/joni/ScanEnvironment;->unsetAddrList:Lorg/joni/UnsetAddrList;

    iput-object v0, p1, Lorg/joni/ast/CallNode;->unsetAddrList:Lorg/joni/UnsetAddrList;

    .line 1237
    return-void
.end method

.method private setupLookBehind(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1345
    move-object v0, p1

    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1346
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget-object v2, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;)I

    move-result v1

    .line 1347
    .local v1, "len":I
    iget v2, p0, Lorg/joni/Analyser;->returnCode:I

    packed-switch v2, :pswitch_data_0

    .line 1361
    .end local p1    # "node":Lorg/joni/ast/Node;
    :goto_0
    return-object p1

    .line 1349
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    iput v1, v0, Lorg/joni/ast/AnchorNode;->charLength:I

    goto :goto_0

    .line 1352
    :pswitch_1
    const-string v2, "invalid pattern in look-behind"

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->newSyntaxException(Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :pswitch_2
    iget-object v2, p0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->differentLengthAltLookBehind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    invoke-direct {p0, p1}, Lorg/joni/Analyser;->divideLookBehindAlternatives(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    move-result-object p1

    goto :goto_0

    .line 1358
    :cond_0
    const-string v2, "invalid pattern in look-behind"

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->newSyntaxException(Ljava/lang/String;)V

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I
    .locals 11
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "head"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 1001
    const/4 v5, 0x0

    .line 1003
    .local v5, "r":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    move v6, v5

    .line 1069
    :cond_1
    :goto_1
    return v6

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    move-object v7, p1

    .line 1006
    check-cast v7, Lorg/joni/ast/ConsAltNode;

    .line 1008
    .local v7, "x":Lorg/joni/ast/ConsAltNode;
    :cond_2
    iget-object v8, v7, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v8, p2}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v6

    .line 1009
    .local v6, "ret":I
    if-eq v6, v9, :cond_1

    .line 1010
    or-int/2addr v5, v6

    .line 1011
    if-eqz p2, :cond_3

    .line 1012
    iget-object v8, v7, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v8}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v3

    .line 1013
    .local v3, "min":I
    if-eqz v3, :cond_3

    const/4 p2, 0x0

    .line 1015
    .end local v3    # "min":I
    :cond_3
    iget-object v7, v7, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v7, :cond_2

    goto :goto_0

    .end local v6    # "ret":I
    .end local v7    # "x":Lorg/joni/ast/ConsAltNode;
    :pswitch_1
    move-object v1, p1

    .line 1019
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 1020
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    const/4 v5, 0x1

    .line 1022
    :cond_4
    iget-object v8, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v8, p2}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v6

    .line 1023
    .restart local v6    # "ret":I
    if-eq v6, v9, :cond_1

    .line 1024
    and-int/2addr v5, v6

    .line 1025
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_4

    goto :goto_0

    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    .end local v6    # "ret":I
    :pswitch_2
    move-object v4, p1

    .line 1029
    check-cast v4, Lorg/joni/ast/QuantifierNode;

    .line 1030
    .local v4, "qn":Lorg/joni/ast/QuantifierNode;
    iget-object v9, v4, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v9, p2}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v5

    .line 1031
    if-ne v5, v8, :cond_0

    .line 1032
    iget v8, v4, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v8, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .end local v4    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_3
    move-object v0, p1

    .line 1037
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1038
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v8, v0, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 1043
    :sswitch_0
    iget-object v8, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v8, p2}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v5

    goto :goto_0

    .line 1049
    .end local v0    # "an":Lorg/joni/ast/AnchorNode;
    :pswitch_4
    check-cast p1, Lorg/joni/ast/CallNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v8, p1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v8, p2}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v5

    .line 1050
    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_5
    move-object v2, p1

    .line 1053
    check-cast v2, Lorg/joni/ast/EncloseNode;

    .line 1054
    .local v2, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isMark2()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1055
    const/4 v6, 0x0

    goto :goto_1

    .line 1056
    :cond_5
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isMark1()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1057
    if-nez p2, :cond_6

    :goto_2
    move v6, v8

    goto :goto_1

    :cond_6
    move v8, v9

    goto :goto_2

    .line 1060
    :cond_7
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->setMark2()V

    .line 1061
    iget-object v8, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v8, p2}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v5

    .line 1062
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->clearMark2()V

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1038
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private subexpRecursiveCheck(Lorg/joni/ast/Node;)I
    .locals 6
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1119
    const/4 v4, 0x0

    .line 1121
    .local v4, "r":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    move v5, v4

    .line 1169
    :goto_1
    return v5

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    move-object v1, p1

    .line 1124
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 1126
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v5, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v5}, Lorg/joni/Analyser;->subexpRecursiveCheck(Lorg/joni/ast/Node;)I

    move-result v5

    or-int/2addr v4, v5

    .line 1127
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1131
    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_1
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v5}, Lorg/joni/Analyser;->subexpRecursiveCheck(Lorg/joni/ast/Node;)I

    move-result v4

    .line 1132
    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_2
    move-object v0, p1

    .line 1135
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1136
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v5, v0, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1141
    :sswitch_0
    iget-object v5, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v5}, Lorg/joni/Analyser;->subexpRecursiveCheck(Lorg/joni/ast/Node;)I

    move-result v4

    goto :goto_0

    .end local v0    # "an":Lorg/joni/ast/AnchorNode;
    :pswitch_3
    move-object v2, p1

    .line 1147
    check-cast v2, Lorg/joni/ast/CallNode;

    .line 1148
    .local v2, "cn":Lorg/joni/ast/CallNode;
    iget-object v5, v2, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v5}, Lorg/joni/Analyser;->subexpRecursiveCheck(Lorg/joni/ast/Node;)I

    move-result v4

    .line 1149
    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/joni/ast/CallNode;->setRecursion()V

    goto :goto_0

    .end local v2    # "cn":Lorg/joni/ast/CallNode;
    :pswitch_4
    move-object v3, p1

    .line 1153
    check-cast v3, Lorg/joni/ast/EncloseNode;

    .line 1154
    .local v3, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->isMark2()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1155
    const/4 v5, 0x0

    goto :goto_1

    .line 1156
    :cond_2
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->isMark1()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1157
    const/4 v5, 0x1

    goto :goto_1

    .line 1159
    :cond_3
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->setMark2()V

    .line 1160
    iget-object v5, v3, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v5}, Lorg/joni/Analyser;->subexpRecursiveCheck(Lorg/joni/ast/Node;)I

    move-result v4

    .line 1161
    invoke-virtual {v3}, Lorg/joni/ast/EncloseNode;->clearMark2()V

    goto :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1136
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private swap(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)V
    .locals 1
    .param p1, "a"    # Lorg/joni/ast/Node;
    .param p2, "b"    # Lorg/joni/ast/Node;

    .prologue
    .line 337
    invoke-virtual {p1, p2}, Lorg/joni/ast/Node;->swap(Lorg/joni/ast/Node;)V

    .line 339
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    if-ne v0, p2, :cond_1

    .line 340
    iput-object p1, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    if-ne v0, p1, :cond_0

    .line 342
    iput-object p2, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    goto :goto_0
.end method

.method private updateStringNodeCaseFold(Lorg/joni/ast/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1470
    move-object v0, p1

    check-cast v0, Lorg/joni/ast/StringNode;

    .line 1471
    .local v0, "sn":Lorg/joni/ast/StringNode;
    iget-object v2, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v1

    .line 1472
    .local v1, "toLower":[B
    if-eqz v1, :cond_0

    .line 1473
    invoke-direct {p0, v0, v1}, Lorg/joni/Analyser;->updateStringNodeCaseFoldSingleByte(Lorg/joni/ast/StringNode;[B)V

    .line 1477
    :goto_0
    return-void

    .line 1475
    :cond_0
    invoke-direct {p0, v0}, Lorg/joni/Analyser;->updateStringNodeCaseFoldMultiByte(Lorg/joni/ast/StringNode;)V

    goto :goto_0
.end method

.method private updateStringNodeCaseFoldMultiByte(Lorg/joni/ast/StringNode;)V
    .locals 14
    .param p1, "sn"    # Lorg/joni/ast/StringNode;

    .prologue
    const/4 v13, 0x0

    .line 1434
    iget-object v2, p1, Lorg/joni/ast/StringNode;->bytes:[B

    .line 1435
    .local v2, "bytes":[B
    iget v4, p1, Lorg/joni/ast/StringNode;->end:I

    .line 1436
    .local v4, "end":I
    iget v0, p1, Lorg/joni/ast/StringNode;->p:I

    iput v0, p0, Lorg/joni/Analyser;->value:I

    .line 1437
    const/4 v10, 0x0

    .line 1438
    .local v10, "sp":I
    const/16 v0, 0x12

    new-array v5, v0, [B

    .line 1440
    .local v5, "buf":[B
    :goto_0
    iget v0, p0, Lorg/joni/Analyser;->value:I

    if-ge v0, v4, :cond_2

    .line 1441
    iget v8, p0, Lorg/joni/Analyser;->value:I

    .line 1442
    .local v8, "ovalue":I
    iget-object v0, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->caseFoldFlag:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v7

    .line 1444
    .local v7, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 1445
    add-int v0, v8, v6

    aget-byte v0, v2, v0

    aget-byte v1, v5, v6

    if-eq v0, v1, :cond_3

    .line 1447
    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v9, v0, [B

    .line 1448
    .local v9, "sbuf":[B
    iget v0, p1, Lorg/joni/ast/StringNode;->p:I

    iget v1, p1, Lorg/joni/ast/StringNode;->p:I

    sub-int v1, v8, v1

    invoke-static {v2, v0, v9, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1449
    iput v8, p0, Lorg/joni/Analyser;->value:I

    .line 1450
    :goto_2
    iget v0, p0, Lorg/joni/Analyser;->value:I

    if-ge v0, v4, :cond_1

    .line 1451
    iget-object v0, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->caseFoldFlag:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v7

    .line 1452
    const/4 v6, 0x0

    move v11, v10

    .end local v10    # "sp":I
    .local v11, "sp":I
    :goto_3
    if-ge v6, v7, :cond_5

    .line 1453
    array-length v0, v9

    if-lt v11, v0, :cond_0

    .line 1454
    array-length v0, v9

    shl-int/lit8 v0, v0, 0x1

    new-array v12, v0, [B

    .line 1455
    .local v12, "tmp":[B
    array-length v0, v9

    invoke-static {v9, v13, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1456
    move-object v9, v12

    .line 1458
    .end local v12    # "tmp":[B
    :cond_0
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "sp":I
    .restart local v10    # "sp":I
    aget-byte v0, v5, v6

    aput-byte v0, v9, v11

    .line 1452
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    .end local v10    # "sp":I
    .restart local v11    # "sp":I
    goto :goto_3

    .line 1461
    .end local v11    # "sp":I
    .restart local v10    # "sp":I
    :cond_1
    invoke-virtual {p1, v9, v13, v10}, Lorg/joni/ast/StringNode;->set([BII)V

    .line 1467
    .end local v6    # "i":I
    .end local v7    # "len":I
    .end local v8    # "ovalue":I
    .end local v9    # "sbuf":[B
    :cond_2
    return-void

    .line 1444
    .restart local v6    # "i":I
    .restart local v7    # "len":I
    .restart local v8    # "ovalue":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1465
    :cond_4
    add-int/2addr v10, v7

    .line 1466
    goto :goto_0

    .end local v10    # "sp":I
    .restart local v9    # "sbuf":[B
    .restart local v11    # "sp":I
    :cond_5
    move v10, v11

    .end local v11    # "sp":I
    .restart local v10    # "sp":I
    goto :goto_2
.end method

.method private updateStringNodeCaseFoldSingleByte(Lorg/joni/ast/StringNode;[B)V
    .locals 10
    .param p1, "sn"    # Lorg/joni/ast/StringNode;
    .param p2, "toLower"    # [B

    .prologue
    const/4 v9, 0x0

    .line 1411
    iget v1, p1, Lorg/joni/ast/StringNode;->end:I

    .line 1412
    .local v1, "end":I
    iget-object v0, p1, Lorg/joni/ast/StringNode;->bytes:[B

    .line 1413
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 1414
    .local v6, "sp":I
    iget v3, p1, Lorg/joni/ast/StringNode;->p:I

    .line 1416
    .local v3, "p":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1417
    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    aget-byte v2, p2, v8

    .line 1418
    .local v2, "lower":B
    aget-byte v8, v0, v3

    if-eq v2, v8, :cond_2

    .line 1419
    iget v8, p1, Lorg/joni/ast/StringNode;->p:I

    sub-int v8, v1, v8

    new-array v5, v8, [B

    .line 1420
    .local v5, "sbuf":[B
    iget v8, p1, Lorg/joni/ast/StringNode;->p:I

    invoke-static {v0, v8, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v3

    .end local v3    # "p":I
    .local v4, "p":I
    move v7, v6

    .line 1422
    .end local v6    # "sp":I
    .local v7, "sp":I
    :goto_1
    if-ge v4, v1, :cond_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sp":I
    .restart local v6    # "sp":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-byte v8, v0, v4

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, p2, v8

    aput-byte v8, v5, v7

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    move v7, v6

    .end local v6    # "sp":I
    .restart local v7    # "sp":I
    goto :goto_1

    .line 1424
    :cond_0
    invoke-virtual {p1, v5, v9, v7}, Lorg/joni/ast/StringNode;->set([BII)V

    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    move v6, v7

    .line 1431
    .end local v2    # "lower":B
    .end local v5    # "sbuf":[B
    .end local v7    # "sp":I
    .restart local v6    # "sp":I
    :cond_1
    return-void

    .line 1427
    .restart local v2    # "lower":B
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 1428
    add-int/lit8 v3, v3, 0x1

    .line 1430
    goto :goto_0
.end method


# virtual methods
.method protected final compile()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    const/4 v1, -0x1

    iput v1, v0, Lorg/joni/Regex;->state:I

    .line 71
    invoke-virtual {p0}, Lorg/joni/Analyser;->reset()V

    .line 73
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->numMem:I

    .line 74
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->numRepeat:I

    .line 75
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->numNullCheck:I

    .line 77
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput-object v4, v0, Lorg/joni/Regex;->repeatRangeLo:[I

    .line 78
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput-object v4, v0, Lorg/joni/Regex;->repeatRangeHi:[I

    .line 79
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->numCombExpCheck:I

    .line 83
    invoke-virtual {p0}, Lorg/joni/Analyser;->parse()Lorg/joni/ast/Node;

    .line 87
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v0, v0, Lorg/joni/ScanEnvironment;->numNamed:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->captureOnlyNamedGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->options:I

    invoke-static {v0}, Lorg/joni/Option;->isCaptureGroup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v0, v0, Lorg/joni/ScanEnvironment;->numNamed:I

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->numMem:I

    if-eq v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Analyser;->disableNoNameGroupCapture(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v0, v0, Lorg/joni/ScanEnvironment;->numCall:I

    if-lez v0, :cond_3

    .line 98
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    new-instance v1, Lorg/joni/UnsetAddrList;

    iget-object v2, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->numCall:I

    invoke-direct {v1, v2}, Lorg/joni/UnsetAddrList;-><init>(I)V

    iput-object v1, v0, Lorg/joni/ScanEnvironment;->unsetAddrList:Lorg/joni/UnsetAddrList;

    .line 99
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Analyser;->setupSubExpCall(Lorg/joni/ast/Node;)V

    .line 101
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Analyser;->subexpRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    .line 103
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Analyser;->subexpInfRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    .line 105
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->numCall:I

    iput v1, v0, Lorg/joni/Regex;->numCall:I

    .line 116
    :goto_1
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0, v3}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    .line 123
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->captureHistory:I

    iput v1, v0, Lorg/joni/Regex;->captureHistory:I

    .line 124
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->btMemStart:I

    iput v1, v0, Lorg/joni/Regex;->btMemStart:I

    .line 125
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->btMemEnd:I

    iput v1, v0, Lorg/joni/Regex;->btMemEnd:I

    .line 127
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->options:I

    invoke-static {v0}, Lorg/joni/Option;->isFindCondition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    invoke-static {}, Lorg/joni/BitStatus;->bsAll()I

    move-result v1

    iput v1, v0, Lorg/joni/Regex;->btMemEnd:I

    .line 155
    :goto_2
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    invoke-virtual {v0}, Lorg/joni/Regex;->clearOptimizeInfo()V

    .line 157
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Analyser;->setOptimizedInfoFromTree(Lorg/joni/ast/Node;)V

    .line 159
    iget-object v0, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iput-object v4, v0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    .line 161
    new-instance v0, Lorg/joni/ArrayCompiler;

    invoke-direct {v0, p0}, Lorg/joni/ArrayCompiler;-><init>(Lorg/joni/Analyser;)V

    invoke-virtual {v0}, Lorg/joni/ArrayCompiler;->compile()V

    .line 164
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->numRepeat:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->btMemEnd:I

    if-eqz v0, :cond_5

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    const/4 v1, 0x2

    iput v1, v0, Lorg/joni/Regex;->stackPopLevel:I

    .line 182
    :goto_3
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->state:I

    .line 183
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Analyser;->numberedRefCheck(Lorg/joni/ast/Node;)V

    goto/16 :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->numCall:I

    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->btMemEnd:I

    iput v1, v0, Lorg/joni/Regex;->btMemEnd:I

    .line 131
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v1, v0, Lorg/joni/Regex;->btMemEnd:I

    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->captureHistory:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/joni/Regex;->btMemEnd:I

    goto :goto_2

    .line 167
    :cond_5
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->btMemStart:I

    if-eqz v0, :cond_6

    .line 168
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    const/4 v1, 0x1

    iput v1, v0, Lorg/joni/Regex;->stackPopLevel:I

    goto :goto_3

    .line 170
    :cond_6
    iget-object v0, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput v3, v0, Lorg/joni/Regex;->stackPopLevel:I

    goto :goto_3
.end method

.method protected final disableNoNameGroupCapture(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;
    .locals 7
    .param p1, "root"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v5, 0x0

    .line 305
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v4, v4, Lorg/joni/ScanEnvironment;->numMem:I

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 307
    .local v2, "map":[I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v4, v4, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v0, v4, :cond_0

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    new-instance v4, Lorg/jcodings/Ptr;

    invoke-direct {v4, v5}, Lorg/jcodings/Ptr;-><init>(I)V

    invoke-direct {p0, p1, v2, v4}, Lorg/joni/Analyser;->noNameDisableMap(Lorg/joni/ast/Node;[ILorg/jcodings/Ptr;)Lorg/joni/ast/Node;

    move-result-object p1

    .line 310
    invoke-direct {p0, p1, v2}, Lorg/joni/Analyser;->renumberByMap(Lorg/joni/ast/Node;[I)V

    .line 312
    const/4 v0, 0x1

    const/4 v3, 0x1

    .local v3, "pos":I
    :goto_1
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v4, v4, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v0, v4, :cond_2

    .line 313
    aget v4, v2, v0

    if-lez v4, :cond_1

    .line 314
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v4, v4, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget-object v5, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v5, v5, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    aget-object v5, v5, v0

    aput-object v5, v4, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    .line 312
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_2
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v4, Lorg/joni/ScanEnvironment;->captureHistory:I

    .line 320
    .local v1, "loc":I
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    invoke-static {}, Lorg/joni/BitStatus;->bsClear()I

    move-result v5

    iput v5, v4, Lorg/joni/ScanEnvironment;->captureHistory:I

    .line 322
    const/4 v0, 0x1

    :goto_2
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_4

    .line 323
    invoke-static {v1, v0}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v5, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v5, v5, Lorg/joni/ScanEnvironment;->captureHistory:I

    aget v6, v2, v0

    invoke-static {v5, v6}, Lorg/joni/BitStatus;->bsOnAtSimple(II)I

    move-result v5

    iput v5, v4, Lorg/joni/ScanEnvironment;->captureHistory:I

    .line 322
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    :cond_4
    iget-object v4, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v5, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v5, v5, Lorg/joni/ScanEnvironment;->numNamed:I

    iput v5, v4, Lorg/joni/ScanEnvironment;->numMem:I

    .line 329
    iget-object v4, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v5, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v5, v5, Lorg/joni/ScanEnvironment;->numNamed:I

    iput v5, v4, Lorg/joni/Regex;->numMem:I

    .line 331
    iget-object v4, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    invoke-virtual {v4, v2}, Lorg/joni/Regex;->renumberNameTable([I)V

    .line 333
    return-object p1
.end method

.method protected final getCharLengthTree(Lorg/joni/ast/Node;)I
    .locals 1
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;I)I

    move-result v0

    return v0
.end method

.method protected final numberedRefCheck(Lorg/joni/ast/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 280
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 302
    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_1
    move-object v1, p1

    .line 283
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 285
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v2, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->numberedRefCheck(Lorg/joni/ast/Node;)V

    .line 286
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_1

    goto :goto_0

    .line 290
    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_2
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v2, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->numberedRefCheck(Lorg/joni/ast/Node;)V

    goto :goto_0

    .line 294
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_3
    check-cast p1, Lorg/joni/ast/EncloseNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v2, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->numberedRefCheck(Lorg/joni/ast/Node;)V

    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_4
    move-object v0, p1

    .line 298
    check-cast v0, Lorg/joni/ast/BackRefNode;

    .line 299
    .local v0, "br":Lorg/joni/ast/BackRefNode;
    invoke-virtual {v0}, Lorg/joni/ast/BackRefNode;->isNameRef()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "numbered backref/call is not allowed. (use name)"

    invoke-virtual {p0, v2}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final setOptimizedInfoFromTree(Lorg/joni/ast/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 2218
    new-instance v1, Lorg/joni/NodeOptInfo;

    invoke-direct {v1}, Lorg/joni/NodeOptInfo;-><init>()V

    .line 2219
    .local v1, "opt":Lorg/joni/NodeOptInfo;
    new-instance v0, Lorg/joni/OptEnvironment;

    invoke-direct {v0}, Lorg/joni/OptEnvironment;-><init>()V

    .line 2221
    .local v0, "oenv":Lorg/joni/OptEnvironment;
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iput-object v2, v0, Lorg/joni/OptEnvironment;->enc:Lorg/jcodings/Encoding;

    .line 2222
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->options:I

    iput v2, v0, Lorg/joni/OptEnvironment;->options:I

    .line 2223
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->caseFoldFlag:I

    iput v2, v0, Lorg/joni/OptEnvironment;->caseFoldFlag:I

    .line 2224
    iget-object v2, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iput-object v2, v0, Lorg/joni/OptEnvironment;->scanEnv:Lorg/joni/ScanEnvironment;

    .line 2225
    iget-object v2, v0, Lorg/joni/OptEnvironment;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v2}, Lorg/joni/MinMaxLen;->clear()V

    .line 2227
    invoke-direct {p0, p1, v1, v0}, Lorg/joni/Analyser;->optimizeNodeLeft(Lorg/joni/ast/Node;Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V

    .line 2229
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v3, v3, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    const v4, 0xc005

    and-int/2addr v3, v4

    iput v3, v2, Lorg/joni/Regex;->anchor:I

    .line 2234
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v3, v2, Lorg/joni/Regex;->anchor:I

    iget-object v4, v1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v4, v4, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    and-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iput v3, v2, Lorg/joni/Regex;->anchor:I

    .line 2237
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->anchor:I

    and-int/lit8 v2, v2, 0x18

    if-eqz v2, :cond_0

    .line 2238
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->min:I

    iput v3, v2, Lorg/joni/Regex;->anchorDmin:I

    .line 2239
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->max:I

    iput v3, v2, Lorg/joni/Regex;->anchorDmax:I

    .line 2242
    :cond_0
    iget-object v2, v1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget v2, v2, Lorg/joni/OptExactInfo;->length:I

    if-gtz v2, :cond_1

    iget-object v2, v1, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget v2, v2, Lorg/joni/OptExactInfo;->length:I

    if-lez v2, :cond_4

    .line 2243
    :cond_1
    iget-object v2, v1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v4, p0, Lorg/joni/Analyser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2, v3, v4}, Lorg/joni/OptExactInfo;->select(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 2244
    iget-object v2, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget v2, v2, Lorg/joni/OptMapInfo;->value:I

    if-lez v2, :cond_3

    iget-object v2, v1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v2, v3}, Lorg/joni/OptExactInfo;->compare(Lorg/joni/OptMapInfo;)I

    move-result v2

    if-lez v2, :cond_3

    .line 2246
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v2, v3}, Lorg/joni/Regex;->setOptimizeMapInfo(Lorg/joni/OptMapInfo;)V

    .line 2247
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v3, v3, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v2, v3}, Lorg/joni/Regex;->setSubAnchor(Lorg/joni/OptAnchorInfo;)V

    .line 2264
    :cond_2
    :goto_0
    return-void

    .line 2249
    :cond_3
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v2, v3}, Lorg/joni/Regex;->setExactInfo(Lorg/joni/OptExactInfo;)V

    .line 2250
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v3, v3, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v2, v3}, Lorg/joni/Regex;->setSubAnchor(Lorg/joni/OptAnchorInfo;)V

    goto :goto_0

    .line 2252
    :cond_4
    iget-object v2, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget v2, v2, Lorg/joni/OptMapInfo;->value:I

    if-lez v2, :cond_5

    .line 2254
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v2, v3}, Lorg/joni/Regex;->setOptimizeMapInfo(Lorg/joni/OptMapInfo;)V

    .line 2255
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v3, v1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v3, v3, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v2, v3}, Lorg/joni/Regex;->setSubAnchor(Lorg/joni/OptAnchorInfo;)V

    goto :goto_0

    .line 2257
    :cond_5
    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v3, v2, Lorg/joni/Regex;->subAnchor:I

    iget-object v4, v1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v4, v4, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    and-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Lorg/joni/Regex;->subAnchor:I

    .line 2258
    iget-object v2, v1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v2, v2, Lorg/joni/MinMaxLen;->max:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget v3, v2, Lorg/joni/Regex;->subAnchor:I

    iget-object v4, v1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v4, v4, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    and-int/lit8 v4, v4, 0x20

    or-int/2addr v3, v4

    iput v3, v2, Lorg/joni/Regex;->subAnchor:I

    goto :goto_0
.end method

.method protected final setupCombExpCheck(Lorg/joni/ast/Node;I)I
    .locals 13
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "state"    # I

    .prologue
    .line 1626
    move v8, p2

    .line 1629
    .local v8, "r":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1734
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    :pswitch_1
    move-object v5, p1

    .line 1631
    check-cast v5, Lorg/joni/ast/ConsAltNode;

    .line 1634
    .local v5, "ln":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v11, v5, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v11, v8}, Lorg/joni/Analyser;->setupCombExpCheck(Lorg/joni/ast/Node;I)I

    move-result v8

    .line 1636
    if-ltz v8, :cond_0

    iget-object v5, v5, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v5, :cond_1

    goto :goto_0

    .end local v5    # "ln":Lorg/joni/ast/ConsAltNode;
    :pswitch_2
    move-object v1, p1

    .line 1640
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 1642
    .local v1, "an":Lorg/joni/ast/ConsAltNode;
    :cond_2
    iget-object v11, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v11, p2}, Lorg/joni/Analyser;->setupCombExpCheck(Lorg/joni/ast/Node;I)I

    move-result v9

    .line 1643
    .local v9, "ret":I
    or-int/2addr v8, v9

    .line 1644
    if-ltz v9, :cond_0

    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_2

    goto :goto_0

    .end local v1    # "an":Lorg/joni/ast/ConsAltNode;
    .end local v9    # "ret":I
    :pswitch_3
    move-object v7, p1

    .line 1648
    check-cast v7, Lorg/joni/ast/QuantifierNode;

    .line 1649
    .local v7, "qn":Lorg/joni/ast/QuantifierNode;
    move v2, p2

    .line 1650
    .local v2, "childState":I
    const/4 v0, 0x0

    .line 1653
    .local v0, "addState":I
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v11}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1654
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    .line 1656
    or-int/lit8 v2, v2, 0x2

    .line 1659
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v11, Lorg/joni/ScanEnvironment;->backrefedMem:I

    if-nez v11, :cond_3

    .line 1660
    iget-object v11, v7, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v11}, Lorg/joni/ast/Node;->getType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_3

    .line 1661
    iget-object v4, v7, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    check-cast v4, Lorg/joni/ast/EncloseNode;

    .line 1662
    .local v4, "en":Lorg/joni/ast/EncloseNode;
    iget v11, v4, Lorg/joni/ast/EncloseNode;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1663
    iget-object v11, v4, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v11}, Lorg/joni/ast/Node;->getType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    .line 1664
    iget-object v6, v4, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    check-cast v6, Lorg/joni/ast/QuantifierNode;

    .line 1665
    .local v6, "q":Lorg/joni/ast/QuantifierNode;
    iget v11, v6, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v11}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-boolean v11, v6, Lorg/joni/ast/QuantifierNode;->greedy:Z

    iget-boolean v12, v7, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-ne v11, v12, :cond_3

    .line 1666
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    iput v11, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 1667
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    move v2, p2

    .line 1676
    .end local v4    # "en":Lorg/joni/ast/EncloseNode;
    .end local v6    # "q":Lorg/joni/ast/QuantifierNode;
    :cond_3
    and-int/lit8 v11, p2, 0x2

    if-eqz v11, :cond_6

    .line 1677
    const/4 v11, -0x1

    iput v11, v7, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    .line 1699
    :cond_4
    :goto_2
    iget-object v11, v7, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v11, v2}, Lorg/joni/Analyser;->setupCombExpCheck(Lorg/joni/ast/Node;I)I

    move-result v8

    .line 1700
    or-int/2addr v8, v0

    .line 1701
    goto/16 :goto_0

    .line 1666
    .restart local v4    # "en":Lorg/joni/ast/EncloseNode;
    .restart local v6    # "q":Lorg/joni/ast/QuantifierNode;
    :cond_5
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->lower:I

    goto :goto_1

    .line 1679
    .end local v4    # "en":Lorg/joni/ast/EncloseNode;
    .end local v6    # "q":Lorg/joni/ast/QuantifierNode;
    :cond_6
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v11}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1680
    const v10, 0x7fffffff

    .line 1681
    .local v10, "varNum":I
    or-int/lit8 v2, v2, 0x1

    .line 1686
    :goto_3
    const/16 v11, 0x200

    if-lt v10, v11, :cond_7

    or-int/lit8 v0, v0, 0x4

    .line 1688
    :cond_7
    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_8

    if-nez v10, :cond_9

    :cond_8
    and-int/lit8 v11, p2, 0x4

    if-eqz v11, :cond_4

    const/16 v11, 0x200

    if-lt v10, v11, :cond_4

    .line 1690
    :cond_9
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    if-nez v11, :cond_4

    .line 1691
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v12, v11, Lorg/joni/ScanEnvironment;->numCombExpCheck:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/joni/ScanEnvironment;->numCombExpCheck:I

    .line 1692
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v11, Lorg/joni/ScanEnvironment;->numCombExpCheck:I

    iput v11, v7, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    .line 1693
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v11, Lorg/joni/ScanEnvironment;->currMaxRegNum:I

    iget-object v12, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v12, v12, Lorg/joni/ScanEnvironment;->combExpMaxRegNum:I

    if-le v11, v12, :cond_4

    .line 1694
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v12, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v12, v12, Lorg/joni/ScanEnvironment;->currMaxRegNum:I

    iput v12, v11, Lorg/joni/ScanEnvironment;->combExpMaxRegNum:I

    goto :goto_2

    .line 1683
    .end local v10    # "varNum":I
    :cond_a
    iget v11, v7, Lorg/joni/ast/QuantifierNode;->upper:I

    iget v12, v7, Lorg/joni/ast/QuantifierNode;->lower:I

    sub-int v10, v11, v12

    .restart local v10    # "varNum":I
    goto :goto_3

    .end local v0    # "addState":I
    .end local v2    # "childState":I
    .end local v7    # "qn":Lorg/joni/ast/QuantifierNode;
    .end local v10    # "varNum":I
    :pswitch_4
    move-object v4, p1

    .line 1704
    check-cast v4, Lorg/joni/ast/EncloseNode;

    .line 1705
    .restart local v4    # "en":Lorg/joni/ast/EncloseNode;
    iget v11, v4, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v11, :pswitch_data_1

    .line 1714
    iget-object v11, v4, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v11, p2}, Lorg/joni/Analyser;->setupCombExpCheck(Lorg/joni/ast/Node;I)I

    move-result v8

    .line 1716
    goto/16 :goto_0

    .line 1707
    :pswitch_5
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v11, Lorg/joni/ScanEnvironment;->currMaxRegNum:I

    iget v12, v4, Lorg/joni/ast/EncloseNode;->regNum:I

    if-ge v11, v12, :cond_b

    .line 1708
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v12, v4, Lorg/joni/ast/EncloseNode;->regNum:I

    iput v12, v11, Lorg/joni/ScanEnvironment;->currMaxRegNum:I

    .line 1710
    :cond_b
    iget-object v11, v4, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v11, p2}, Lorg/joni/Analyser;->setupCombExpCheck(Lorg/joni/ast/Node;I)I

    move-result v8

    .line 1711
    goto/16 :goto_0

    .end local v4    # "en":Lorg/joni/ast/EncloseNode;
    :pswitch_6
    move-object v3, p1

    .line 1720
    check-cast v3, Lorg/joni/ast/CallNode;

    .line 1721
    .local v3, "cn":Lorg/joni/ast/CallNode;
    invoke-virtual {v3}, Lorg/joni/ast/CallNode;->isRecursion()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1722
    iget-object v11, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/joni/ScanEnvironment;->hasRecursion:Z

    goto/16 :goto_0

    .line 1724
    :cond_c
    iget-object v11, v3, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v11, p2}, Lorg/joni/Analyser;->setupCombExpCheck(Lorg/joni/ast/Node;I)I

    move-result v8

    goto/16 :goto_0

    .line 1629
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1705
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected final setupSubExpCall(Lorg/joni/ast/Node;)V
    .locals 10
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1241
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1306
    .end local p1    # "node":Lorg/joni/ast/Node;
    :goto_0
    return-void

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    move-object v4, p1

    .line 1243
    check-cast v4, Lorg/joni/ast/ConsAltNode;

    .line 1245
    .local v4, "ln":Lorg/joni/ast/ConsAltNode;
    :cond_0
    iget-object v6, v4, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->setupSubExpCall(Lorg/joni/ast/Node;)V

    .line 1246
    iget-object v4, v4, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v4, :cond_0

    goto :goto_0

    .end local v4    # "ln":Lorg/joni/ast/ConsAltNode;
    :pswitch_1
    move-object v1, p1

    .line 1250
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 1252
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v6, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->setupSubExpCall(Lorg/joni/ast/Node;)V

    .line 1253
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1257
    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_2
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->setupSubExpCall(Lorg/joni/ast/Node;)V

    goto :goto_0

    .line 1261
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_3
    check-cast p1, Lorg/joni/ast/EncloseNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v6, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->setupSubExpCall(Lorg/joni/ast/Node;)V

    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_4
    move-object v2, p1

    .line 1265
    check-cast v2, Lorg/joni/ast/CallNode;

    .line 1267
    .local v2, "cn":Lorg/joni/ast/CallNode;
    iget v6, v2, Lorg/joni/ast/CallNode;->groupNum:I

    if-eqz v6, :cond_4

    .line 1268
    iget v3, v2, Lorg/joni/ast/CallNode;->groupNum:I

    .line 1271
    .local v3, "gNum":I
    iget-object v6, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v6, v6, Lorg/joni/ScanEnvironment;->numNamed:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v6}, Lorg/joni/Syntax;->captureOnlyNamedGroup()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v6, v6, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v6}, Lorg/joni/Option;->isCaptureGroup(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1272
    const-string v6, "numbered backref/call is not allowed. (use name)"

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    .line 1275
    :cond_2
    iget-object v6, p0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget v6, v6, Lorg/joni/ScanEnvironment;->numMem:I

    if-le v3, v6, :cond_3

    const-string v6, "undefined group <%n> reference"

    iget v7, v2, Lorg/joni/ast/CallNode;->nameP:I

    iget v8, v2, Lorg/joni/ast/CallNode;->nameEnd:I

    invoke-virtual {p0, v6, v7, v8}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;II)V

    .line 1276
    :cond_3
    invoke-direct {p0, v2}, Lorg/joni/Analyser;->setCallAttr(Lorg/joni/ast/CallNode;)V

    goto :goto_0

    .line 1279
    .end local v3    # "gNum":I
    :cond_4
    iget-object v6, p0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iget-object v7, v2, Lorg/joni/ast/CallNode;->name:[B

    iget v8, v2, Lorg/joni/ast/CallNode;->nameP:I

    iget v9, v2, Lorg/joni/ast/CallNode;->nameEnd:I

    invoke-virtual {v6, v7, v8, v9}, Lorg/joni/Regex;->nameToGroupNumbers([BII)Lorg/joni/NameEntry;

    move-result-object v5

    .line 1281
    .local v5, "ne":Lorg/joni/NameEntry;
    if-nez v5, :cond_5

    .line 1282
    const-string v6, "undefined name <%n> reference"

    iget v7, v2, Lorg/joni/ast/CallNode;->nameP:I

    iget v8, v2, Lorg/joni/ast/CallNode;->nameEnd:I

    invoke-virtual {p0, v6, v7, v8}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;II)V

    goto :goto_0

    .line 1283
    :cond_5
    iget v6, v5, Lorg/joni/NameEntry;->backNum:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 1284
    const-string v6, "multiplex definition name <%n> call"

    iget v7, v2, Lorg/joni/ast/CallNode;->nameP:I

    iget v8, v2, Lorg/joni/ast/CallNode;->nameEnd:I

    invoke-virtual {p0, v6, v7, v8}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1286
    :cond_6
    iget v6, v5, Lorg/joni/NameEntry;->backRef1:I

    iput v6, v2, Lorg/joni/ast/CallNode;->groupNum:I

    .line 1287
    invoke-direct {p0, v2}, Lorg/joni/Analyser;->setCallAttr(Lorg/joni/ast/CallNode;)V

    goto/16 :goto_0

    .end local v2    # "cn":Lorg/joni/ast/CallNode;
    .end local v5    # "ne":Lorg/joni/NameEntry;
    :pswitch_5
    move-object v0, p1

    .line 1294
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1295
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v6, v0, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    .line 1300
    :sswitch_0
    iget-object v6, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->setupSubExpCall(Lorg/joni/ast/Node;)V

    goto/16 :goto_0

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1295
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;
    .locals 26
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "state"    # I

    .prologue
    .line 1753
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/joni/ast/Node;->getType()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 1924
    :cond_1
    :goto_0
    :pswitch_0
    return-object p1

    :pswitch_1
    move-object/from16 v13, p1

    .line 1755
    check-cast v13, Lorg/joni/ast/ConsAltNode;

    .line 1756
    .local v13, "lin":Lorg/joni/ast/ConsAltNode;
    const/16 v16, 0x0

    .line 1758
    .local v16, "prev":Lorg/joni/ast/Node;
    :cond_2
    iget-object v0, v13, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    .line 1759
    if-eqz v16, :cond_3

    .line 1760
    iget-object v0, v13, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/joni/Analyser;->nextSetup(Lorg/joni/ast/Node;Lorg/joni/ast/Node;)V

    .line 1762
    :cond_3
    iget-object v0, v13, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    move-object/from16 v16, v0

    .line 1763
    iget-object v13, v13, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v13, :cond_2

    goto :goto_0

    .end local v13    # "lin":Lorg/joni/ast/ConsAltNode;
    .end local v16    # "prev":Lorg/joni/ast/Node;
    :pswitch_2
    move-object/from16 v5, p1

    .line 1767
    check-cast v5, Lorg/joni/ast/ConsAltNode;

    .line 1769
    .local v5, "aln":Lorg/joni/ast/ConsAltNode;
    :cond_4
    iget-object v0, v5, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    or-int/lit8 v23, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    .line 1770
    iget-object v5, v5, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v5, :cond_4

    goto :goto_0

    .line 1777
    .end local v5    # "aln":Lorg/joni/ast/ConsAltNode;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/joni/Regex;->options:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/joni/Option;->isIgnoreCase(I)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v22, p1

    check-cast v22, Lorg/joni/ast/StringNode;

    invoke-virtual/range {v22 .. v22}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v22

    if-nez v22, :cond_1

    .line 1778
    invoke-direct/range {p0 .. p1}, Lorg/joni/Analyser;->expandCaseFoldString(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    move-object/from16 v7, p1

    .line 1790
    check-cast v7, Lorg/joni/ast/BackRefNode;

    .line 1791
    .local v7, "br":Lorg/joni/ast/BackRefNode;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget v0, v7, Lorg/joni/ast/BackRefNode;->backNum:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_1

    .line 1792
    iget-object v0, v7, Lorg/joni/ast/BackRefNode;->back:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/joni/ScanEnvironment;->numMem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->syntax:Lorg/joni/Syntax;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "invalid backref number/name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    .line 1791
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1795
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/joni/ScanEnvironment;->backrefedMem:I

    move/from16 v23, v0

    iget-object v0, v7, Lorg/joni/ast/BackRefNode;->back:[I

    move-object/from16 v24, v0

    aget v24, v24, v10

    invoke-static/range {v23 .. v24}, Lorg/joni/BitStatus;->bsOnAt(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/joni/ScanEnvironment;->backrefedMem:I

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/joni/ScanEnvironment;->btMemStart:I

    move/from16 v23, v0

    iget-object v0, v7, Lorg/joni/ast/BackRefNode;->back:[I

    move-object/from16 v24, v0

    aget v24, v24, v10

    invoke-static/range {v23 .. v24}, Lorg/joni/BitStatus;->bsOnAt(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/joni/ScanEnvironment;->btMemStart:I

    .line 1798
    invoke-virtual {v7}, Lorg/joni/ast/BackRefNode;->isNestLevel()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/joni/ScanEnvironment;->btMemEnd:I

    move/from16 v23, v0

    iget-object v0, v7, Lorg/joni/ast/BackRefNode;->back:[I

    move-object/from16 v24, v0

    aget v24, v24, v10

    invoke-static/range {v23 .. v24}, Lorg/joni/BitStatus;->bsOnAt(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/joni/ScanEnvironment;->btMemEnd:I

    .line 1802
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    iget-object v0, v7, Lorg/joni/ast/BackRefNode;->back:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    aget-object v22, v22, v23

    check-cast v22, Lorg/joni/ast/EncloseNode;

    invoke-virtual/range {v22 .. v22}, Lorg/joni/ast/EncloseNode;->setMemBackrefed()V

    goto/16 :goto_2

    .end local v7    # "br":Lorg/joni/ast/BackRefNode;
    .end local v10    # "i":I
    :pswitch_5
    move-object/from16 v17, p1

    .line 1808
    check-cast v17, Lorg/joni/ast/QuantifierNode;

    .line 1809
    .local v17, "qn":Lorg/joni/ast/QuantifierNode;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v20, v0

    .line 1811
    .local v20, "target":Lorg/joni/ast/Node;
    and-int/lit8 v22, p2, 0x4

    if-eqz v22, :cond_8

    invoke-virtual/range {v17 .. v17}, Lorg/joni/ast/QuantifierNode;->setInRepeat()V

    .line 1813
    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 1814
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/joni/Analyser;->getMinMatchLength(Lorg/joni/ast/Node;)I

    move-result v8

    .line 1815
    .local v8, "d":I
    if-nez v8, :cond_a

    .line 1816
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 1818
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/joni/Analyser;->quantifiersMemoryInfo(Lorg/joni/ast/Node;)I

    move-result v11

    .line 1819
    .local v11, "info":I
    if-lez v11, :cond_a

    move-object/from16 v0, v17

    iput v11, v0, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 1825
    .end local v8    # "d":I
    .end local v11    # "info":I
    :cond_a
    or-int/lit8 p2, p2, 0x4

    .line 1826
    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    or-int/lit8 p2, p2, 0x8

    .line 1828
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    move-result-object v20

    .line 1831
    invoke-virtual/range {v20 .. v20}, Lorg/joni/ast/Node;->getType()I

    move-result v22

    if-nez v22, :cond_c

    .line 1832
    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v22

    if-nez v22, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    const/16 v23, 0x64

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_c

    move-object/from16 v18, v20

    .line 1834
    check-cast v18, Lorg/joni/ast/StringNode;

    .line 1835
    .local v18, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual/range {v18 .. v18}, Lorg/joni/ast/StringNode;->length()I

    move-result v12

    .line 1837
    .local v12, "len":I
    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    mul-int v22, v22, v12

    const/16 v23, 0x64

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_c

    .line 1838
    move-object/from16 v0, v18

    iget v0, v0, Lorg/joni/ast/StringNode;->flag:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/ast/QuantifierNode;->convertToString(I)Lorg/joni/ast/StringNode;

    move-result-object v19

    .line 1839
    .local v19, "str":Lorg/joni/ast/StringNode;
    move-object/from16 v0, v17

    iget v14, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 1840
    .local v14, "n":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v14, :cond_1

    .line 1841
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/joni/ast/StringNode;->bytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/joni/ast/StringNode;->p:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/joni/ast/StringNode;->end:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/joni/ast/StringNode;->cat([BII)V

    .line 1840
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1849
    .end local v10    # "i":I
    .end local v12    # "len":I
    .end local v14    # "n":I
    .end local v18    # "sn":Lorg/joni/ast/StringNode;
    .end local v19    # "str":Lorg/joni/ast/StringNode;
    :cond_c
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, v17

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1850
    invoke-virtual/range {v20 .. v20}, Lorg/joni/ast/Node;->getType()I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    move-object/from16 v21, v20

    .line 1851
    check-cast v21, Lorg/joni/ast/QuantifierNode;

    .line 1852
    .local v21, "tqn":Lorg/joni/ast/QuantifierNode;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1853
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    .line 1854
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    goto/16 :goto_0

    .line 1857
    .end local v21    # "tqn":Lorg/joni/ast/QuantifierNode;
    :cond_d
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/joni/Analyser;->getHeadValueNode(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    goto/16 :goto_0

    .end local v17    # "qn":Lorg/joni/ast/QuantifierNode;
    .end local v20    # "target":Lorg/joni/ast/Node;
    :pswitch_6
    move-object/from16 v9, p1

    .line 1864
    check-cast v9, Lorg/joni/ast/EncloseNode;

    .line 1865
    .local v9, "en":Lorg/joni/ast/EncloseNode;
    iget v0, v9, Lorg/joni/ast/EncloseNode;->type:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_0

    .line 1874
    :pswitch_8
    and-int/lit8 v22, p2, 0xb

    if-eqz v22, :cond_e

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/joni/ScanEnvironment;->btMemStart:I

    move/from16 v23, v0

    iget v0, v9, Lorg/joni/ast/EncloseNode;->regNum:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/joni/BitStatus;->bsOnAt(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/joni/ScanEnvironment;->btMemStart:I

    .line 1879
    :cond_e
    iget-object v0, v9, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    goto/16 :goto_0

    .line 1867
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lorg/joni/Regex;->options:I

    .line 1868
    .local v15, "options":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    move-object/from16 v22, v0

    iget v0, v9, Lorg/joni/ast/EncloseNode;->option:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/joni/Regex;->options:I

    .line 1869
    iget-object v0, v9, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v15, v0, Lorg/joni/Regex;->options:I

    goto/16 :goto_0

    .line 1883
    .end local v15    # "options":I
    :pswitch_a
    iget-object v0, v9, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    .line 1884
    iget-object v0, v9, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/joni/ast/Node;->getType()I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1885
    iget-object v0, v9, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v21, v0

    check-cast v21, Lorg/joni/ast/QuantifierNode;

    .line 1886
    .restart local v21    # "tqn":Lorg/joni/ast/QuantifierNode;
    move-object/from16 v0, v21

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->upper:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, v21

    iget v0, v0, Lorg/joni/ast/QuantifierNode;->lower:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_1

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1888
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/joni/ast/Node;->isSimple()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual {v9}, Lorg/joni/ast/EncloseNode;->setStopBtSimpleRepeat()V

    goto/16 :goto_0

    .end local v9    # "en":Lorg/joni/ast/EncloseNode;
    .end local v21    # "tqn":Lorg/joni/ast/QuantifierNode;
    :pswitch_b
    move-object/from16 v6, p1

    .line 1897
    check-cast v6, Lorg/joni/ast/AnchorNode;

    .line 1898
    .local v6, "an":Lorg/joni/ast/AnchorNode;
    iget v0, v6, Lorg/joni/ast/AnchorNode;->type:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    goto/16 :goto_0

    .line 1900
    :sswitch_0
    iget-object v0, v6, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    goto/16 :goto_0

    .line 1904
    :sswitch_1
    iget-object v0, v6, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    or-int/lit8 v23, p2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    goto/16 :goto_0

    .line 1908
    :sswitch_2
    iget-object v0, v6, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    const/16 v23, 0x7ef

    const/16 v24, 0x1

    const/16 v25, 0x1027

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joni/Analyser;->checkTypeTree(Lorg/joni/ast/Node;III)Z

    move-result v22

    if-eqz v22, :cond_f

    const-string v22, "invalid pattern in look-behind"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/Analyser;->newSyntaxException(Ljava/lang/String;)V

    .line 1909
    :cond_f
    invoke-direct/range {p0 .. p1}, Lorg/joni/Analyser;->setupLookBehind(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    move-result-object p1

    .line 1910
    invoke-virtual/range {p1 .. p1}, Lorg/joni/ast/Node;->getType()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v22, p1

    .line 1911
    check-cast v22, Lorg/joni/ast/AnchorNode;

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    goto/16 :goto_0

    .line 1915
    :sswitch_3
    iget-object v0, v6, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    const/16 v23, 0x7ef

    const/16 v24, 0x1

    const/16 v25, 0x1027

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joni/Analyser;->checkTypeTree(Lorg/joni/ast/Node;III)Z

    move-result v22

    if-eqz v22, :cond_10

    const-string v22, "invalid pattern in look-behind"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/Analyser;->newSyntaxException(Ljava/lang/String;)V

    .line 1916
    :cond_10
    invoke-direct/range {p0 .. p1}, Lorg/joni/Analyser;->setupLookBehind(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    move-result-object p1

    .line 1917
    invoke-virtual/range {p1 .. p1}, Lorg/joni/ast/Node;->getType()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v22, p1

    .line 1918
    check-cast v22, Lorg/joni/ast/AnchorNode;

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    move-object/from16 v22, v0

    or-int/lit8 v23, p2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/joni/Analyser;->setupTree(Lorg/joni/ast/Node;I)Lorg/joni/ast/Node;

    goto/16 :goto_0

    .line 1753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 1865
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 1898
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final subexpInfRecursiveCheckTrav(Lorg/joni/ast/Node;)I
    .locals 6
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 1073
    const/4 v3, 0x0

    .line 1075
    .local v3, "r":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1115
    .end local p1    # "node":Lorg/joni/ast/Node;
    :cond_0
    :goto_0
    return v3

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    move-object v1, p1

    .line 1078
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 1080
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v4, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v4}, Lorg/joni/Analyser;->subexpInfRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v3

    .line 1081
    if-nez v3, :cond_0

    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1085
    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    :pswitch_1
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    iget-object v4, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v4}, Lorg/joni/Analyser;->subexpInfRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v3

    .line 1086
    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_2
    move-object v0, p1

    .line 1089
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1090
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v4, v0, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1095
    :sswitch_0
    iget-object v4, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v4}, Lorg/joni/Analyser;->subexpInfRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v3

    goto :goto_0

    .end local v0    # "an":Lorg/joni/ast/AnchorNode;
    :pswitch_3
    move-object v2, p1

    .line 1101
    check-cast v2, Lorg/joni/ast/EncloseNode;

    .line 1102
    .local v2, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1103
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->setMark1()V

    .line 1104
    iget-object v4, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/joni/Analyser;->subexpInfRecursiveCheck(Lorg/joni/ast/Node;Z)I

    move-result v3

    .line 1105
    if-lez v3, :cond_2

    const-string v4, "never ending recursion"

    invoke-virtual {p0, v4}, Lorg/joni/Analyser;->newValueException(Ljava/lang/String;)V

    .line 1106
    :cond_2
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->clearMark1()V

    .line 1108
    :cond_3
    iget-object v4, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v4}, Lorg/joni/Analyser;->subexpInfRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v3

    .line 1109
    goto :goto_0

    .line 1075
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1090
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final subexpRecursiveCheckTrav(Lorg/joni/ast/Node;)I
    .locals 8
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v7, 0x1

    .line 1174
    const/4 v4, 0x0

    .line 1176
    .local v4, "r":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1227
    :cond_0
    :goto_0
    return v4

    :pswitch_0
    move-object v1, p1

    .line 1179
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 1181
    .local v1, "can":Lorg/joni/ast/ConsAltNode;
    :cond_1
    iget-object v6, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->subexpRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v5

    .line 1182
    .local v5, "ret":I
    if-ne v5, v7, :cond_2

    .line 1183
    const/4 v4, 0x1

    .line 1186
    :cond_2
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_1

    goto :goto_0

    .end local v1    # "can":Lorg/joni/ast/ConsAltNode;
    .end local v5    # "ret":I
    :pswitch_1
    move-object v3, p1

    .line 1190
    check-cast v3, Lorg/joni/ast/QuantifierNode;

    .line 1191
    .local v3, "qn":Lorg/joni/ast/QuantifierNode;
    iget-object v6, v3, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->subexpRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v4

    .line 1192
    iget v6, v3, Lorg/joni/ast/QuantifierNode;->upper:I

    if-nez v6, :cond_0

    .line 1193
    if-ne v4, v7, :cond_0

    iput-boolean v7, v3, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    goto :goto_0

    .end local v3    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_2
    move-object v0, p1

    .line 1198
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 1199
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    iget v6, v0, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 1204
    :sswitch_0
    iget-object v6, v0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->subexpRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v4

    goto :goto_0

    .end local v0    # "an":Lorg/joni/ast/AnchorNode;
    :pswitch_3
    move-object v2, p1

    .line 1210
    check-cast v2, Lorg/joni/ast/EncloseNode;

    .line 1211
    .local v2, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1212
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isCalled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1213
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->setMark1()V

    .line 1214
    iget-object v6, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/Analyser;->subexpRecursiveCheck(Lorg/joni/ast/Node;)I

    move-result v4

    .line 1215
    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->setRecursion()V

    .line 1216
    :cond_3
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->clearMark1()V

    .line 1219
    :cond_4
    iget-object v6, v2, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/Analyser;->subexpRecursiveCheckTrav(Lorg/joni/ast/Node;)I

    move-result v4

    .line 1220
    invoke-virtual {v2}, Lorg/joni/ast/EncloseNode;->isCalled()Z

    move-result v6

    if-eqz v6, :cond_0

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1176
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1199
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
