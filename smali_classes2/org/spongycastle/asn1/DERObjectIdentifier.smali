.class public Lorg/spongycastle/asn1/DERObjectIdentifier;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERObjectIdentifier.java"


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private body:[B

.field identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x100

    new-array v0, v0, [[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 175
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 185
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "oid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 189
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 195
    return-void
.end method

.method constructor <init>([B)V
    .locals 10
    .param p1, "bytes"    # [B

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    .line 97
    .local v6, "value":J
    const/4 v1, 0x0

    .line 98
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 100
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-eq v3, v5, :cond_8

    .line 102
    aget-byte v5, p1, v3

    and-int/lit16 v0, v5, 0xff

    .line 104
    .local v0, "b":I
    const-wide v8, 0xffffffffffff80L

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    .line 106
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 107
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_3

    .line 109
    if-eqz v2, :cond_0

    .line 111
    const-wide/16 v8, 0x28

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 113
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :goto_1
    const/4 v2, 0x0

    .line 128
    :cond_0
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 130
    const-wide/16 v6, 0x0

    .line 100
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const-wide/16 v8, 0x50

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 117
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    const-wide/16 v8, 0x28

    sub-long/2addr v6, v8

    goto :goto_1

    .line 122
    :cond_2
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    const-wide/16 v8, 0x50

    sub-long/2addr v6, v8

    goto :goto_1

    .line 134
    :cond_3
    const/4 v5, 0x7

    shl-long/2addr v6, v5

    goto :goto_2

    .line 139
    :cond_4
    if-nez v1, :cond_5

    .line 141
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 143
    :cond_5
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 144
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_7

    .line 146
    if-eqz v2, :cond_6

    .line 148
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    const-wide/16 v8, 0x50

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 150
    const/4 v2, 0x0

    .line 153
    :cond_6
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 155
    const/4 v1, 0x0

    .line 156
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 160
    :cond_7
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    .line 165
    .end local v0    # "b":I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B

    .line 167
    return-void
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v8, 0x12

    .line 242
    new-instance v2, Lorg/spongycastle/asn1/OIDTokenizer;

    iget-object v4, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/spongycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "tok":Lorg/spongycastle/asn1/OIDTokenizer;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v0, v4, 0x28

    .line 245
    .local v0, "first":I
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "secondToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_0

    .line 248
    int-to-long v4, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {p0, p1, v4, v5}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    .line 255
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    invoke-virtual {v2}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_1

    .line 260
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 252
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 264
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 267
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 7
    .param p0, "enc"    # [B

    .prologue
    .line 383
    array-length v4, p0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 385
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    .line 444
    :cond_0
    :goto_0
    return-object v3

    .line 388
    :cond_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 390
    .local v1, "idx1":I
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    and-int/lit8 v2, v4, 0x7f

    .line 394
    .local v2, "idx2":I
    sget-object v5, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    monitor-enter v5

    .line 396
    :try_start_0
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v4, v1

    .line 397
    .local v0, "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_2

    .line 399
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x80

    new-array v0, v6, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    aput-object v0, v4, v1

    .line 402
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    aget-object v3, v0, v2

    .line 403
    .local v3, "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v3, :cond_3

    .line 405
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    monitor-exit v5

    goto :goto_0

    .line 437
    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 408
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 410
    monitor-exit v5

    goto :goto_0

    .line 413
    :cond_4
    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v1, v4, 0xff

    .line 414
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v4, v1

    .line 415
    if-nez v0, :cond_5

    .line 417
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x80

    new-array v0, v6, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    aput-object v0, v4, v1

    .line 420
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_5
    aget-object v3, v0, v2

    .line 421
    if-nez v3, :cond_6

    .line 423
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    monitor-exit v5

    goto :goto_0

    .line 426
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_6
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 428
    monitor-exit v5

    goto :goto_0

    .line 431
    :cond_7
    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v2, v4, 0x7f

    .line 432
    aget-object v3, v0, v2

    .line 433
    if-nez v3, :cond_8

    .line 435
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    monitor-exit v5

    goto :goto_0

    .line 437
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 444
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto/16 :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    .line 29
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v2, p0

    .line 58
    .local v1, "enc":[B
    :goto_0
    return-object v2

    .line 32
    .end local v1    # "enc":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_2

    .line 34
    new-instance v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    check-cast p0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_3

    .line 39
    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, [B

    if-eqz v2, :cond_5

    move-object v2, p0

    .line 44
    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 45
    .restart local v1    # "enc":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 49
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct sequence from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    goto :goto_0

    .line 62
    .end local v1    # "enc":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 80
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    goto :goto_0
.end method

.method private static isValidBranchID(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "branchID"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    const/4 v3, 0x0

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, "periodAllowed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 334
    .local v2, "pos":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_1

    .line 336
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "ch":C
    const/16 v4, 0x30

    if-gt v4, v0, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 341
    const/4 v1, 0x1

    .line 342
    goto :goto_0

    .line 345
    :cond_0
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 347
    if-nez v1, :cond_2

    move v1, v3

    .line 359
    .end local v0    # "ch":C
    .end local v1    # "periodAllowed":Z
    :cond_1
    :goto_1
    return v1

    .line 352
    .restart local v0    # "ch":C
    .restart local v1    # "periodAllowed":Z
    :cond_2
    const/4 v1, 0x0

    .line 353
    goto :goto_0

    :cond_3
    move v1, v3

    .line 356
    goto :goto_1
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v1

    .line 370
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 371
    .local v0, "first":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x32

    if-gt v0, v2, :cond_0

    .line 376
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # J

    .prologue
    .line 206
    const/16 v2, 0x9

    new-array v1, v2, [B

    .line 207
    .local v1, "result":[B
    const/16 v0, 0x8

    .line 208
    .local v0, "pos":I
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 209
    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    .line 211
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 212
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0

    .line 214
    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 215
    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x0

    .line 221
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 222
    .local v0, "byteCount":I
    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    move-object v3, p2

    .line 229
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 230
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 232
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 233
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 230
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 235
    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 236
    array-length v4, v2

    invoke-virtual {p1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 315
    instance-of v0, p1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 320
    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return v0

    .restart local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getBody()[B

    move-result-object v0

    .line 302
    .local v0, "enc":[B
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 303
    array-length v1, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 304
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    .line 305
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getBody()[B

    move-result-object v1

    array-length v0, v1

    .line 293
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method protected declared-synchronized getBody()[B
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B

    if-nez v1, :cond_0

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B

    .line 280
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
