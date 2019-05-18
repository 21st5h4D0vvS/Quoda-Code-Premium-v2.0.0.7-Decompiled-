.class Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;
.super Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigLHost"
.end annotation


# instance fields
.field factory:Lcom/jcraft/jsch/SocketFactory;

.field lport:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method
