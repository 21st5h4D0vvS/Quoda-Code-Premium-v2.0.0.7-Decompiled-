.class public Lorg/joni/exception/SyntaxException;
.super Lorg/joni/exception/JOniException;
.source "SyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x6d1dfe4c7f160970L


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
