.class public abstract Lcom/jcraft/jsch/KeyPair;
.super Ljava/lang/Object;


# static fields
.field public static final DSA:I = 0x1

.field public static final ERROR:I = 0x0

.field public static final RSA:I = 0x2

.field public static final UNKNOWN:I = 0x3

.field static final VENDOR_FSECURE:I = 0x1

.field static final VENDOR_OPENSSH:I = 0x0

.field static final VENDOR_PUTTY:I = 0x2

.field private static final cr:[B

.field static header:[[B

.field private static final header1:[Ljava/lang/String;

.field private static final header2:[Ljava/lang/String;

.field private static final header3:[Ljava/lang/String;

.field private static space:[B


# instance fields
.field private cipher:Lcom/jcraft/jsch/Cipher;

.field private data:[B

.field private encrypted:Z

.field private hash:Lcom/jcraft/jsch/HASH;

.field private iv:[B

.field jsch:Lcom/jcraft/jsch/JSch;

.field private passphrase:[B

.field protected publicKeyComment:Ljava/lang/String;

.field private publickeyblob:[B

.field private random:Lcom/jcraft/jsch/Random;

.field vendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->cr:[B

    const/4 v5, 0x1

    new-array v0, v2, [[B

    const-string v1, "Proc-Type: 4,ENCRYPTED"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "DEK-Info: DES-EDE3-CBC,"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->header:[[B

    const/4 v5, 0x2

    const-string v0, " "

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->space:[B

    const/4 v5, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PuTTY-User-Key-File-2: "

    aput-object v1, v0, v3

    const-string v1, "Encryption: "

    aput-object v1, v0, v4

    const-string v1, "Comment: "

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "Public-Lines: "

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->header1:[Ljava/lang/String;

    const/4 v5, 0x5

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Private-Lines: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->header2:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Private-MAC: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->header3:[Ljava/lang/String;

    nop

    return-void

    const/4 v4, 0x2
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x6

    iput v2, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v3, 0x5

    const-string v0, "no comment"

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    const/4 v3, 0x5

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    const/4 v3, 0x2

    iput-boolean v2, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    const/4 v3, 0x6

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    const/4 v3, 0x4

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->iv:[B

    const/4 v3, 0x3

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    const/4 v3, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    const/4 v3, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private static a2b(B)B
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    const/4 v1, 0x0

    :goto_0
    return v0

    const/4 v0, 0x7

    :cond_0
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    const/4 v0, 0x4
.end method

.method private static b2a(B)B
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-byte v0, v0

    const/4 v1, 0x6

    :goto_0
    return v0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    goto :goto_0

    const/4 v1, 0x4
.end method

.method private decrypt([B[B[B)[B
    .locals 8

    const/4 v7, 0x0

    const/4 v7, 0x4

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->genKey([B[B)[B

    move-result-object v6

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v6, p3}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    const/4 v7, 0x4

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v7, 0x0

    array-length v0, p1

    new-array v4, v0, [B

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x3

    :goto_0
    return-object v4

    const/4 v4, 0x3

    const/4 v7, 0x7

    :catch_0
    move-exception v0

    const/4 v7, 0x1

    const/4 v4, 0x0

    goto :goto_0

    const/4 v4, 0x1
.end method

.method private encrypt([B[[B[B)[B
    .locals 12

    const/4 v3, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-object p1

    const/4 v6, 0x6

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genCipher()Lcom/jcraft/jsch/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    new-array v9, v0, [B

    aput-object v9, p2, v3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genRandom()Lcom/jcraft/jsch/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    array-length v2, v9

    invoke-interface {v0, v9, v3, v2}, Lcom/jcraft/jsch/Random;->fill([BII)V

    invoke-virtual {p0, p3, v9}, Lcom/jcraft/jsch/KeyPair;->genKey([B[B)[B

    move-result-object v10

    move-object v1, p1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v6

    array-length v0, v1

    div-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v6

    new-array v7, v0, [B

    array-length v0, v1

    invoke-static {v1, v3, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    rem-int/2addr v0, v6

    sub-int v11, v6, v0

    array-length v0, v7

    add-int/lit8 v8, v0, -0x1

    :goto_1
    array-length v0, v7

    sub-int/2addr v0, v11

    if-gt v0, v8, :cond_3

    int-to-byte v0, v11

    aput-byte v0, v7, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    const/4 v1, 0x1

    :cond_3
    move-object v1, v7

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v10, v9}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v10}, Lcom/jcraft/jsch/Util;->bzero([B)V

    move-object p1, v1

    goto :goto_0

    const/4 v2, 0x1

    :catch_0
    move-exception v0

    goto :goto_2

    const/4 v10, 0x6
.end method

.method private genCipher()Lcom/jcraft/jsch/Cipher;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v1, "3des-cbc"

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/Cipher;

    check-cast v1, Lcom/jcraft/jsch/Cipher;

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    return-object v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v0, 0x3
.end method

.method private genHash()Lcom/jcraft/jsch/HASH;
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v1, "md5"

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/HASH;

    check-cast v1, Lcom/jcraft/jsch/HASH;

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    return-object v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public static genKeyPair(Lcom/jcraft/jsch/JSch;I)Lcom/jcraft/jsch/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->genKeyPair(Lcom/jcraft/jsch/JSch;II)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public static genKeyPair(Lcom/jcraft/jsch/JSch;II)Lcom/jcraft/jsch/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/KeyPair;->generate(I)V

    const/4 v2, 0x0

    :cond_1
    return-object v0

    const/4 v2, 0x4

    const/4 v2, 0x6

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto :goto_0

    const/4 v0, 0x7
.end method

.method private genRandom()Lcom/jcraft/jsch/Random;
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    if-nez v2, :cond_0

    const/4 v5, 0x6

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v2, "random"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Random;

    check-cast v2, Lcom/jcraft/jsch/Random;

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    return-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "connect: random "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public static load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".pub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v3, 0x7

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    return-object v1

    const/4 v3, 0x6
.end method

.method public static load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x5

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v6, 0x1

    move-object v0, p2

    const/4 v6, 0x5

    if-nez p2, :cond_0

    const/4 v6, 0x5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".pub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    const/4 v6, 0x0

    :cond_1
    :try_start_2
    invoke-static {p0, v2, v3}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    const/4 v6, 0x3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    return-object v4

    const/4 v1, 0x4

    const/4 v6, 0x0

    :catch_0
    move-exception v1

    const/4 v6, 0x3

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    const/4 v6, 0x7

    :catch_1
    move-exception v1

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    const/4 v6, 0x2

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    const/4 v6, 0x7

    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    throw v4
.end method

.method public static load(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/16 v33, 0x8

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const-string v24, ""

    const/4 v10, 0x0

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0xb

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_3

    const/16 v33, 0x0

    aget-byte v33, p1, v33

    if-nez v33, :cond_3

    const/16 v33, 0x1

    aget-byte v33, p1, v33

    if-nez v33, :cond_3

    const/16 v33, 0x2

    aget-byte v33, p1, v33

    if-nez v33, :cond_3

    const/16 v33, 0x3

    aget-byte v33, p1, v33

    const/16 v34, 0x7

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    new-instance v8, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->rewind()V

    const/16 v21, 0x0

    const-string v33, "ssh-rsa"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/jcraft/jsch/KeyPairRSA;->fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v21

    :cond_0
    :goto_0
    return-object v21

    const/4 v1, 0x0

    :cond_1
    const-string v33, "ssh-dss"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/jcraft/jsch/KeyPairDSA;->fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v21

    goto :goto_0

    const/4 v11, 0x7

    :cond_2
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "privatekey: invalid key "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    new-instance v35, Ljava/lang/String;

    const/16 v36, 0x4

    const/16 v37, 0x7

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_3
    move-object/from16 v8, p1

    if-eqz v8, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/jcraft/jsch/KeyPair;->loadPPK(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v23

    if-eqz v23, :cond_4

    move-object/from16 v21, v23

    goto :goto_0

    const/4 v12, 0x1

    :cond_4
    if-eqz v8, :cond_6

    array-length v0, v8

    move/from16 v22, v0

    :goto_1
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v15, v0, :cond_5

    aget-byte v33, v8, v15

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    add-int/lit8 v33, v15, 0x4

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    add-int/lit8 v33, v15, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    add-int/lit8 v33, v15, 0x4

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    :cond_5
    :goto_3
    move/from16 v0, v22

    if-ge v15, v0, :cond_16

    aget-byte v33, v8, v15

    const/16 v34, 0x42

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    add-int/lit8 v33, v15, 0x3

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x45

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x47

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    add-int/lit8 v33, v15, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x49

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    add-int/lit8 v15, v15, 0x6

    add-int/lit8 v33, v15, 0x2

    move/from16 v0, v33

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "invalid privatekey: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    instance-of v0, v12, Lcom/jcraft/jsch/JSchException;

    move/from16 v33, v0

    if-eqz v33, :cond_46

    check-cast v12, Lcom/jcraft/jsch/JSchException;

    throw v12

    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    const/4 v10, 0x4

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    const/4 v3, 0x4

    :cond_8
    :try_start_1
    aget-byte v33, v8, v15

    const/16 v34, 0x44

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    const/16 v29, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x3

    goto/16 :goto_3

    const/4 v11, 0x4

    :cond_9
    aget-byte v33, v8, v15

    const/16 v34, 0x52

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    const/16 v29, 0x2

    goto :goto_4

    const/4 v9, 0x3

    :cond_a
    aget-byte v33, v8, v15

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x48

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    const/16 v29, 0x3

    const/16 v31, 0x1

    goto :goto_4

    const/4 v8, 0x4

    :cond_b
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "invalid privatekey: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_c
    aget-byte v33, v8, v15

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x7

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x45

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x4

    aget-byte v33, v8, v33

    const/16 v34, 0x32

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x5

    aget-byte v33, v8, v33

    const/16 v34, 0x35

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x6

    aget-byte v33, v8, v33

    const/16 v34, 0x36

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v15, 0x7

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v15, v15, 0x8

    const-string v33, "aes256-cbc"

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_d

    const-string v33, "aes256-cbc"

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, v33

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    move-object v10, v0

    invoke-interface {v10}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v19, v0

    goto/16 :goto_3

    const/4 v4, 0x3

    :cond_d
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "privatekey: aes256-cbc is not available "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_e
    aget-byte v33, v8, v15

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x7

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x45

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x4

    aget-byte v33, v8, v33

    const/16 v34, 0x31

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x5

    aget-byte v33, v8, v33

    const/16 v34, 0x39

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x6

    aget-byte v33, v8, v33

    const/16 v34, 0x32

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v33, v15, 0x7

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    add-int/lit8 v15, v15, 0x8

    const-string v33, "aes192-cbc"

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    const-string v33, "aes192-cbc"

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, v33

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    move-object v10, v0

    invoke-interface {v10}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v19, v0

    goto/16 :goto_3

    const/4 v9, 0x4

    :cond_f
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "privatekey: aes192-cbc is not available "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_10
    aget-byte v33, v8, v15

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x7

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x45

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x4

    aget-byte v33, v8, v33

    const/16 v34, 0x31

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x5

    aget-byte v33, v8, v33

    const/16 v34, 0x32

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x6

    aget-byte v33, v8, v33

    const/16 v34, 0x38

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v33, v15, 0x7

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    add-int/lit8 v15, v15, 0x8

    const-string v33, "aes128-cbc"

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    const-string v33, "aes128-cbc"

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, v33

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    move-object v10, v0

    invoke-interface {v10}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v19, v0

    goto/16 :goto_3

    const/4 v12, 0x6

    :cond_11
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "privatekey: aes128-cbc is not available "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_12
    aget-byte v33, v8, v15

    const/16 v34, 0x43

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    add-int/lit8 v33, v15, 0x3

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x42

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x43

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    add-int/lit8 v33, v15, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2c

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    add-int/lit8 v15, v15, 0x4

    const/16 v17, 0x0

    move/from16 v16, v15

    :goto_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    add-int/lit8 v15, v16, 0x1

    aget-byte v33, v8, v16

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/KeyPair;->a2b(B)B

    move-result v33

    shl-int/lit8 v33, v33, 0x4

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xf0

    move/from16 v33, v0

    add-int/lit8 v16, v15, 0x1

    aget-byte v34, v8, v15

    invoke-static/range {v34 .. v34}, Lcom/jcraft/jsch/KeyPair;->a2b(B)B

    move-result v34

    and-int/lit8 v34, v34, 0xf

    add-int v33, v33, v34

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v19, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    const/4 v6, 0x3

    :cond_13
    move/from16 v15, v16

    goto/16 :goto_3

    const/4 v2, 0x1

    :cond_14
    aget-byte v33, v8, v15

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    add-int/lit8 v33, v15, 0x1

    array-length v0, v8

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_15

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    const/4 v2, 0x3

    :cond_15
    aget-byte v33, v8, v15

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1c

    add-int/lit8 v33, v15, 0x1

    array-length v0, v8

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_1c

    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    add-int/lit8 v15, v15, 0x2

    :cond_16
    :goto_6
    if-eqz v8, :cond_29

    if-nez v29, :cond_1d

    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "invalid privatekey: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_17
    add-int/lit8 v33, v15, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    add-int/lit8 v33, v15, 0x2

    array-length v0, v8

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_18

    add-int/lit8 v33, v15, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    add-int/lit8 v15, v15, 0x3

    goto :goto_6

    const/4 v2, 0x3

    :cond_18
    const/16 v18, 0x0

    add-int/lit8 v20, v15, 0x1

    :goto_7
    array-length v0, v8

    move/from16 v33, v0

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    aget-byte v33, v8, v20

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1a

    :cond_19
    :goto_8
    if-nez v18, :cond_1c

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x0

    goto :goto_6

    const/4 v1, 0x5

    :cond_1a
    aget-byte v33, v8, v20

    const/16 v34, 0x3a

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    const/16 v18, 0x1

    goto :goto_8

    const/4 v1, 0x3

    :cond_1b
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    const/4 v11, 0x0

    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    const/4 v9, 0x5

    :cond_1d
    move/from16 v27, v15

    :goto_9
    move/from16 v0, v22

    if-ge v15, v0, :cond_1e

    aget-byte v33, v8, v15

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    :cond_1e
    sub-int v33, v22, v15

    if-eqz v33, :cond_1f

    sub-int v33, v15, v27

    if-nez v33, :cond_21

    :cond_1f
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "invalid privatekey: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    const/4 v12, 0x3

    :cond_21
    sub-int v33, v15, v27

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, v28

    const/16 v27, 0x0

    const/4 v15, 0x0

    array-length v6, v4

    :goto_a
    if-ge v15, v6, :cond_27

    aget-byte v33, v4, v15

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_26

    add-int/lit8 v33, v15, -0x1

    aget-byte v33, v4, v33

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_23

    const/16 v32, 0x1

    :goto_b
    add-int/lit8 v34, v15, 0x1

    if-eqz v32, :cond_24

    const/16 v33, 0x1

    :goto_c
    sub-int v35, v15, v33

    sub-int v33, v6, v15

    add-int/lit8 v36, v33, -0x1

    if-eqz v32, :cond_25

    const/16 v33, 0x1

    :goto_d
    sub-int v33, v36, v33

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v4, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v32, :cond_22

    add-int/lit8 v6, v6, -0x1

    :cond_22
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    const/4 v13, 0x5

    :cond_23
    const/16 v32, 0x0

    goto :goto_b

    const/4 v0, 0x1

    :cond_24
    const/16 v33, 0x0

    goto :goto_c

    const/4 v7, 0x3

    :cond_25
    const/16 v33, 0x0

    goto :goto_d

    const/4 v11, 0x4

    :cond_26
    aget-byte v33, v4, v15

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2a

    :cond_27
    sub-int v33, v15, v27

    if-lez v33, :cond_28

    sub-int v33, v15, v27

    move/from16 v0, v27

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v11

    :cond_28
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    :cond_29
    if-eqz v11, :cond_2c

    array-length v0, v11

    move/from16 v33, v0

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2c

    const/16 v33, 0x0

    aget-byte v33, v11, v33

    const/16 v34, 0x3f

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2c

    const/16 v33, 0x1

    aget-byte v33, v11, v33

    const/16 v34, 0x6f

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2c

    const/16 v33, 0x2

    aget-byte v33, v11, v33

    const/16 v34, -0x7

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2c

    const/16 v33, 0x3

    aget-byte v33, v11, v33

    const/16 v34, -0x15

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2c

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v11}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    const-string v33, "3des-cbc"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2b

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    array-length v0, v11

    move/from16 v33, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    move-result v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    new-array v14, v0, [B

    invoke-virtual {v4, v14}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    move-object v11, v14

    const/4 v13, 0x1

    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "unknown privatekey format: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_2a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    const/4 v4, 0x4

    :cond_2b
    const-string v33, "none"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2c

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    const/4 v13, 0x0

    array-length v0, v11

    move/from16 v33, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    move-result v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    new-array v14, v0, [B

    invoke-virtual {v4, v14}, Lcom/jcraft/jsch/Buffer;->getByte([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v14

    :cond_2c
    if-eqz p2, :cond_39

    move-object/from16 v8, p2

    :try_start_2
    array-length v0, v8

    move/from16 v22, v0

    array-length v0, v8

    move/from16 v33, v0

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_3d

    const/16 v33, 0x0

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3d

    const/16 v33, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3d

    const/16 v33, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3d

    const/16 v33, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3d

    const/16 v30, 0x1

    const/4 v15, 0x0

    :cond_2d
    add-int/lit8 v15, v15, 0x1

    array-length v0, v8

    move/from16 v33, v0

    move/from16 v0, v33

    if-le v0, v15, :cond_2e

    aget-byte v33, v8, v15

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2d

    :cond_2e
    array-length v0, v8

    move/from16 v33, v0

    move/from16 v0, v33

    if-gt v0, v15, :cond_2f

    const/16 v30, 0x0

    :cond_2f
    :goto_e
    if-eqz v30, :cond_31

    aget-byte v33, v8, v15

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_35

    const/16 v18, 0x0

    add-int/lit8 v20, v15, 0x1

    :goto_f
    array-length v0, v8

    move/from16 v33, v0

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_30

    aget-byte v33, v8, v20

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_33

    :cond_30
    :goto_10
    if-nez v18, :cond_35

    add-int/lit8 v15, v15, 0x1

    :cond_31
    array-length v0, v8

    move/from16 v33, v0

    move/from16 v0, v33

    if-gt v0, v15, :cond_32

    const/16 v30, 0x0

    :cond_32
    move/from16 v27, v15

    :goto_11
    if-eqz v30, :cond_37

    move/from16 v0, v22

    if-ge v15, v0, :cond_37

    aget-byte v33, v8, v15

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_36

    add-int/lit8 v33, v15, 0x1

    sub-int v34, v22, v15

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v8, v0, v8, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v22, v22, -0x1

    goto :goto_11

    const/4 v13, 0x7

    :cond_33
    aget-byte v33, v8, v20

    const/16 v34, 0x3a

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_34

    const/16 v18, 0x1

    goto :goto_10

    const/4 v5, 0x7

    :cond_34
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    const/4 v11, 0x2

    :cond_35
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    const/4 v10, 0x7

    :cond_36
    aget-byte v33, v8, v15

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    :cond_37
    if-eqz v30, :cond_39

    sub-int v33, v15, v27

    move/from16 v0, v27

    move/from16 v1, v33

    invoke-static {v8, v0, v1}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v26

    if-eqz p1, :cond_38

    const/16 v33, 0x3

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_39

    :cond_38
    const/16 v33, 0x8

    aget-byte v33, v26, v33
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v34, 0x64

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3c

    const/16 v29, 0x1

    :cond_39
    :goto_12
    const/16 v21, 0x0

    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_48

    new-instance v21, Lcom/jcraft/jsch/KeyPairDSA;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    :cond_3a
    :goto_13
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iput-boolean v13, v0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    move/from16 v0, v31

    move-object/from16 v1, v21

    iput v0, v1, Lcom/jcraft/jsch/KeyPair;->vendor:I

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v10, v0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v13, :cond_49

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->iv:[B

    move-object/from16 v0, v21

    iput-object v11, v0, Lcom/jcraft/jsch/KeyPair;->data:[B

    goto/16 :goto_0

    const/4 v6, 0x2

    :cond_3b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_11

    const/4 v13, 0x0

    :cond_3c
    const/16 v33, 0x8

    :try_start_3
    aget-byte v33, v26, v33

    const/16 v34, 0x72

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_39

    const/16 v29, 0x2

    goto :goto_12

    const/4 v6, 0x0

    :cond_3d
    const/16 v33, 0x0

    aget-byte v33, v8, v33

    const/16 v34, 0x73

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_39

    const/16 v33, 0x1

    aget-byte v33, v8, v33

    const/16 v34, 0x73

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_39

    const/16 v33, 0x2

    aget-byte v33, v8, v33

    const/16 v34, 0x68

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_39

    const/16 v33, 0x3

    aget-byte v33, v8, v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_39

    if-nez p1, :cond_3e

    array-length v0, v8

    move/from16 v33, v0

    const/16 v34, 0x7

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_3e

    const/16 v33, 0x4

    aget-byte v33, v8, v33

    const/16 v34, 0x64

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_42

    const/16 v29, 0x1

    :cond_3e
    :goto_14
    const/4 v15, 0x0

    :goto_15
    move/from16 v0, v22

    if-ge v15, v0, :cond_3f

    aget-byte v33, v8, v15

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_43

    :cond_3f
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4b

    move/from16 v27, v15

    :goto_16
    move/from16 v0, v22

    if-ge v15, v0, :cond_40

    aget-byte v33, v8, v15

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_44

    :cond_40
    sub-int v33, v15, v27

    move/from16 v0, v27

    move/from16 v1, v33

    invoke-static {v8, v0, v1}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v26

    move/from16 v16, v15

    :goto_17
    add-int/lit8 v15, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_39

    move/from16 v27, v15

    :goto_18
    move/from16 v0, v22

    if-ge v15, v0, :cond_41

    aget-byte v33, v8, v15

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_45

    :cond_41
    move/from16 v0, v22

    if-ge v15, v0, :cond_39

    new-instance v25, Ljava/lang/String;

    sub-int v33, v15, v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v8, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v24, v25

    goto/16 :goto_12

    const/4 v2, 0x2

    :cond_42
    const/16 v33, 0x4

    aget-byte v33, v8, v33
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v34, 0x72

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3e

    const/16 v29, 0x2

    goto :goto_14

    const/4 v0, 0x0

    :cond_43
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    const/4 v0, 0x2

    :cond_44
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    const/4 v12, 0x6

    :cond_45
    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    const/4 v14, 0x4

    :cond_46
    instance-of v0, v12, Ljava/lang/Throwable;

    move/from16 v33, v0

    if-eqz v33, :cond_47

    new-instance v33, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v33

    :cond_47
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_48
    const/16 v33, 0x2

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_3a

    new-instance v21, Lcom/jcraft/jsch/KeyPairRSA;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto/16 :goto_13

    const/4 v6, 0x6

    :cond_49
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v33

    if-eqz v33, :cond_4a

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    goto/16 :goto_0

    const/4 v0, 0x3

    :cond_4a
    new-instance v33, Lcom/jcraft/jsch/JSchException;

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "invalid privatekey: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v33

    :catch_1
    move-exception v33

    goto/16 :goto_12

    const/4 v14, 0x3

    :cond_4b
    move/from16 v16, v15

    goto/16 :goto_17

    const/4 v12, 0x5
.end method

.method static loadPPK(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    new-instance v10, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    new-instance v20, Ljava/util/Hashtable;

    invoke-direct/range {v20 .. v20}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lcom/jcraft/jsch/KeyPair;->parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PuTTY-User-Key-File-2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-nez v19, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    const/4 v6, 0x1

    :cond_1
    const-string v3, "Public-Lines"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v10, v14}, Lcom/jcraft/jsch/KeyPair;->parseLines(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v18

    :cond_2
    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lcom/jcraft/jsch/KeyPair;->parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Private-Lines"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v10, v14}, Lcom/jcraft/jsch/KeyPair;->parseLines(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v16

    :cond_3
    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lcom/jcraft/jsch/KeyPair;->parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    invoke-static {v0, v3, v8}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v16

    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v8, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v8}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v18

    const/4 v2, 0x0

    const-string v3, "ssh-rsa"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v9, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    move-object/from16 v0, v18

    array-length v3, v0

    invoke-virtual {v9, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    new-array v3, v13, [B

    invoke-virtual {v9, v3}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    new-array v0, v3, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    new-array v15, v3, [B

    invoke-virtual {v9, v15}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    new-instance v2, Lcom/jcraft/jsch/KeyPairRSA;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v15, v1, v3}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    :goto_1
    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    const/4 v0, 0x4

    :cond_4
    const-string v3, "ssh-dss"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v9, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    move-object/from16 v0, v18

    array-length v3, v0

    invoke-virtual {v9, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    new-array v3, v13, [B

    invoke-virtual {v9, v3}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v9, v4}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    new-array v5, v3, [B

    invoke-virtual {v9, v5}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    new-array v6, v3, [B

    invoke-virtual {v9, v6}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    new-array v7, v3, [B

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    new-instance v2, Lcom/jcraft/jsch/KeyPairDSA;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    goto :goto_1

    const/4 v10, 0x7

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    const/4 v6, 0x7

    :cond_6
    const-string v3, "Encryption"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v8, "none"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    const/4 v3, 0x2

    iput v3, v2, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const-string v3, "Comment"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-eqz v3, :cond_9

    const-string v3, "aes256-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_0
    const-string v3, "aes256-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Cipher;

    check-cast v3, Lcom/jcraft/jsch/Cipher;

    iput-object v3, v2, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v2, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/jcraft/jsch/KeyPair;->iv:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/jcraft/jsch/KeyPair;->data:[B

    goto/16 :goto_0

    const/4 v3, 0x4

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    const/4 v7, 0x4

    :catch_0
    move-exception v12

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v8, "The cipher \'aes256-cbc\' is required, but it is not available."

    invoke-direct {v3, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v8, "The cipher \'aes256-cbc\' is required, but it is not available."

    invoke-direct {v3, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/jcraft/jsch/KeyPair;->data:[B

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    goto/16 :goto_0

    const/4 v14, 0x6
.end method

.method private static parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z
    .locals 10

    const/4 v9, 0x7

    const/16 v8, 0xd

    const/4 v5, 0x0

    const/4 v9, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v9, 0x6

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v9, 0x5

    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    move v1, v2

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    const/4 v9, 0x1

    aget-byte v6, v0, v1

    if-ne v6, v8, :cond_2

    const/4 v9, 0x6

    :cond_0
    :goto_1
    if-nez v3, :cond_5

    const/4 v9, 0x5

    :cond_1
    :goto_2
    return v5

    const/4 v3, 0x3

    const/4 v9, 0x4

    :cond_2
    aget-byte v6, v0, v1

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_4

    const/4 v9, 0x5

    new-instance v3, Ljava/lang/String;

    sub-int v6, v1, v2

    invoke-direct {v3, v0, v2, v6}, Ljava/lang/String;-><init>([BII)V

    const/4 v9, 0x3

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    array-length v6, v0

    if-ge v1, v6, :cond_3

    aget-byte v6, v0, v1

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x5

    :cond_3
    move v2, v1

    const/4 v9, 0x2

    goto :goto_1

    const/4 v4, 0x7

    const/4 v9, 0x6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    const/4 v9, 0x0

    :cond_5
    move v1, v2

    :goto_3
    array-length v6, v0

    if-ge v1, v6, :cond_7

    const/4 v9, 0x7

    aget-byte v6, v0, v1

    if-ne v6, v8, :cond_9

    const/4 v9, 0x1

    new-instance v4, Ljava/lang/String;

    sub-int v6, v1, v2

    invoke-direct {v4, v0, v2, v6}, Ljava/lang/String;-><init>([BII)V

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    array-length v6, v0

    if-ge v1, v6, :cond_6

    aget-byte v6, v0, v1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    const/4 v9, 0x5

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    :cond_6
    move v2, v1

    const/4 v9, 0x0

    :cond_7
    if-eqz v4, :cond_8

    const/4 v9, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v9, 0x5

    :cond_8
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    const/4 v5, 0x7

    const/4 v9, 0x5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    const/4 v0, 0x6
.end method

.method private static parseLines(Lcom/jcraft/jsch/Buffer;I)[B
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v11, 0x5

    iget v4, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v11, 0x4

    const/4 v1, 0x0

    const/4 v11, 0x2

    move v2, v4

    move v6, p1

    const/4 v11, 0x7

    :goto_0
    add-int/lit8 p1, v6, -0x1

    if-lez v6, :cond_4

    const/4 v11, 0x6

    :goto_1
    array-length v8, v0

    if-le v8, v2, :cond_0

    const/4 v11, 0x3

    add-int/lit8 v3, v2, 0x1

    aget-byte v8, v0, v2

    const/16 v9, 0xd

    if-ne v8, v9, :cond_6

    const/4 v11, 0x7

    if-nez v1, :cond_2

    const/4 v11, 0x0

    sub-int v8, v3, v4

    add-int/lit8 v8, v8, -0x1

    new-array v1, v8, [B

    const/4 v11, 0x5

    sub-int v8, v3, v4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v4, v1, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    const/4 v11, 0x0

    :cond_0
    :goto_2
    aget-byte v8, v0, v2

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    const/4 v11, 0x4

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x5

    :cond_1
    move v4, v2

    move v6, p1

    goto :goto_0

    const/4 v9, 0x7

    const/4 v11, 0x3

    :cond_2
    array-length v8, v1

    add-int/2addr v8, v3

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [B

    const/4 v11, 0x0

    array-length v8, v1

    invoke-static {v1, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x3

    array-length v8, v1

    sub-int v9, v3, v4

    add-int/lit8 v9, v9, -0x1

    invoke-static {v0, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x2

    const/4 v5, 0x0

    :goto_3
    array-length v8, v1

    if-ge v5, v8, :cond_3

    aput-byte v10, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    const/4 v1, 0x7

    const/4 v11, 0x7

    :cond_3
    move-object v1, v7

    move v2, v3

    const/4 v11, 0x4

    goto :goto_2

    const/4 v3, 0x7

    const/4 v11, 0x6

    :cond_4
    if-eqz v1, :cond_5

    const/4 v11, 0x5

    iput v4, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v11, 0x3

    :cond_5
    return-object v1

    const/4 v6, 0x6

    :cond_6
    move v2, v3

    goto :goto_1

    const/4 v2, 0x5
.end method


# virtual methods
.method countLength(I)I
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x6

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_0

    move v1, v0

    const/4 v3, 0x3

    :goto_0
    return v1

    const/4 v0, 0x2

    const/4 v3, 0x0

    :cond_0
    :goto_1
    if-lez p1, :cond_1

    const/4 v3, 0x5

    ushr-int/lit8 p1, p1, 0x8

    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v0, 0x0

    :cond_1
    move v1, v0

    const/4 v3, 0x4

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public decrypt(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x3

    :goto_0
    return v0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x1

    const/4 v1, 0x0

    :cond_2
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    move-result v0

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public decrypt([B)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x5

    iget-boolean v4, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-nez v4, :cond_1

    const/4 v6, 0x4

    :cond_0
    :goto_0
    return v2

    const/4 v3, 0x1

    const/4 v6, 0x5

    :cond_1
    if-nez p1, :cond_2

    const/4 v6, 0x5

    iget-boolean v4, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    const/4 v2, 0x5

    const/4 v6, 0x2

    :cond_2
    array-length v4, p1

    new-array v0, v4, [B

    const/4 v6, 0x2

    array-length v4, v0

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x2

    move-object p1, v0

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->iv:[B

    invoke-direct {p0, v4, p1, v5}, Lcom/jcraft/jsch/KeyPair;->decrypt([B[B[B)[B

    move-result-object v1

    const/4 v6, 0x5

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v6, 0x3

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v6, 0x6

    iput-boolean v3, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    const/4 v6, 0x3

    :cond_3
    iget-boolean v4, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->passphrase:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public finalize()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public abstract forSSHAgent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method

.method declared-synchronized genKey([B[B)[B
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genCipher()Lcom/jcraft/jsch/Cipher;

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    :cond_0
    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genHash()Lcom/jcraft/jsch/HASH;

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    :cond_1
    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v10}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v10

    new-array v7, v10, [B

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v10}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    move-result v4

    array-length v10, v7

    div-int/2addr v10, v4

    mul-int v11, v10, v4

    array-length v10, v7

    rem-int/2addr v10, v4

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_0
    add-int/2addr v10, v11

    new-array v3, v10, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :try_start_1
    iget v10, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    if-nez v10, :cond_7

    const/4 v6, 0x0

    :goto_1
    add-int v10, v6, v4

    array-length v11, v3

    if-gt v10, v11, :cond_5

    if-eqz v9, :cond_2

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v11, 0x0

    array-length v12, v9

    invoke-interface {v10, v9, v11, v12}, Lcom/jcraft/jsch/HASH;->update([BII)V

    :cond_2
    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v11, 0x0

    array-length v12, p1

    invoke-interface {v10, p1, v11, v12}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    array-length v10, v0

    const/16 v13, 0x8

    if-le v10, v13, :cond_4

    const/16 v10, 0x8

    :goto_2
    move-object/from16 v0, p2

    invoke-interface {v11, v0, v12, v10}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v10}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v9

    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v9, v10, v3, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v9

    add-int/2addr v6, v10

    goto :goto_1

    const/4 v1, 0x7

    :cond_3
    move v10, v4

    goto :goto_0

    const/4 v4, 0x3

    :cond_4
    move-object/from16 v0, p2

    array-length v10, v0

    goto :goto_2

    const/4 v7, 0x4

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v3, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    monitor-exit p0

    return-object v7

    const/4 v10, 0x2

    :cond_7
    :try_start_2
    iget v10, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v6, 0x0

    :goto_4
    add-int v10, v6, v4

    array-length v11, v3

    if-gt v10, v11, :cond_9

    if-eqz v9, :cond_8

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v11, 0x0

    array-length v12, v9

    invoke-interface {v10, v9, v11, v12}, Lcom/jcraft/jsch/HASH;->update([BII)V

    :cond_8
    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v11, 0x0

    array-length v12, p1

    invoke-interface {v10, p1, v11, v12}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v10}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v9

    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v9, v10, v3, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v9

    add-int/2addr v6, v10

    goto :goto_4

    const/4 v10, 0x4

    :cond_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v3, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    const/4 v3, 0x7

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    const/4 v8, 0x7

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_a
    :try_start_4
    iget v10, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v10, "sha-1"

    invoke-static {v10}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jcraft/jsch/HASH;

    move-object v0, v10

    check-cast v0, Lcom/jcraft/jsch/HASH;

    move-object v8, v0

    const/4 v10, 0x4

    new-array v9, v10, [B

    const/16 v10, 0x28

    new-array v7, v10, [B

    const/4 v5, 0x0

    :goto_5
    const/4 v10, 0x2

    if-ge v5, v10, :cond_6

    invoke-interface {v8}, Lcom/jcraft/jsch/HASH;->init()V

    const/4 v10, 0x3

    int-to-byte v11, v5

    aput-byte v11, v9, v10

    const/4 v10, 0x0

    array-length v11, v9

    invoke-interface {v8, v9, v10, v11}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v8, p1, v10, v11}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v8}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v10

    const/4 v11, 0x0

    mul-int/lit8 v12, v5, 0x14

    const/16 v13, 0x14

    invoke-static {v10, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    const/4 v10, 0x6
.end method

.method abstract generate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method

.method abstract getBegin()[B
.end method

.method abstract getEnd()[B
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genHash()Lcom/jcraft/jsch/HASH;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    const/4 v2, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    return-object v1

    const/4 v1, 0x3

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->getFingerPrint(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v2, 0x5
.end method

.method abstract getKeySize()I
.end method

.method public abstract getKeyType()I
.end method

.method abstract getKeyTypeName()[B
.end method

.method abstract getPrivateKey()[B
.end method

.method public getPublicKeyBlob()[B
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    return-object v0

    const/4 v1, 0x2
.end method

.method public getPublicKeyComment()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x4
.end method

.method public abstract getSignature([B)[B
.end method

.method public abstract getVerifier()Lcom/jcraft/jsch/Signature;
.end method

.method public isEncrypted()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    return v0

    const/4 v1, 0x7
.end method

.method abstract parse([B)Z
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x5

    :cond_0
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->setPassphrase([B)V

    const/4 v1, 0x6

    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v1, 0x6

    :cond_1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->setPassphrase([B)V

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public setPassphrase([B)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v1, 0x6

    const/4 p1, 0x0

    const/4 v1, 0x1

    :cond_0
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->passphrase:[B

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setPublicKeyComment(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x4
.end method

.method writeINTEGER([BI[B)I
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x6

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x2

    aput-byte v1, p1, p2

    const/4 v3, 0x7

    array-length v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeLength([BII)I

    move-result p2

    const/4 v3, 0x6

    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x3

    array-length v1, p3

    add-int/2addr p2, v1

    const/4 v3, 0x1

    return p2

    const/4 v2, 0x2
.end method

.method writeLength([BII)I
    .locals 6

    const/4 v5, 0x6

    const/4 v5, 0x3

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_0

    const/4 v5, 0x6

    add-int/lit8 v1, p2, 0x1

    int-to-byte v3, p3

    aput-byte v3, p1, p2

    move p2, v1

    const/4 v5, 0x4

    :goto_0
    return v1

    const/4 v5, 0x2

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    or-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    const/4 v5, 0x0

    add-int v2, v1, v0

    const/4 v5, 0x3

    :goto_1
    if-lez v0, :cond_1

    const/4 v5, 0x4

    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    const/4 v5, 0x3

    ushr-int/lit8 p3, p3, 0x8

    const/4 v5, 0x3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    const/4 v1, 0x7

    :cond_1
    move p2, v1

    move v1, v2

    const/4 v5, 0x2

    goto :goto_0

    const/4 v1, 0x3
.end method

.method public writePrivateKey(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/io/OutputStream;[B)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public writePrivateKey(Ljava/io/OutputStream;[B)V
    .locals 9

    const/4 v8, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    if-nez p2, :cond_0

    const/4 v8, 0x2

    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->passphrase:[B

    const/4 v8, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPrivateKey()[B

    move-result-object v4

    const/4 v8, 0x7

    new-array v0, v6, [[B

    const/4 v8, 0x2

    invoke-direct {p0, v4, v0, p2}, Lcom/jcraft/jsch/KeyPair;->encrypt([B[[B[B)[B

    move-result-object v1

    const/4 v8, 0x5

    if-eq v1, v4, :cond_1

    const/4 v8, 0x2

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v8, 0x2

    :cond_1
    aget-object v3, v0, v7

    const/4 v8, 0x6

    array-length v6, v1

    invoke-static {v1, v7, v6}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object v5

    const/4 v8, 0x7

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getBegin()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x1

    if-eqz p2, :cond_3

    const/4 v8, 0x2

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->header:[[B

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x2

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->header:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    const/4 v8, 0x3

    aget-byte v6, v3, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/jcraft/jsch/KeyPair;->b2a(B)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    const/4 v8, 0x1

    aget-byte v6, v3, v2

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/jcraft/jsch/KeyPair;->b2a(B)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    const/4 v8, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v2, 0x0

    const/4 v8, 0x4

    :cond_2
    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x7

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x4

    :cond_3
    const/4 v2, 0x0

    const/4 v8, 0x2

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_5

    const/4 v8, 0x5

    add-int/lit8 v6, v2, 0x40

    array-length v7, v5

    if-ge v6, v7, :cond_4

    const/4 v8, 0x6

    const/16 v6, 0x40

    invoke-virtual {p1, v5, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    const/4 v8, 0x0

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x3

    add-int/lit8 v2, v2, 0x40

    const/4 v8, 0x5

    goto :goto_1

    const/4 v4, 0x2

    const/4 v8, 0x0

    :cond_4
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {p1, v5, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    const/4 v8, 0x1

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v8, 0x6

    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getEnd()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    sget-object v6, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x5

    :goto_2
    nop

    return-void

    const/4 v5, 0x6

    const/4 v8, 0x5

    :catch_0
    move-exception v6

    goto :goto_2

    const/4 v7, 0x3
.end method

.method public writePrivateKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/lang/String;[B)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public writePrivateKey(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/io/OutputStream;[B)V

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public writePublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v1

    const/4 v4, 0x6

    array-length v2, v1

    invoke-static {v1, v3, v2}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object v0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeName()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/jcraft/jsch/KeyPair;->space:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v4, 0x5

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    sget-object v2, Lcom/jcraft/jsch/KeyPair;->space:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v4, 0x2

    sget-object v2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x7

    :goto_0
    nop

    return-void

    const/4 v4, 0x5

    const/4 v4, 0x4

    :catch_0
    move-exception v2

    goto :goto_0

    const/4 v3, 0x1
.end method

.method public writePublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writePublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public writeSECSHPublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v3

    const/4 v6, 0x6

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object v2

    const/4 v6, 0x2

    :try_start_0
    const-string v4, "---- BEGIN SSH2 PUBLIC KEY ----"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    sget-object v4, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Comment: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    sget-object v4, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    const/4 v6, 0x6

    const/4 v0, 0x0

    const/4 v6, 0x2

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    const/4 v6, 0x1

    const/16 v1, 0x46

    const/4 v6, 0x3

    array-length v4, v2

    sub-int/2addr v4, v0

    if-ge v4, v1, :cond_0

    array-length v4, v2

    sub-int v1, v4, v0

    const/4 v6, 0x6

    :cond_0
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    sget-object v4, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    const/4 v6, 0x0

    add-int/2addr v0, v1

    const/4 v6, 0x2

    goto :goto_0

    const/4 v1, 0x5

    const/4 v6, 0x2

    :cond_1
    const-string v4, "---- END SSH2 PUBLIC KEY ----"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    sget-object v4, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x6

    :goto_1
    nop

    return-void

    const/4 v1, 0x0

    const/4 v6, 0x5

    :catch_0
    move-exception v4

    goto :goto_1

    const/4 v0, 0x2
.end method

.method public writeSECSHPublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writeSECSHPublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x4
.end method

.method writeSEQUENCE([BII)I
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x30

    aput-byte v1, p1, p2

    const/4 v2, 0x7

    invoke-virtual {p0, p1, v0, p3}, Lcom/jcraft/jsch/KeyPair;->writeLength([BII)I

    move-result p2

    const/4 v2, 0x3

    return p2

    const/4 v0, 0x3
.end method
