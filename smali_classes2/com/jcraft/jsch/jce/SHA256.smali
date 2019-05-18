.class public Lcom/jcraft/jsch/jce/SHA256;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/HASH;


# instance fields
.field md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public digest()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SHA256;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    const/16 v0, 0x20

    return v0

    const/4 v1, 0x0
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v2, 0x3

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/SHA256;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v2, 0x4

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public update([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SHA256;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method
