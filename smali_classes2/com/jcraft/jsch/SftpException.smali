.class public Lcom/jcraft/jsch/SftpException;
.super Ljava/lang/Exception;


# instance fields
.field private cause:Ljava/lang/Throwable;

.field public id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x2

    iput p1, p0, Lcom/jcraft/jsch/SftpException;->id:I

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x4

    iput p1, p0, Lcom/jcraft/jsch/SftpException;->id:I

    const/4 v1, 0x7

    iput-object p3, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    return-object v0

    const/4 v1, 0x4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/jcraft/jsch/SftpException;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method
