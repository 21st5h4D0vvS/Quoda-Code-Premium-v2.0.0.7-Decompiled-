.class public Lorg/jcodings/exception/InternalException;
.super Lorg/jcodings/exception/JCodingsException;
.source "InternalException.java"


# static fields
.field private static final serialVersionUID:J = -0x35bb748fbf8d5038L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jcodings/exception/JCodingsException;-><init>(Ljava/lang/String;[BII)V

    .line 35
    return-void
.end method
