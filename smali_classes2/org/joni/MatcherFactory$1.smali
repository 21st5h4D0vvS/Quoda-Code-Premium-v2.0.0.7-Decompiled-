.class final Lorg/joni/MatcherFactory$1;
.super Lorg/joni/MatcherFactory;
.source "MatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/MatcherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/joni/MatcherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/joni/Regex;[BII)Lorg/joni/Matcher;
    .locals 1
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 28
    new-instance v0, Lorg/joni/ByteCodeMachine;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/joni/ByteCodeMachine;-><init>(Lorg/joni/Regex;[BII)V

    return-object v0
.end method
