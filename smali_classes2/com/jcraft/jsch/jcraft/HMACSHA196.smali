.class public Lcom/jcraft/jsch/jcraft/HMACSHA196;
.super Lcom/jcraft/jsch/jcraft/HMACSHA1;


# static fields
.field private static final BSIZE:I = 0xc

.field private static final name:Ljava/lang/String; = "hmac-sha1-96"


# instance fields
.field private final _buf16:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMACSHA1;-><init>()V

    const/4 v1, 0x1

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->_buf16:[B

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->_buf16:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->doFinal([BI)V

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->_buf16:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    const/16 v0, 0xc

    return v0

    const/4 v1, 0x2
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    const-string v0, "hmac-sha1-96"

    return-object v0

    const/4 v1, 0x3
.end method
