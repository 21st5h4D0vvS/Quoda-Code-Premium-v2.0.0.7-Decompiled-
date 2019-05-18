.class public Lcom/jcraft/jsch/jce/HMACSHA196;
.super Lcom/jcraft/jsch/jce/HMACSHA1;


# instance fields
.field private final _buf20:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACSHA1;-><init>()V

    const/4 v1, 0x5

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->_buf20:[B

    const/4 v1, 0x1

    const-string v0, "hmac-sha1-96"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->name:Ljava/lang/String;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->_buf20:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jce/HMACSHA1;->doFinal([BI)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->_buf20:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v2, 0x5
.end method

.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    const/16 v0, 0xc

    return v0

    const/4 v0, 0x0
.end method
