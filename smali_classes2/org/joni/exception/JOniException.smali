.class public Lorg/joni/exception/JOniException;
.super Ljava/lang/RuntimeException;
.source "JOniException.java"


# static fields
.field private static final serialVersionUID:J = -0x53a4e35ab2c1aabbL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
