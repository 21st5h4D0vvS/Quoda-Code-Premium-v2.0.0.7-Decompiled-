.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.super Ljava/lang/Object;
.source "AbstractTlsPeer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 22
    return-void
.end method

.method public notifyAlertReceived(SS)V
    .locals 0
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S

    .prologue
    .line 26
    return-void
.end method

.method public notifyHandshakeComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .locals 2
    .param p1, "secureRenegotiation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 18
    :cond_0
    return-void
.end method
