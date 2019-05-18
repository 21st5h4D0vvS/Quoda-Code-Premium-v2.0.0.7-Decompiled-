.class public abstract Lcom/jcraft/jsch/UserAuth;
.super Ljava/lang/Object;


# static fields
.field protected static final SSH_MSG_USERAUTH_BANNER:I = 0x35

.field protected static final SSH_MSG_USERAUTH_FAILURE:I = 0x33

.field protected static final SSH_MSG_USERAUTH_INFO_REQUEST:I = 0x3c

.field protected static final SSH_MSG_USERAUTH_INFO_RESPONSE:I = 0x3d

.field protected static final SSH_MSG_USERAUTH_PK_OK:I = 0x3c

.field protected static final SSH_MSG_USERAUTH_REQUEST:I = 0x32

.field protected static final SSH_MSG_USERAUTH_SUCCESS:I = 0x34


# instance fields
.field protected buf:Lcom/jcraft/jsch/Buffer;

.field protected packet:Lcom/jcraft/jsch/Packet;

.field protected userinfo:Lcom/jcraft/jsch/UserInfo;

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getUserInfo()Lcom/jcraft/jsch/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->getBuffer()Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x1
.end method
