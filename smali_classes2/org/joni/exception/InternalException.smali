.class public Lorg/joni/exception/InternalException;
.super Lorg/joni/exception/JOniException;
.source "InternalException.java"


# static fields
.field private static final serialVersionUID:J = -0x35bb748fbf8d5038L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/joni/exception/JOniException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
