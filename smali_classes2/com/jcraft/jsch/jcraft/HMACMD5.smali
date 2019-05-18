.class public Lcom/jcraft/jsch/jcraft/HMACMD5;
.super Lcom/jcraft/jsch/jcraft/HMAC;

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# static fields
.field private static final name:Ljava/lang/String; = "hmac-md5"


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMAC;-><init>()V

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x3

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/jcraft/HMACMD5;->setH(Ljava/security/MessageDigest;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v0, 0x3

    const/4 v3, 0x2

    :catch_0
    move-exception v0

    const/4 v3, 0x6

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    const/4 v0, 0x3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    const-string v0, "hmac-md5"

    return-object v0

    const/4 v0, 0x7
.end method
