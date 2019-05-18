.class public abstract Lorg/joni/ast/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/joni/constants/NodeType;


# instance fields
.field public parent:Lorg/joni/ast/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static pad(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "level"    # I

    .prologue
    .line 84
    if-nez p0, :cond_0

    const-string v2, "NULL"

    .line 89
    :goto_0
    return-object v2

    .line 86
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "pad":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    invoke-virtual {v1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getAddressName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/joni/ast/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public final getType2Bit()I
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/joni/ast/Node;->getType()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public final isAllowedInLookBehind()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/joni/ast/Node;->getType2Bit()I

    move-result v0

    and-int/lit16 v0, v0, 0x7ef

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInvalidQuantifier()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final isSimple()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/joni/ast/Node;->getType2Bit()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setChild(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "tgt"    # Lorg/joni/ast/Node;

    .prologue
    .line 37
    return-void
.end method

.method public swap(Lorg/joni/ast/Node;)V
    .locals 2
    .param p1, "with"    # Lorg/joni/ast/Node;

    .prologue
    .line 50
    iget-object v1, p0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    invoke-virtual {v1, p1}, Lorg/joni/ast/Node;->setChild(Lorg/joni/ast/Node;)V

    .line 52
    :cond_0
    iget-object v1, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    invoke-virtual {v1, p0}, Lorg/joni/ast/Node;->setChild(Lorg/joni/ast/Node;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 55
    .local v0, "tmp":Lorg/joni/ast/Node;
    iget-object v1, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    iput-object v1, p0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 56
    iput-object v0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 57
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "s":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/joni/ast/Node;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    invoke-virtual {v1}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract toString(I)Ljava/lang/String;
.end method

.method public verifyTree(Ljava/util/Set;Lorg/joni/WarnCallback;)V
    .locals 2
    .param p2, "warnings"    # Lorg/joni/WarnCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/joni/ast/Node;",
            ">;",
            "Lorg/joni/WarnCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/joni/ast/Node;>;"
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/joni/ast/Node;->getChild()Lorg/joni/ast/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lorg/joni/ast/Node;->getChild()Lorg/joni/ast/Node;

    move-result-object v0

    iget-object v0, v0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    if-eq v0, p0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broken link to child: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joni/ast/Node;->getChild()Lorg/joni/ast/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ast/Node;->getChild()Lorg/joni/ast/Node;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joni/ast/Node;->verifyTree(Ljava/util/Set;Lorg/joni/WarnCallback;)V

    .line 68
    :cond_1
    return-void
.end method
