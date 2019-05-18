.class public Lcom/jcraft/jsch/jce/HMACSHA1;
.super Lcom/jcraft/jsch/jce/HMAC;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const/4 v1, 0x7

    const-string v0, "hmac-sha1"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA1;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x14

    iput v0, p0, Lcom/jcraft/jsch/jce/HMACSHA1;->bsize:I

    const/4 v1, 0x7

    const-string v0, "HmacSHA1"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA1;->algorithm:Ljava/lang/String;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method
