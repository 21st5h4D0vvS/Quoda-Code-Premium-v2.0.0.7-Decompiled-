.class public final Lorg/joni/ast/ConsAltNode;
.super Lorg/joni/ast/Node;
.source "ConsAltNode.java"


# instance fields
.field public car:Lorg/joni/ast/Node;

.field public cdr:Lorg/joni/ast/ConsAltNode;

.field private type:I


# direct methods
.method private constructor <init>(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;I)V
    .locals 0
    .param p1, "car"    # Lorg/joni/ast/Node;
    .param p2, "cdr"    # Lorg/joni/ast/ConsAltNode;
    .param p3, "type"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    .line 35
    if-eqz p1, :cond_0

    iput-object p0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 36
    :cond_0
    iput-object p2, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .line 37
    if-eqz p2, :cond_1

    iput-object p0, p2, Lorg/joni/ast/ConsAltNode;->parent:Lorg/joni/ast/Node;

    .line 39
    :cond_1
    iput p3, p0, Lorg/joni/ast/ConsAltNode;->type:I

    .line 40
    return-void
.end method

.method public static listAdd(Lorg/joni/ast/ConsAltNode;Lorg/joni/ast/Node;)Lorg/joni/ast/ConsAltNode;
    .locals 2
    .param p0, "list"    # Lorg/joni/ast/ConsAltNode;
    .param p1, "x"    # Lorg/joni/ast/Node;

    .prologue
    .line 51
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/joni/ast/ConsAltNode;->newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v0

    .line 53
    .local v0, "n":Lorg/joni/ast/ConsAltNode;
    if-eqz p0, :cond_1

    .line 54
    :goto_0
    iget-object v1, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v1, :cond_0

    .line 55
    iget-object p0, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    .line 59
    :cond_1
    return-object v0
.end method

.method public static newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;
    .locals 2
    .param p0, "left"    # Lorg/joni/ast/Node;
    .param p1, "right"    # Lorg/joni/ast/ConsAltNode;

    .prologue
    .line 43
    new-instance v0, Lorg/joni/ast/ConsAltNode;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, Lorg/joni/ast/ConsAltNode;-><init>(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;I)V

    return-object v0
.end method

.method public static newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;
    .locals 2
    .param p0, "left"    # Lorg/joni/ast/Node;
    .param p1, "right"    # Lorg/joni/ast/ConsAltNode;

    .prologue
    .line 47
    new-instance v0, Lorg/joni/ast/ConsAltNode;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lorg/joni/ast/ConsAltNode;-><init>(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;I)V

    return-object v0
.end method


# virtual methods
.method protected getChild()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lorg/joni/ast/ConsAltNode;->type:I

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Lorg/joni/exception/InternalException;

    const-string v1, "internal parser error (bug)"

    invoke-direct {v0, v1}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    const-string v0, "Alt"

    .line 137
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "List"

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/joni/ast/ConsAltNode;->type:I

    return v0
.end method

.method public setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;
    .locals 1
    .param p1, "ca"    # Lorg/joni/ast/Node;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    .line 121
    iput-object p0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 122
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    return-object v0
.end method

.method public setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;
    .locals 1
    .param p1, "cd"    # Lorg/joni/ast/ConsAltNode;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .line 127
    iput-object p0, p1, Lorg/joni/ast/ConsAltNode;->parent:Lorg/joni/ast/Node;

    .line 128
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    return-object v0
.end method

.method protected setChild(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "newChild"    # Lorg/joni/ast/Node;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    .line 78
    return-void
.end method

.method public swap(Lorg/joni/ast/Node;)V
    .locals 3
    .param p1, "with"    # Lorg/joni/ast/Node;

    .prologue
    .line 87
    iget-object v2, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    iput-object p1, v2, Lorg/joni/ast/ConsAltNode;->parent:Lorg/joni/ast/Node;

    .line 89
    instance-of v2, p1, Lorg/joni/ast/ConsAltNode;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 90
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 91
    .local v1, "withCan":Lorg/joni/ast/ConsAltNode;
    iget-object v2, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    iput-object p0, v2, Lorg/joni/ast/ConsAltNode;->parent:Lorg/joni/ast/Node;

    .line 92
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .line 93
    .local v0, "tmp":Lorg/joni/ast/ConsAltNode;
    iget-object v2, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    iput-object v2, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .line 94
    iput-object v0, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .line 97
    .end local v0    # "tmp":Lorg/joni/ast/ConsAltNode;
    .end local v1    # "withCan":Lorg/joni/ast/ConsAltNode;
    :cond_0
    invoke-super {p0, p1}, Lorg/joni/ast/Node;->swap(Lorg/joni/ast/Node;)V

    .line 98
    return-void
.end method

.method public toAltNode()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x9

    iput v0, p0, Lorg/joni/ast/ConsAltNode;->type:I

    .line 68
    return-void
.end method

.method public toListNode()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lorg/joni/ast/ConsAltNode;->type:I

    .line 64
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "value":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  car: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/ConsAltNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  cdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v1}, Lorg/joni/ast/ConsAltNode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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
    .line 102
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/joni/ast/Node;>;"
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    iget-object v0, v0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    if-eq v0, p0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broken list car: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joni/ast/ConsAltNode;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {v1}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {v0, p1, p2}, Lorg/joni/ast/Node;->verifyTree(Ljava/util/Set;Lorg/joni/WarnCallback;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->parent:Lorg/joni/ast/Node;

    if-eq v0, p0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broken list cdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joni/ast/ConsAltNode;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v1}, Lorg/joni/ast/ConsAltNode;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v0, p1, p2}, Lorg/joni/ast/ConsAltNode;->verifyTree(Ljava/util/Set;Lorg/joni/WarnCallback;)V

    .line 117
    :cond_3
    return-void
.end method
