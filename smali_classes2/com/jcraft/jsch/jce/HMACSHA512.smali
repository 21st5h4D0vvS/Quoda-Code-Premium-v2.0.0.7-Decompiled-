.class public Lcom/jcraft/jsch/jce/HMACSHA512;
.super Lcom/jcraft/jsch/jce/HMAC;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const/4 v1, 0x1

    const-string v0, "hmac-sha2-512"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA512;->name:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v0, 0x40

    iput v0, p0, Lcom/jcraft/jsch/jce/HMACSHA512;->bsize:I

    const/4 v1, 0x6

    const-string v0, "HmacSHA512"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA512;->algorithm:Ljava/lang/String;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method
