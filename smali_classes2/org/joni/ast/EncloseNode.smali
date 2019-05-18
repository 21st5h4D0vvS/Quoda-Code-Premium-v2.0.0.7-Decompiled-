.class public final Lorg/joni/ast/EncloseNode;
.super Lorg/joni/ast/StateNode;
.source "EncloseNode.java"

# interfaces
.implements Lorg/joni/constants/EncloseType;


# instance fields
.field public callAddr:I

.field public charLength:I

.field public containingAnchor:Lorg/joni/ast/Node;

.field public maxLength:I

.field public minLength:I

.field public optCount:I

.field public option:I

.field public regNum:I

.field public target:Lorg/joni/ast/Node;

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/joni/ast/StateNode;-><init>()V

    .line 41
    iput p1, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/joni/ast/EncloseNode;->callAddr:I

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "_"    # I

    .prologue
    .line 54
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/joni/ast/EncloseNode;-><init>(I)V

    .line 55
    iput p1, p0, Lorg/joni/ast/EncloseNode;->option:I

    .line 56
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "isNamed"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joni/ast/EncloseNode;-><init>(I)V

    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/joni/ast/EncloseNode;->setNamedGroup()V

    .line 49
    :cond_0
    iput p1, p0, Lorg/joni/ast/EncloseNode;->option:I

    .line 50
    return-void
.end method


# virtual methods
.method public clearEncloseStatus(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 113
    iget v0, p0, Lorg/joni/ast/EncloseNode;->state:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ast/EncloseNode;->state:I

    .line 114
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 118
    return-void
.end method

.method public clearOption()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 130
    return-void
.end method

.method public clearStopBacktrack()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 142
    return-void
.end method

.method protected getChild()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "Enclose"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x6

    return v0
.end method

.method public isMemory()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOption()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopBacktrack()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    and-int/lit8 v0, v0, 0x4

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
    .param p1, "newChild"    # Lorg/joni/ast/Node;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    .line 66
    return-void
.end method

.method public setEncloseStatus(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 109
    iget v0, p0, Lorg/joni/ast/EncloseNode;->state:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/joni/ast/EncloseNode;->state:I

    .line 110
    return-void
.end method

.method public setMemory()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 122
    return-void
.end method

.method public setOption()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 134
    return-void
.end method

.method public setStopBacktrack()V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/joni/ast/EncloseNode;->type:I

    .line 146
    return-void
.end method

.method public setTarget(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "tgt"    # Lorg/joni/ast/Node;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    .line 75
    iput-object p0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 76
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/joni/ast/StateNode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "value":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joni/ast/EncloseNode;->typeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  regNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->option:I

    invoke-static {v2}, Lorg/joni/Option;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/EncloseNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  callAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->callAddr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  minLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->minLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  maxLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->maxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  charLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->charLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  optCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/EncloseNode;->optCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public typeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "types":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/joni/ast/EncloseNode;->isStopBacktrack()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "STOP_BACKTRACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ast/EncloseNode;->isMemory()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MEMORY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    invoke-virtual {p0}, Lorg/joni/ast/EncloseNode;->isOption()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OPTION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
