.class public final Lorg/jcodings/specific/ISO8859_1Encoding;
.super Lorg/jcodings/ISOEncoding;
.source "ISO8859_1Encoding.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/specific/ISO8859_1Encoding;

.field static final ISO8859_1CaseFoldMap:[[I

.field static final ISO8859_1CtypeTable:[S

.field static final ISO8859_1ToLowerCaseTable:[B

.field static final ISO8859_1ToUpperCaseTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x100

    const/4 v3, 0x2

    .line 88
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1CtypeTable:[S

    .line 123
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1ToLowerCaseTable:[B

    .line 158
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1ToUpperCaseTable:[B

    .line 193
    const/16 v0, 0x1e

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1CaseFoldMap:[[I

    .line 227
    new-instance v0, Lorg/jcodings/specific/ISO8859_1Encoding;

    invoke-direct {v0}, Lorg/jcodings/specific/ISO8859_1Encoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/ISO8859_1Encoding;->INSTANCE:Lorg/jcodings/specific/ISO8859_1Encoding;

    return-void

    .line 88
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
        0x420cs
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
        0x1a0s
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

    .line 123
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
        -0x80t
        -0x7ft
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x75t
        -0x74t
        -0x73t
        -0x72t
        -0x71t
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
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x55t
        -0x54t
        -0x53t
        -0x52t
        -0x51t
        -0x50t
        -0x4ft
        -0x4et
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
        -0x43t
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
        -0x29t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x21t
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

    .line 158
    :array_2
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
        0x60t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x7bt
        0x7ct
        0x7dt
        0x7et
        0x7ft
        -0x80t
        -0x7ft
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x75t
        -0x74t
        -0x73t
        -0x72t
        -0x71t
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
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x55t
        -0x54t
        -0x53t
        -0x52t
        -0x51t
        -0x50t
        -0x4ft
        -0x4et
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
        -0x43t
        -0x42t
        -0x41t
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x35t
        -0x34t
        -0x33t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x24t
        -0x23t
        -0x22t
        -0x21t
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x35t
        -0x34t
        -0x33t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x9t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x24t
        -0x23t
        -0x22t
        -0x1t
    .end array-data

    .line 193
    :array_3
    .array-data 4
        0xc0
        0xe0
    .end array-data

    :array_4
    .array-data 4
        0xc1
        0xe1
    .end array-data

    :array_5
    .array-data 4
        0xc2
        0xe2
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
    .end array-data

    :array_7
    .array-data 4
        0xc4
        0xe4
    .end array-data

    :array_8
    .array-data 4
        0xc5
        0xe5
    .end array-data

    :array_9
    .array-data 4
        0xc6
        0xe6
    .end array-data

    :array_a
    .array-data 4
        0xc7
        0xe7
    .end array-data

    :array_b
    .array-data 4
        0xc8
        0xe8
    .end array-data

    :array_c
    .array-data 4
        0xc9
        0xe9
    .end array-data

    :array_d
    .array-data 4
        0xca
        0xea
    .end array-data

    :array_e
    .array-data 4
        0xcb
        0xeb
    .end array-data

    :array_f
    .array-data 4
        0xcc
        0xec
    .end array-data

    :array_10
    .array-data 4
        0xcd
        0xed
    .end array-data

    :array_11
    .array-data 4
        0xce
        0xee
    .end array-data

    :array_12
    .array-data 4
        0xcf
        0xef
    .end array-data

    :array_13
    .array-data 4
        0xd0
        0xf0
    .end array-data

    :array_14
    .array-data 4
        0xd1
        0xf1
    .end array-data

    :array_15
    .array-data 4
        0xd2
        0xf2
    .end array-data

    :array_16
    .array-data 4
        0xd3
        0xf3
    .end array-data

    :array_17
    .array-data 4
        0xd4
        0xf4
    .end array-data

    :array_18
    .array-data 4
        0xd5
        0xf5
    .end array-data

    :array_19
    .array-data 4
        0xd6
        0xf6
    .end array-data

    :array_1a
    .array-data 4
        0xd8
        0xf8
    .end array-data

    :array_1b
    .array-data 4
        0xd9
        0xf9
    .end array-data

    :array_1c
    .array-data 4
        0xda
        0xfa
    .end array-data

    :array_1d
    .array-data 4
        0xdb
        0xfb
    .end array-data

    :array_1e
    .array-data 4
        0xdc
        0xfc
    .end array-data

    :array_1f
    .array-data 4
        0xdd
        0xfd
    .end array-data

    :array_20
    .array-data 4
        0xde
        0xfe
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "ISO-8859-1"

    sget-object v1, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1CtypeTable:[S

    sget-object v2, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1ToLowerCaseTable:[B

    sget-object v3, Lorg/jcodings/specific/ISO8859_1Encoding;->ISO8859_1CaseFoldMap:[[I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jcodings/ISOEncoding;-><init>(Ljava/lang/String;[S[B[[I)V

    .line 30
    return-void
.end method


# virtual methods
.method public applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 7
    .param p1, "flag"    # I
    .param p2, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jcodings/specific/ISO8859_1Encoding;->CaseFoldMap:[[I

    array-length v1, v0

    iget-object v2, p0, Lorg/jcodings/specific/ISO8859_1Encoding;->CaseFoldMap:[[I

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/jcodings/specific/ISO8859_1Encoding;->applyAllCaseFoldWithMap(I[[IZILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)I

    .line 35
    return-void
.end method

.method public caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 14
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 41
    aget-byte v6, p2, p3

    and-int/lit16 v1, v6, 0xff

    .line 43
    .local v1, "b":I
    const/16 v6, 0x41

    if-gt v6, v1, :cond_2

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_2

    .line 44
    new-instance v2, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    add-int/lit8 v10, v1, 0x20

    aput v10, v8, v9

    invoke-direct {v2, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 46
    .local v2, "item0":Lorg/jcodings/CaseFoldCodeItem;
    const/16 v6, 0x53

    if-ne v1, v6, :cond_1

    add-int/lit8 v6, p3, 0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_1

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    const/16 v7, 0x53

    if-eq v6, v7, :cond_0

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_1

    .line 48
    :cond_0
    new-instance v3, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xdf

    aput v10, v8, v9

    invoke-direct {v3, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 50
    .local v3, "item1":Lorg/jcodings/CaseFoldCodeItem;
    const/4 v6, 0x2

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 85
    .end local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    .end local v3    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    :goto_0
    return-object v6

    .line 52
    .restart local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    goto :goto_0

    .line 54
    .end local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    :cond_2
    const/16 v6, 0x61

    if-gt v6, v1, :cond_5

    const/16 v6, 0x7a

    if-gt v1, v6, :cond_5

    .line 55
    new-instance v2, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    add-int/lit8 v10, v1, -0x20

    aput v10, v8, v9

    invoke-direct {v2, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 57
    .restart local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    const/16 v6, 0x73

    if-ne v1, v6, :cond_4

    add-int/lit8 v6, p3, 0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_4

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    const/16 v7, 0x73

    if-eq v6, v7, :cond_3

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    const/16 v7, 0x53

    if-ne v6, v7, :cond_4

    .line 59
    :cond_3
    new-instance v3, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xdf

    aput v10, v8, v9

    invoke-direct {v3, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 60
    .restart local v3    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    const/4 v6, 0x2

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    goto :goto_0

    .line 62
    .end local v3    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    :cond_4
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    goto :goto_0

    .line 65
    .end local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    :cond_5
    const/16 v6, 0xc0

    if-gt v6, v1, :cond_6

    const/16 v6, 0xcf

    if-gt v1, v6, :cond_6

    .line 66
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    new-instance v8, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, v1, 0x20

    aput v13, v11, v12

    invoke-direct {v8, v9, v10, v11}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 67
    :cond_6
    const/16 v6, 0xd0

    if-gt v6, v1, :cond_8

    const/16 v6, 0xdf

    if-gt v1, v6, :cond_8

    .line 68
    const/16 v6, 0xdf

    if-ne v1, v6, :cond_7

    .line 69
    new-instance v2, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v2, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 70
    .restart local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    new-instance v3, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-direct {v3, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 71
    .restart local v3    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    new-instance v4, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    invoke-direct {v4, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 72
    .local v4, "item2":Lorg/jcodings/CaseFoldCodeItem;
    new-instance v5, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_3

    invoke-direct {v5, v6, v7, v8}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    .line 74
    .local v5, "item3":Lorg/jcodings/CaseFoldCodeItem;
    const/4 v6, 0x4

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    goto/16 :goto_0

    .line 75
    .end local v2    # "item0":Lorg/jcodings/CaseFoldCodeItem;
    .end local v3    # "item1":Lorg/jcodings/CaseFoldCodeItem;
    .end local v4    # "item2":Lorg/jcodings/CaseFoldCodeItem;
    .end local v5    # "item3":Lorg/jcodings/CaseFoldCodeItem;
    :cond_7
    const/16 v6, 0xd7

    if-eq v1, v6, :cond_a

    .line 76
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    new-instance v8, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, v1, 0x20

    aput v13, v11, v12

    invoke-direct {v8, v9, v10, v11}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v8, v6, v7

    goto/16 :goto_0

    .line 78
    :cond_8
    const/16 v6, 0xe0

    if-gt v6, v1, :cond_9

    const/16 v6, 0xef

    if-gt v1, v6, :cond_9

    .line 79
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    new-instance v8, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, v1, -0x20

    aput v13, v11, v12

    invoke-direct {v8, v9, v10, v11}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v8, v6, v7

    goto/16 :goto_0

    .line 80
    :cond_9
    const/16 v6, 0xf0

    if-gt v6, v1, :cond_a

    const/16 v6, 0xfe

    if-gt v1, v6, :cond_a

    .line 81
    const/16 v6, 0xf7

    if-eq v1, v6, :cond_a

    .line 82
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/jcodings/CaseFoldCodeItem;

    const/4 v7, 0x0

    new-instance v8, Lorg/jcodings/CaseFoldCodeItem;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, v1, -0x20

    aput v13, v11, v12

    invoke-direct {v8, v9, v10, v11}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v8, v6, v7

    goto/16 :goto_0

    .line 85
    :cond_a
    sget-object v6, Lorg/jcodings/specific/ISO8859_1Encoding;->EMPTY_FOLD_CODES:[Lorg/jcodings/CaseFoldCodeItem;

    goto/16 :goto_0

    .line 69
    :array_0
    .array-data 4
        0x73
        0x73
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x53
        0x53
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x73
        0x53
    .end array-data

    .line 72
    :array_3
    .array-data 4
        0x53
        0x73
    .end array-data
.end method
