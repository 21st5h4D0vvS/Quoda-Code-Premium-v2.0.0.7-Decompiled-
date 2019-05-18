.class abstract Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Config"
.end annotation


# instance fields
.field address_to_bind:Ljava/lang/String;

.field allocated_rport:I

.field rport:I

.field session:Lcom/jcraft/jsch/Session;

.field target:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method
