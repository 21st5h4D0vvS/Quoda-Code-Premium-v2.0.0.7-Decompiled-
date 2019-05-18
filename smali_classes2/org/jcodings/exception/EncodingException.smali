.class public Lorg/jcodings/exception/EncodingException;
.super Lorg/jcodings/exception/JCodingsException;
.source "EncodingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;[BII)V

    .line 33
    return-void
.end method
