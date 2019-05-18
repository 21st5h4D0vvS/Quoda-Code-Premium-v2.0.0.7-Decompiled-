.class Lcom/jcraft/jsch/JSchPartialAuthException;
.super Lcom/jcraft/jsch/JSchException;


# instance fields
.field methods:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/JSchPartialAuthException;->methods:Ljava/lang/String;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getMethods()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/JSchPartialAuthException;->methods:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x3
.end method
