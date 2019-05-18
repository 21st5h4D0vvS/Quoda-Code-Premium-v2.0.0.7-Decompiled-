.class public final Lorg/joni/ast/AnyCharNode;
.super Lorg/joni/ast/Node;
.source "AnyCharNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Any Char"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x3

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 37
    const-string v0, ""

    .line 38
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method
