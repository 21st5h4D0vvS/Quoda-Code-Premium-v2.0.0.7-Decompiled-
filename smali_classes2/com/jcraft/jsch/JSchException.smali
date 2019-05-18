.class public Lcom/jcraft/jsch/JSchException;
.super Ljava/lang/Exception;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/JSchException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/JSchException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/JSchException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x6

    iput-object p2, p0, Lcom/jcraft/jsch/JSchException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/JSchException;->cause:Ljava/lang/Throwable;

    return-object v0

    const/4 v0, 0x3
.end method
