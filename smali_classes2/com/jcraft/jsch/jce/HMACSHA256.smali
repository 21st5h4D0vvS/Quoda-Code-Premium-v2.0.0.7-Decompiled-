.class public Lcom/jcraft/jsch/jce/HMACSHA256;
.super Lcom/jcraft/jsch/jce/HMAC;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const/4 v1, 0x1

    const-string v0, "hmac-sha2-256"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA256;->name:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v0, 0x20

    iput v0, p0, Lcom/jcraft/jsch/jce/HMACSHA256;->bsize:I

    const/4 v1, 0x1

    const-string v0, "HmacSHA256"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA256;->algorithm:Ljava/lang/String;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method
