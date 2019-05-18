.class Lcom/jcraft/jsch/JSchAuthCancelException;
.super Lcom/jcraft/jsch/JSchException;


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x5
.end method
