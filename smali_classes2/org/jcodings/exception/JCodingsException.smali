.class public Lorg/jcodings/exception/JCodingsException;
.super Ljava/lang/RuntimeException;
.source "JCodingsException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "%n"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 32
    new-instance v0, Ljava/lang/String;

    sub-int v1, p4, p3

    invoke-direct {v0, p2, p3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, v0}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
