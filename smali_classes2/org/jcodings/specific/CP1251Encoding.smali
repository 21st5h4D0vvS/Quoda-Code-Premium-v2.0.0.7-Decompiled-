.class public final Lorg/jcodings/specific/CP1251Encoding;
.super Lorg/jcodings/CaseFoldMapEncoding;
.source "CP1251Encoding.java"


# static fields
.field static final CP1251_CaseFoldMap:[[I

.field static final CP1251_CtypeTable:[S

.field static final CP1251_ToLowerCaseTable:[B

.field public static final INSTANCE:Lorg/jcodings/specific/CP1251Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x100

    const/4 v3, 0x2

    .line 46
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/specific/CP1251Encoding;->CP1251_CtypeTable:[S

    .line 81
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jcodings/specific/CP1251Encoding;->CP1251_ToLowerCaseTable:[B

    .line 116
    const/16 v0, 0x21

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/specific/CP1251Encoding;->CP1251_CaseFoldMap:[[I

    .line 154
    new-instance v0, Lorg/jcodings/specific/CP1251Encoding;

    invoke-direct {v0}, Lorg/jcodings/specific/CP1251Encoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/CP1251Encoding;->INSTANCE:Lorg/jcodings/specific/CP1251Encoding;

    return-void

    .line 46
    nop

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
        0x4209s
        0x4208s
        0x4208s
        0x4208s
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
        0x34a2s
        0x34a2s
        0x1a0s
        0x30e2s
        0x1a0s
        0x1a0s
        0x1a0s
        0x1a0s
        0x0s
        0x1a0s
        0x34a2s
        0x1a0s
        0x34a2s
        0x34a2s
        0x34a2s
        0x34a2s
        0x30e2s
        0x1a0s
        0x1a0s
        0x1a0s
        0x1a0s
        0x1a0s
        0x1a0s
        0x1a0s
        0x8s
        0x0s
        0x30e2s
        0x1a0s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x280s
        0x34a2s
        0x30e2s
        0x34a2s
        0x1a0s
        0x34a2s
        0x1a0s
        0x1a0s
        0x34a2s
        0x1a0s
        0x34a2s
        0x1a0s
        0x1a0s
        0x1a0s
        0x1a0s
        0x34a2s
        0x1a0s
        0x1a0s
        0x34a2s
        0x30e2s
        0x30e2s
        0x31e2s
        0x1a0s
        0x1a0s
        0x30e2s
        0x0s
        0x30e2s
        0x1a0s
        0x30e2s
        0x34a2s
        0x30e2s
        0x30e2s
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
        0x34a2s
        0x34a2s
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
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
        0x30e2s
    .end array-data

    .line 81
    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0x40t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
        0x60t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x7bt
        0x7ct
        0x7dt
        0x7et
        0x7ft
        -0x70t
        -0x7dt
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x66t
        -0x75t
        -0x64t
        -0x63t
        -0x62t
        -0x61t
        -0x70t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x65t
        -0x64t
        -0x63t
        -0x62t
        -0x61t
        -0x60t
        -0x5et
        -0x5et
        -0x44t
        -0x5ct
        -0x4ct
        -0x5at
        -0x59t
        -0x48t
        -0x57t
        -0x46t
        -0x55t
        -0x54t
        -0x53t
        -0x52t
        -0x41t
        -0x50t
        -0x4ft
        -0x4dt
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x46t
        -0x45t
        -0x44t
        -0x42t
        -0x42t
        -0x41t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x1t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x1t
    .end array-data

    .line 116
    :array_2
    .array-data 4
        0xb8
        0xa8
    .end array-data

    :array_3
    .array-data 4
        0xe0
        0xc0
    .end array-data

    :array_4
    .array-data 4
        0xe1
        0xc1
    .end array-data

    :array_5
    .array-data 4
        0xe2
        0xc2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc3
    .end array-data

    :array_7
    .array-data 4
        0xe4
        0xc4
    .end array-data

    :array_8
    .array-data 4
        0xe5
        0xc5
    .end array-data

    :array_9
    .array-data 4
        0xe6
        0xc6
    .end array-data

    :array_a
    .array-data 4
        0xe7
        0xc7
    .end array-data

    :array_b
    .array-data 4
        0xe8
        0xc8
    .end array-data

    :array_c
    .array-data 4
        0xe9
        0xc9
    .end array-data

    :array_d
    .array-data 4
        0xea
        0xca
    .end array-data

    :array_e
    .array-data 4
        0xeb
        0xcb
    .end array-data

    :array_f
    .array-data 4
        0xec
        0xcc
    .end array-data

    :array_10
    .array-data 4
        0xed
        0xcd
    .end array-data

    :array_11
    .array-data 4
        0xee
        0xce
    .end array-data

    :array_12
    .array-data 4
        0xef
        0xcf
    .end array-data

    :array_13
    .array-data 4
        0xf0
        0xd0
    .end array-data

    :array_14
    .array-data 4
        0xf1
        0xd1
    .end array-data

    :array_15
    .array-data 4
        0xf2
        0xd2
    .end array-data

    :array_16
    .array-data 4
        0xf3
        0xd3
    .end array-data

    :array_17
    .array-data 4
        0xf4
        0xd4
    .end array-data

    :array_18
    .array-data 4
        0xf5
        0xd5
    .end array-data

    :array_19
    .array-data 4
        0xf6
        0xd6
    .end array-data

    :array_1a
    .array-data 4
        0xf7
        0xd7
    .end array-data

    :array_1b
    .array-data 4
        0xf8
        0xd8
    .end array-data

    :array_1c
    .array-data 4
        0xf9
        0xd9
    .end array-data

    :array_1d
    .array-data 4
        0xfa
        0xda
    .end array-data

    :array_1e
    .array-data 4
        0xfb
        0xdb
    .end array-data

    :array_1f
    .array-data 4
        0xfc
        0xdc
    .end array-data

    :array_20
    .array-data 4
        0xfd
        0xdd
    .end array-data

    :array_21
    .array-data 4
        0xfe
        0xde
    .end array-data

    :array_22
    .array-data 4
        0xff
        0xdf
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    .line 28
    const-string v1, "Windows-1251"

    sget-object v2, Lorg/jcodings/specific/CP1251Encoding;->CP1251_CtypeTable:[S

    sget-object v3, Lorg/jcodings/specific/CP1251Encoding;->CP1251_ToLowerCaseTable:[B

    sget-object v4, Lorg/jcodings/specific/CP1251Encoding;->CP1251_CaseFoldMap:[[I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/CaseFoldMapEncoding;-><init>(Ljava/lang/String;[S[B[[IZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 43
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jcodings/specific/CP1251Encoding;->isCodeCTypeInternal(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 4
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 33
    iget v1, p3, Lorg/jcodings/IntHolder;->value:I

    .line 34
    .local v1, "p":I
    const/4 v0, 0x0

    .line 36
    .local v0, "lowerP":I
    iget-object v2, p0, Lorg/jcodings/specific/CP1251Encoding;->LowerCaseTable:[B

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, p5, v0

    .line 37
    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p3, Lorg/jcodings/IntHolder;->value:I

    .line 38
    const/4 v2, 0x1

    return v2
.end method
