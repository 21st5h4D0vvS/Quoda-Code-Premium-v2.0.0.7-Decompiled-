.class public Lcom/jcraft/jsch/jce/Random;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Random;


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private tmp:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->tmp:[B

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x0
.end method


# virtual methods
.method public fill([BII)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->tmp:[B

    array-length v0, v0

    if-le p3, v0, :cond_0

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->tmp:[B

    const/4 v2, 0x6

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/Random;->tmp:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->tmp:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x2
.end method
