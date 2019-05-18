.class public Lcom/jcraft/jsch/jce/HMACMD596;
.super Lcom/jcraft/jsch/jce/HMACMD5;


# instance fields
.field private final _buf16:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACMD5;-><init>()V

    const/4 v1, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const/4 v1, 0x0

    const-string v0, "hmac-md5-96"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->name:Ljava/lang/String;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jce/HMACMD5;->doFinal([BI)V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    const/16 v0, 0xc

    return v0

    const/4 v0, 0x1
.end method
