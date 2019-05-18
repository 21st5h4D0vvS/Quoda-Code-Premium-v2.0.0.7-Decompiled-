.class public final Lorg/joni/ast/CallNode;
.super Lorg/joni/ast/StateNode;
.source "CallNode.java"


# instance fields
.field public groupNum:I

.field public name:[B

.field public nameEnd:I

.field public nameP:I

.field public target:Lorg/joni/ast/Node;

.field public unsetAddrList:Lorg/joni/UnsetAddrList;


# direct methods
.method public constructor <init>([BIII)V
    .locals 0
    .param p1, "name"    # [B
    .param p2, "nameP"    # I
    .param p3, "nameEnd"    # I
    .param p4, "gnum"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/joni/ast/StateNode;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/joni/ast/CallNode;->name:[B

    .line 38
    iput p2, p0, Lorg/joni/ast/CallNode;->nameP:I

    .line 39
    iput p3, p0, Lorg/joni/ast/CallNode;->nameEnd:I

    .line 40
    iput p4, p0, Lorg/joni/ast/CallNode;->groupNum:I

    .line 41
    return-void
.end method


# virtual methods
.method protected getChild()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "Call"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xa

    return v0
.end method

.method protected setChild(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "newChild"    # Lorg/joni/ast/Node;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    .line 51
    return-void
.end method

.method public setTarget(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "tgt"    # Lorg/joni/ast/Node;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    .line 60
    iput-object p0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 61
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7
    .param p1, "level"    # I

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/joni/ast/StateNode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "value":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/joni/ast/CallNode;->name:[B

    iget v4, p0, Lorg/joni/ast/CallNode;->nameP:I

    iget v5, p0, Lorg/joni/ast/CallNode;->nameEnd:I

    iget v6, p0, Lorg/joni/ast/CallNode;->nameP:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  groupNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/CallNode;->groupNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v2}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/CallNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  unsetAddrList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/CallNode;->unsetAddrList:Lorg/joni/UnsetAddrList;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/CallNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 70
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/joni/ast/Node;>;"
    iget-object v0, p0, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    iget-object v0, v0, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    if-ne v0, p0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/joni/ast/CallNode;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t point to a target or the target has been stolen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method
