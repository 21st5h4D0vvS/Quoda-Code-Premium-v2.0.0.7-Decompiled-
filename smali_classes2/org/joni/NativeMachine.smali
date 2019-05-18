.class public abstract Lorg/joni/NativeMachine;
.super Lorg/joni/Matcher;
.source "NativeMachine.java"


# direct methods
.method protected constructor <init>(Lorg/joni/Regex;[BII)V
    .locals 0
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joni/Matcher;-><init>(Lorg/joni/Regex;[BII)V

    .line 26
    return-void
.end method
