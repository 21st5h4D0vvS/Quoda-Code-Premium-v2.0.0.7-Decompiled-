.class public abstract Lorg/jcodings/CaseFoldMapEncoding;
.super Lorg/jcodings/SingleByteEncoding;
.source "CaseFoldMapEncoding.java"


# static fields
.field static final SS:[I


# instance fields
.field protected final CaseFoldMap:[[I

.field protected final foldFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/CaseFoldMapEncoding;->SS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x73
        0x73
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;[S[B[[I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B
    .param p4, "CaseFoldMap"    # [[I

    .prologue
    .line 28
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/CaseFoldMapEncoding;-><init>(Ljava/lang/String;[S[B[[IZ)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[S[B[[IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B
    .param p4, "CaseFoldMap"    # [[I
    .param p5, "foldFlag"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/jcodings/SingleByteEncoding;-><init>(Ljava/lang/String;[S[B)V

    .line 33
    iput-object p4, p0, Lorg/jcodings/CaseFoldMapEncoding;->CaseFoldMap:[[I

    .line 34
    iput-boolean p5, p0, Lorg/jcodings/CaseFoldMapEncoding;->foldFlag:Z

    .line 35
    return-void
.end method

.method private ssApplyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/16 v0, 0xdf

    sget-object v1, Lorg/jcodings/CaseFoldMapEncoding;->SS:[I

    const/4 v2, 0x2

    invoke-interface {p2, v0, v1, v2, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 7
    .param p1, "flag"    # I
    .param p2, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jcodings/CaseFoldMapEncoding;->CaseFoldMap:[[I

    array-length v1, v0

    iget-object v2, p0, Lorg/jcodings/CaseFoldMapEncoding;->CaseFoldMap:[[I

    iget-boolean v3, p0, Lorg/jcodings/CaseFoldMapEncoding;->foldFlag:Z

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/jcodings/CaseFoldMapEncoding;->applyAllCaseFoldWithMap(I[[IZILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)I

    .line 115
    return-void
.end method

.method protected final applyAllCaseFoldWithMap(I[[IZILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)I
    .locals 5
    .param p1, "mapSize"    # I
    .param p2, "map"    # [[I
    .param p3, "essTsettFlag"    # Z
    .param p4, "flag"    # I
    .param p5, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p6, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, p4, p5, p6}, Lorg/jcodings/CaseFoldMapEncoding;->asciiApplyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V

    .line 43
    new-array v0, v4, [I

    aput v3, v0, v3

    .line 45
    .local v0, "code":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 46
    aget-object v2, p2, v1

    aget v2, v2, v4

    aput v2, v0, v3

    .line 48
    aget-object v2, p2, v1

    aget v2, v2, v3

    invoke-interface {p5, v2, v0, v4, p6}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 50
    aget-object v2, p2, v1

    aget v2, v2, v3

    aput v2, v0, v3

    .line 51
    aget-object v2, p2, v1

    aget v2, v2, v4

    invoke-interface {p5, v2, v0, v4, p6}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p4, p5, p6}, Lorg/jcodings/CaseFoldMapEncoding;->ssApplyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V

    .line 55
    :cond_1
    return v3
.end method

.method public caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 8
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jcodings/CaseFoldMapEncoding;->CaseFoldMap:[[I

    array-length v1, v0

    iget-object v2, p0, Lorg/jcodings/CaseFoldMapEncoding;->CaseFoldMap:[[I

    iget-boolean v3, p0, Lorg/jcodings/CaseFoldMapEncoding;->foldFlag:Z

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/jcodings/CaseFoldMapEncoding;->getCaseFoldCodesByStringWithMap(I[[IZI[BII)[Lorg/jcodings/CaseFoldCodeItem;

    move-result-object v0

    return-object v0
.end method

.method protected final getCaseFoldCodesByStringWithMap(I[[IZI[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 16
    .param p1, "mapSize"    # I
    .param p2, "map"    # [[I
    .param p3, "essTsettFlag"    # Z
    .param p4, "flag"    # I
    .param p5, "bytes"    # [B
    .param p6, "p"    # I
    .param p7, "end"    # I

    .prologue
    .line 70
    aget-byte v7, p5, p6

    and-int/lit16 v1, v7, 0xff

    .line 72
    .local v1, "b":I
    const/16 v7, 0x41

    if-gt v7, v1, :cond_2

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2

    .line 73
    new-instance v3, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    add-int/lit8 v11, v1, 0x20

    aput v11, v9, v10

    invoke-direct {v3, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 75
    .local v3, "item0":Lorg/jcodings/CaseFoldCodeItem;
    const/16 v7, 0x53

    if-ne v1, v7, :cond_1

    if-eqz p3, :cond_1

    add-int/lit8 v7, p6, 0x1

    move/from16 v0, p7

    if-le v0, v7, :cond_1

    add-int/lit8 v7, p6, 0x1

    aget-byte v7, p5, v7

    const/16 v8, 0x53

    if-eq v7, v8, :cond_0

    add-int/lit8 v7, p6, 0x1

    aget-byte v7, p5, v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_1

    .line 77
    :cond_0
    new-instance v4, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xdf

    aput v11, v9, v10

    invoke-direct {v4, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 78
    .local v4, "item1":Lorg/jcodings/CaseFoldCodeItem;
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    .line 109
    .end local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    .end local v4    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    :goto_0
    return-object v7

    .line 80
    .restart local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    :cond_1
    const/4 v7, 0x1

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    goto :goto_0

    .line 82
    .end local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    :cond_2
    const/16 v7, 0x61

    if-gt v7, v1, :cond_5

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_5

    .line 83
    new-instance v3, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x20

    aput v11, v9, v10

    invoke-direct {v3, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 85
    .restart local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    const/16 v7, 0x73

    if-ne v1, v7, :cond_4

    if-eqz p3, :cond_4

    add-int/lit8 v7, p6, 0x1

    move/from16 v0, p7

    if-le v0, v7, :cond_4

    add-int/lit8 v7, p6, 0x1

    aget-byte v7, p5, v7

    const/16 v8, 0x73

    if-eq v7, v8, :cond_3

    add-int/lit8 v7, p6, 0x1

    aget-byte v7, p5, v7

    const/16 v8, 0x53

    if-ne v7, v8, :cond_4

    .line 87
    :cond_3
    new-instance v4, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xdf

    aput v11, v9, v10

    invoke-direct {v4, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 89
    .restart local v4    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    goto :goto_0

    .line 91
    .end local v4    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    :cond_4
    const/4 v7, 0x1

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    goto :goto_0

    .line 93
    .end local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    :cond_5
    const/16 v7, 0xdf

    if-ne v1, v7, :cond_6

    if-eqz p3, :cond_6

    .line 94
    new-instance v3, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-direct {v3, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 95
    .restart local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    new-instance v4, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-direct {v4, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 96
    .restart local v4    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    new-instance v5, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    invoke-direct {v5, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 97
    .local v5, "item2":Lorg/jcodings/CaseFoldCodeItem;
    new-instance v6, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    invoke-direct {v6, v7, v8, v9}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 99
    .local v6, "item3":Lorg/jcodings/CaseFoldCodeItem;
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    goto/16 :goto_0

    .line 101
    .end local v3    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    .end local v4    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    .end local v5    # "item2":Lorg/jcodings/CaseFoldCodeItem;
    .end local v6    # "item3":Lorg/jcodings/CaseFoldCodeItem;
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v2, v0, :cond_9

    .line 102
    aget-object v7, p2, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    if-ne v1, v7, :cond_7

    .line 103
    const/4 v7, 0x1

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    new-instance v9, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    aget-object v14, p2, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    aput v14, v12, v13

    invoke-direct {v9, v10, v11, v12}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v9, v7, v8

    goto/16 :goto_0

    .line 104
    :cond_7
    aget-object v7, p2, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    if-ne v1, v7, :cond_8

    .line 105
    const/4 v7, 0x1

    new-array v7, v7, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v8, 0x0

    new-instance v9, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    aget-object v14, p2, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    aput v14, v12, v13

    invoke-direct {v9, v10, v11, v12}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v9, v7, v8

    goto/16 :goto_0

    .line 101
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_9
    sget-object v7, Lorg/jcodings/CaseFoldMapEncoding;->EMPTY_FOLD_CODES:[Lorg/jcodings/CaseFoldCodeItem;

    goto/16 :goto_0

    .line 94
    nop

    :array_0
    .array-data 4
        0x73
        0x73
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x53
        0x53
    .end array-data

    .line 96
    :array_2
    .array-data 4
        0x73
        0x53
    .end array-data

    .line 97
    :array_3
    .array-data 4
        0x53
        0x73
    .end array-data
.end method

.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 124
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jcodings/CaseFoldMapEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
