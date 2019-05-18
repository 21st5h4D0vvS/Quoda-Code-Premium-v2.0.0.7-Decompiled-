.class public Lcom/jcraft/jsch/jcraft/HMACMD596;
.super Lcom/jcraft/jsch/jcraft/HMACMD5;


# static fields
.field private static final BSIZE:I = 0xc

.field private static final name:Ljava/lang/String; = "hmac-md5-96"


# instance fields
.field private final _buf16:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMACMD5;-><init>()V

    const/4 v1, 0x4

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACMD596;->_buf16:[B

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACMD596;->_buf16:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jcraft/HMACMD5;->doFinal([BI)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACMD596;->_buf16:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    const/16 v0, 0xc

    return v0

    const/4 v1, 0x7
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const-string v0, "hmac-md5-96"

    return-object v0

    const/4 v0, 0x7
.end method
