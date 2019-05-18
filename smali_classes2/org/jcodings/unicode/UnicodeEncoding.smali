.class public abstract Lorg/jcodings/unicode/UnicodeEncoding;
.super Lorg/jcodings/MultiByteEncoding;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;,
        Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;,
        Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;,
        Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;,
        Lorg/jcodings/unicode/UnicodeEncoding$CTypeName;,
        Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;
    }
.end annotation


# static fields
.field private static final PROPERTY_NAME_MAX_SIZE:I = 0x14

.field static final UNICODE_ISO_8859_1_CTypeTable:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding;->UNICODE_ISO_8859_1_CTypeTable:[S

    return-void

    :array_0
    .array-data 2
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x428cs
        0x4289s
        0x4288s
        0x4288s
        0x4288s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4008s
        0x4284s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x78b0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x7ca2s
        0x7ca2s
        0x7ca2s
        0x7ca2s
        0x7ca2s
        0x7ca2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x74a2s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x51a0s
        0x41a0s
        0x78e2s
        0x78e2s
        0x78e2s
        0x78e2s
        0x78e2s
        0x78e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x70e2s
        0x41a0s
        0x41a0s
        0x41a0s
        0x41a0s
        0x4008s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x288s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x284s
        0x1a0s
        0xa0s
        0xa0s
        0xa0s
        0xa0s
        0xa0s
        0xa0s
        0xa0s
        0xa0s
        0x30e2s
        0x1a0s
        0xa0s
        0xa8s
        0xa0s
        0xa0s
        0xa0s
        0xa0s
        0x10a0s
        0x10a0s
        0xa0s
        0x30e2s
        0xa0s
        0x1a0s
        0xa0s
        0x10a0s
        0x30e2s
        0x1a0s
        0x10a0s
        0x10a0s
        0x10a0s
        0x1a0s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0xa0s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0xa0s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;II[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "EncLen"    # [I

    .prologue
    .line 45
    const/4 v5, 0x0

    check-cast v5, [[I

    sget-object v6, Lorg/jcodings/unicode/UnicodeEncoding;->UNICODE_ISO_8859_1_CTypeTable:[S

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/jcodings/MultiByteEncoding;-><init>(Ljava/lang/String;II[I[[I[S)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II[I[[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "EncLen"    # [I
    .param p5, "Trans"    # [[I

    .prologue
    .line 50
    sget-object v6, Lorg/jcodings/unicode/UnicodeEncoding;->UNICODE_ISO_8859_1_CTypeTable:[S

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jcodings/MultiByteEncoding;-><init>(Ljava/lang/String;II[I[[I[S)V

    .line 51
    return-void
.end method


# virtual methods
.method public applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 11
    .param p1, "flag"    # I
    .param p2, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 148
    new-array v0, v9, [I

    aput v8, v0, v8

    .line 149
    .local v0, "code":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->access$100()[I

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 150
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->access$100()[I

    move-result-object v6

    aget v1, v6, v2

    .line 151
    .local v1, "from":I
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->access$200()[[I

    move-result-object v6

    aget-object v5, v6, v2

    .line 153
    .local v5, "to":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 154
    aput v1, v0, v8

    .line 155
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 157
    aget v6, v5, v3

    aput v6, v0, v8

    .line 158
    invoke-interface {p2, v1, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 160
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v3, :cond_0

    .line 161
    aget v6, v5, v4

    aput v6, v0, v8

    .line 162
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 164
    aget v6, v5, v3

    aput v6, v0, v8

    .line 165
    aget v6, v5, v4

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 153
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    .end local v4    # "k":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "from":I
    .end local v3    # "j":I
    .end local v5    # "to":[I
    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->access$300()[I

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 182
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->access$300()[I

    move-result-object v6

    aget v1, v6, v2

    .line 183
    .restart local v1    # "from":I
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->access$400()[[I

    move-result-object v6

    aget-object v5, v6, v2

    .line 185
    .restart local v5    # "to":[I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    array-length v6, v5

    if-ge v3, v6, :cond_4

    .line 186
    aput v1, v0, v8

    .line 187
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 189
    aget v6, v5, v3

    aput v6, v0, v8

    .line 190
    invoke-interface {p2, v1, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 192
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_5
    if-ge v4, v3, :cond_3

    .line 193
    aget v6, v5, v4

    aput v6, v0, v8

    .line 194
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 196
    aget v6, v5, v3

    aput v6, v0, v8

    .line 197
    aget v6, v5, v4

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 185
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 181
    .end local v4    # "k":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 203
    .end local v1    # "from":I
    .end local v3    # "j":I
    .end local v5    # "to":[I
    :cond_5
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, p1

    if-eqz v6, :cond_11

    .line 204
    const/4 v2, 0x0

    :goto_6
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->access$500()[[I

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_9

    .line 205
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->access$500()[[I

    move-result-object v6

    aget-object v1, v6, v2

    .line 206
    .local v1, "from":[I
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->access$500()[[I

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget-object v5, v6, v7

    .line 207
    .restart local v5    # "to":[I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7
    array-length v6, v5

    if-ge v3, v6, :cond_8

    .line 208
    aget v6, v5, v3

    invoke-interface {p2, v6, v1, v10, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 210
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_8
    array-length v6, v5

    if-ge v4, v6, :cond_7

    .line 211
    if-ne v4, v3, :cond_6

    .line 210
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 212
    :cond_6
    aget v6, v5, v4

    aput v6, v0, v8

    .line 213
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    goto :goto_9

    .line 207
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 204
    .end local v4    # "k":I
    :cond_8
    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    .line 219
    .end local v1    # "from":[I
    .end local v3    # "j":I
    .end local v5    # "to":[I
    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->access$600()[[I

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_d

    .line 220
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->access$600()[[I

    move-result-object v6

    aget-object v1, v6, v2

    .line 221
    .restart local v1    # "from":[I
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->access$600()[[I

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget-object v5, v6, v7

    .line 222
    .restart local v5    # "to":[I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_b
    array-length v6, v5

    if-ge v3, v6, :cond_c

    .line 223
    aget v6, v5, v3

    invoke-interface {p2, v6, v1, v10, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 225
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_c
    array-length v6, v5

    if-ge v4, v6, :cond_b

    .line 226
    if-ne v4, v3, :cond_a

    .line 225
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 227
    :cond_a
    aget v6, v5, v4

    aput v6, v0, v8

    .line 228
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    goto :goto_d

    .line 222
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 219
    .end local v4    # "k":I
    :cond_c
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 234
    .end local v1    # "from":[I
    .end local v3    # "j":I
    .end local v5    # "to":[I
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->access$700()[[I

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_11

    .line 235
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->access$700()[[I

    move-result-object v6

    aget-object v1, v6, v2

    .line 236
    .restart local v1    # "from":[I
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->access$700()[[I

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget-object v5, v6, v7

    .line 238
    .restart local v5    # "to":[I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_f
    array-length v6, v5

    if-ge v3, v6, :cond_10

    .line 239
    aget v6, v5, v3

    const/4 v7, 0x3

    invoke-interface {p2, v6, v1, v7, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 241
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_10
    array-length v6, v5

    if-ge v4, v6, :cond_f

    .line 242
    if-ne v4, v3, :cond_e

    .line 241
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 243
    :cond_e
    aget v6, v5, v4

    aput v6, v0, v8

    .line 244
    aget v6, v5, v3

    invoke-interface {p2, v6, v0, v9, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    goto :goto_11

    .line 238
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 234
    .end local v4    # "k":I
    :cond_10
    add-int/lit8 v2, v2, 0x2

    goto :goto_e

    .line 250
    .end local v1    # "from":[I
    .end local v3    # "j":I
    .end local v5    # "to":[I
    :cond_11
    return-void
.end method

.method public caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 29
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcToCode([BII)I

    move-result v5

    .line 256
    .local v5, "code":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;->length([BII)I

    move-result v15

    .line 272
    .local v15, "len":I
    const/16 v16, 0x0

    .line 273
    .local v16, "n":I
    const/4 v10, 0x0

    .line 274
    .local v10, "fn":I
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->FoldHash:Lorg/jcodings/util/IntHash;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [I

    .line 275
    .local v20, "to":[I
    const/4 v12, 0x0

    .line 276
    .local v12, "items":[Lorg/jcodings/CaseFoldCodeItem;
    if-eqz v20, :cond_10

    .line 277
    const/16 v23, 0xd

    move/from16 v0, v23

    new-array v12, v0, [Lorg/jcodings/CaseFoldCodeItem;

    .line 279
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 280
    move/from16 v18, v5

    .line 282
    .local v18, "origCode":I
    const/16 v23, 0x0

    new-instance v24, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget v28, v20, v28

    aput v28, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v24, v12, v23

    .line 283
    add-int/lit8 v16, v16, 0x1

    .line 285
    const/16 v23, 0x0

    aget v5, v20, v23

    .line 286
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->Unfold1Hash:Lorg/jcodings/util/IntHash;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "to":[I
    check-cast v20, [I

    .line 288
    .restart local v20    # "to":[I
    if-eqz v20, :cond_e

    .line 289
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_e

    .line 290
    aget v23, v20, v11

    move/from16 v0, v23

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 291
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v27, v20, v11

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 292
    add-int/lit8 v16, v16, 0x1

    .line 289
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 296
    .end local v11    # "i":I
    .end local v18    # "origCode":I
    :cond_1
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, v23, p1

    if-eqz v23, :cond_e

    .line 297
    const/16 v23, 0x3

    const/16 v24, 0x4

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 298
    .local v9, "cs":[[I
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 300
    .local v17, "ncs":[I
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_4

    .line 301
    aget-object v23, v9, v10

    const/16 v24, 0x0

    aget v25, v20, v10

    aput v25, v23, v24

    .line 302
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->Unfold1Hash:Lorg/jcodings/util/IntHash;

    aget-object v24, v9, v10

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    .line 303
    .local v22, "z3":[I
    if-eqz v22, :cond_3

    .line 304
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_2

    .line 305
    aget-object v23, v9, v10

    add-int/lit8 v24, v11, 0x1

    aget v25, v22, v11

    aput v25, v23, v24

    .line 304
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 307
    :cond_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    aput v23, v17, v10

    .line 300
    .end local v11    # "i":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 309
    :cond_3
    const/16 v23, 0x1

    aput v23, v17, v10

    goto :goto_3

    .line 313
    .end local v22    # "z3":[I
    :cond_4
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v10, v0, :cond_8

    .line 314
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    const/16 v23, 0x0

    aget v23, v17, v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_6

    .line 315
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    const/16 v23, 0x1

    aget v23, v17, v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_5

    .line 316
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v9, v27

    aget v27, v27, v11

    aput v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v9, v27

    aget v27, v27, v13

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 317
    add-int/lit8 v16, v16, 0x1

    .line 315
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 314
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 321
    .end local v13    # "j":I
    :cond_6
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->Unfold2Hash:Lorg/jcodings/util/IntArrayHash;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jcodings/util/IntArrayHash;->get([I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    .line 322
    .local v21, "z2":[I
    if-eqz v21, :cond_d

    .line 323
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_d

    .line 324
    aget v23, v21, v11

    move/from16 v0, v23

    if-ne v0, v5, :cond_7

    .line 323
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 325
    :cond_7
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v27, v21, v11

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 326
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 330
    .end local v11    # "i":I
    .end local v21    # "z2":[I
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    const/16 v23, 0x0

    aget v23, v17, v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_b

    .line 331
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_9
    const/16 v23, 0x1

    aget v23, v17, v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_a

    .line 332
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_a
    const/16 v23, 0x2

    aget v23, v17, v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_9

    .line 333
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x3

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v9, v27

    aget v27, v27, v11

    aput v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v9, v27

    aget v27, v27, v13

    aput v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-object v27, v9, v27

    aget v27, v27, v14

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 334
    add-int/lit8 v16, v16, 0x1

    .line 332
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 331
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 330
    .end local v14    # "k":I
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 338
    .end local v13    # "j":I
    :cond_b
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->Unfold3Hash:Lorg/jcodings/util/IntArrayHash;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jcodings/util/IntArrayHash;->get([I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    .line 339
    .restart local v21    # "z2":[I
    if-eqz v21, :cond_d

    .line 340
    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_d

    .line 341
    aget v23, v21, v11

    move/from16 v0, v23

    if-ne v0, v5, :cond_c

    .line 340
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 342
    :cond_c
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v27, v21, v11

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 343
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 348
    :cond_d
    const/16 p1, 0x0

    .line 361
    .end local v9    # "cs":[[I
    .end local v11    # "i":I
    .end local v17    # "ncs":[I
    .end local v21    # "z2":[I
    :cond_e
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, v23, p1

    if-eqz v23, :cond_14

    .line 362
    if-nez v12, :cond_f

    const/16 v23, 0xd

    move/from16 v0, v23

    new-array v12, v0, [Lorg/jcodings/CaseFoldCodeItem;

    .line 364
    :cond_f
    add-int p3, p3, v15

    .line 365
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_14

    .line 366
    move v6, v5

    .line 368
    .local v6, "codes0":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcToCode([BII)I

    move-result v5

    .line 369
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->FoldHash:Lorg/jcodings/util/IntHash;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "to":[I
    check-cast v20, [I

    .line 370
    .restart local v20    # "to":[I
    if-eqz v20, :cond_11

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 371
    const/16 v23, 0x0

    aget v7, v20, v23

    .line 376
    .local v7, "codes1":I
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;->length([BII)I

    move-result v4

    .line 377
    .local v4, "clen":I
    add-int/2addr v15, v4

    .line 378
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->Unfold2Hash:Lorg/jcodings/util/IntArrayHash;

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v6, v24, v25

    const/16 v25, 0x1

    aput v7, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/jcodings/util/IntArrayHash;->get([I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    .line 379
    .restart local v21    # "z2":[I
    if-eqz v21, :cond_12

    .line 380
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_e
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_12

    .line 381
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v27, v21, v11

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 382
    add-int/lit8 v16, v16, 0x1

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 351
    .end local v4    # "clen":I
    .end local v6    # "codes0":I
    .end local v7    # "codes1":I
    .end local v11    # "i":I
    .end local v21    # "z2":[I
    :cond_10
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->Unfold1Hash:Lorg/jcodings/util/IntHash;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "to":[I
    check-cast v20, [I

    .line 352
    .restart local v20    # "to":[I
    if-eqz v20, :cond_e

    .line 353
    const/16 v23, 0xd

    move/from16 v0, v23

    new-array v12, v0, [Lorg/jcodings/CaseFoldCodeItem;

    .line 354
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_f
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_e

    .line 355
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v27, v20, v11

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 356
    add-int/lit8 v16, v16, 0x1

    .line 354
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 373
    .end local v11    # "i":I
    .restart local v6    # "codes0":I
    :cond_11
    move v7, v5

    .restart local v7    # "codes1":I
    goto/16 :goto_d

    .line 386
    .restart local v4    # "clen":I
    .restart local v21    # "z2":[I
    :cond_12
    add-int p3, p3, v4

    .line 387
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_14

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcToCode([BII)I

    move-result v5

    .line 390
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->FoldHash:Lorg/jcodings/util/IntHash;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "to":[I
    check-cast v20, [I

    .line 391
    .restart local v20    # "to":[I
    if-eqz v20, :cond_13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 392
    const/16 v23, 0x0

    aget v8, v20, v23

    .line 396
    .local v8, "codes2":I
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;->length([BII)I

    move-result v4

    .line 397
    add-int/2addr v15, v4

    .line 398
    sget-object v23, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->Unfold3Hash:Lorg/jcodings/util/IntArrayHash;

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v6, v24, v25

    const/16 v25, 0x1

    aput v7, v24, v25

    const/16 v25, 0x2

    aput v8, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/jcodings/util/IntArrayHash;->get([I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "z2":[I
    check-cast v21, [I

    .line 399
    .restart local v21    # "z2":[I
    if-eqz v21, :cond_14

    .line 400
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_11
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_14

    .line 401
    new-instance v23, Lorg/jcodings/CaseFoldCodeItem;

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v27, v21, v11

    aput v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v23, v12, v16

    .line 402
    add-int/lit8 v16, v16, 0x1

    .line 400
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 394
    .end local v8    # "codes2":I
    .end local v11    # "i":I
    :cond_13
    move v8, v5

    .restart local v8    # "codes2":I
    goto :goto_10

    .line 409
    .end local v4    # "clen":I
    .end local v6    # "codes0":I
    .end local v7    # "codes1":I
    .end local v8    # "codes2":I
    .end local v21    # "z2":[I
    :cond_14
    if-eqz v12, :cond_15

    if-nez v16, :cond_16

    :cond_15
    sget-object v19, Lorg/jcodings/unicode/UnicodeEncoding;->EMPTY_FOLD_CODES:[Lorg/jcodings/CaseFoldCodeItem;

    .line 415
    :goto_12
    return-object v19

    .line 410
    :cond_16
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 411
    move/from16 v0, v16

    new-array v0, v0, [Lorg/jcodings/CaseFoldCodeItem;

    move-object/from16 v19, v0

    .line 412
    .local v19, "tmp":[Lorg/jcodings/CaseFoldCodeItem;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12

    .end local v19    # "tmp":[Lorg/jcodings/CaseFoldCodeItem;
    :cond_17
    move-object/from16 v19, v12

    .line 415
    goto :goto_12
.end method

.method protected final ctypeCodeRange(I)[I
    .locals 2
    .param p1, "ctype"    # I

    .prologue
    .line 76
    sget-object v0, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "undefined type (bug)"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->getRange()[I

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jcodings/unicode/UnicodeEncoding;->getName()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 62
    const/16 v0, 0xe

    if-gt p2, v0, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/jcodings/unicode/UnicodeEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    sget-object v0, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    array-length v0, v0

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "undefined type (bug)"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    sget-object v0, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->getRange()[I

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jcodings/CodeRange;->isInCodeRange([II)Z

    move-result v0

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 12
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "fold"    # [B

    .prologue
    .line 105
    iget v6, p3, Lorg/jcodings/IntHolder;->value:I

    .line 106
    .local v6, "p":I
    const/4 v2, 0x0

    .line 108
    .local v2, "foldP":I
    move/from16 v0, p4

    invoke-virtual {p0, p2, v6, v0}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcToCode([BII)I

    move-result v1

    .line 109
    .local v1, "code":I
    move/from16 v0, p4

    invoke-virtual {p0, p2, v6, v0}, Lorg/jcodings/unicode/UnicodeEncoding;->length([BII)I

    move-result v5

    .line 110
    .local v5, "len":I
    iget v10, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/2addr v10, v5

    iput v10, p3, Lorg/jcodings/IntHolder;->value:I

    .line 122
    sget-object v10, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->FoldHash:Lorg/jcodings/util/IntHash;

    invoke-virtual {v10, v1}, Lorg/jcodings/util/IntHash;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 123
    .local v9, "to":[I
    if-eqz v9, :cond_2

    .line 124
    array-length v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 125
    const/4 v10, 0x0

    aget v10, v9, v10

    move-object/from16 v0, p5

    invoke-virtual {p0, v10, v0, v2}, Lorg/jcodings/unicode/UnicodeEncoding;->codeToMbc(I[BI)I

    move-result v8

    .line 140
    :cond_0
    :goto_0
    return v8

    .line 127
    :cond_1
    const/4 v8, 0x0

    .line 128
    .local v8, "rlen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v9

    if-ge v4, v10, :cond_0

    .line 129
    aget v10, v9, v4

    move-object/from16 v0, p5

    invoke-virtual {p0, v10, v0, v2}, Lorg/jcodings/unicode/UnicodeEncoding;->codeToMbc(I[BI)I

    move-result v5

    .line 130
    add-int/2addr v2, v5

    .line 131
    add-int/2addr v8, v5

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    .end local v4    # "i":I
    .end local v8    # "rlen":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    move v3, v2

    .end local v2    # "foldP":I
    .local v3, "foldP":I
    move v7, v6

    .end local v6    # "p":I
    .local v7, "p":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 138
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "foldP":I
    .restart local v2    # "foldP":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v10, p2, v7

    aput-byte v10, p5, v3

    .line 137
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "foldP":I
    .restart local v3    # "foldP":I
    move v7, v6

    .end local v6    # "p":I
    .restart local v7    # "p":I
    goto :goto_2

    :cond_3
    move v2, v3

    .end local v3    # "foldP":I
    .restart local v2    # "foldP":I
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v8, v5

    .line 140
    goto :goto_0
.end method

.method public propertyNameToCType([BII)I
    .locals 8
    .param p1, "name"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v7, 0x14

    .line 84
    new-array v0, v7, [B

    .line 86
    .local v0, "buf":[B
    move v5, p2

    .line 87
    .local v5, "p_":I
    const/4 v3, 0x0

    .local v3, "len":I
    move v4, v3

    .line 89
    .end local v3    # "len":I
    .local v4, "len":I
    :goto_0
    if-ge v5, p3, :cond_2

    .line 90
    invoke-virtual {p0, p1, v5, p3}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcToCode([BII)I

    move-result v1

    .line 91
    .local v1, "code":I
    const/16 v6, 0x80

    if-lt v1, v6, :cond_0

    new-instance v6, Lorg/jcodings/exception/CharacterPropertyException;

    const-string v7, "invalid character property name <%n>"

    invoke-direct {v6, v7}, Lorg/jcodings/exception/CharacterPropertyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "len":I
    .restart local v3    # "len":I
    int-to-byte v6, v1

    aput-byte v6, v0, v4

    .line 93
    if-lt v3, v7, :cond_1

    new-instance v6, Lorg/jcodings/exception/CharacterPropertyException;

    const-string v7, "invalid character property name <%n>"

    invoke-direct {v6, v7, p1, p2, p3}, Lorg/jcodings/exception/CharacterPropertyException;-><init>(Ljava/lang/String;[BII)V

    throw v6

    .line 94
    :cond_1
    invoke-virtual {p0, p1, v5, p3}, Lorg/jcodings/unicode/UnicodeEncoding;->length([BII)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v3

    .line 95
    .end local v3    # "len":I
    .restart local v4    # "len":I
    goto :goto_0

    .line 97
    .end local v1    # "code":I
    :cond_2
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CTypeName;->access$000()Lorg/jcodings/util/CaseInsensitiveBytesHash;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([BII)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 98
    .local v2, "ctype":Ljava/lang/Integer;
    if-nez v2, :cond_3

    new-instance v6, Lorg/jcodings/exception/CharacterPropertyException;

    const-string v7, "invalid character property name <%n>"

    invoke-direct {v6, v7, p1, p2, p3}, Lorg/jcodings/exception/CharacterPropertyException;-><init>(Ljava/lang/String;[BII)V

    throw v6

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    return v6
.end method
