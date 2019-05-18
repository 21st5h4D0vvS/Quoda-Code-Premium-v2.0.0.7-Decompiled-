.class public Lcom/jcraft/jsch/jce/HMACMD5;
.super Lcom/jcraft/jsch/jce/HMAC;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const/4 v1, 0x7

    const-string v0, "hmac-md5"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->name:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v0, 0x10

    iput v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->bsize:I

    const/4 v1, 0x4

    const-string v0, "HmacMD5"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->algorithm:Ljava/lang/String;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x4
.end method
