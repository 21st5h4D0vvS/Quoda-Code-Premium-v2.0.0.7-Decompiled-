.class public final Lorg/joni/ast/AnchorNode;
.super Lorg/joni/ast/Node;
.source "AnchorNode.java"

# interfaces
.implements Lorg/joni/constants/AnchorType;


# instance fields
.field public charLength:I

.field public target:Lorg/joni/ast/Node;

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    .line 30
    iput p1, p0, Lorg/joni/ast/AnchorNode;->type:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/joni/ast/AnchorNode;->charLength:I

    .line 32
    return-void
.end method

.method private isType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 89
    iget v0, p0, Lorg/joni/ast/AnchorNode;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getChild()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Anchor"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x7

    return v0
.end method

.method protected setChild(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "newChild"    # Lorg/joni/ast/Node;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    .line 42
    return-void
.end method

.method public setTarget(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "tgt"    # Lorg/joni/ast/Node;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    .line 51
    iput-object p0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 52
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "value":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joni/ast/AnchorNode;->typeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/AnchorNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public typeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "type":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BEGIN_BUF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BEGIN_LINE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BEGIN_POSITION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "END_BUF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SEMI_END_BUF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "END_LINE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_5
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "WORD_BOUND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_6
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "NOT_WORD_BOUND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_7
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "WORD_BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_8
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "WORD_END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_9
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "PREC_READ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_a
    const/16 v1, 0x800

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "PREC_READ_NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_b
    const/16 v1, 0x1000

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "LOOK_BEHIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_c
    const/16 v1, 0x2000

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "LOOK_BEHIND_NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_d
    const/16 v1, 0x4000

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "ANYCHAR_STAR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_e
    const v1, 0x8000

    invoke-direct {p0, v1}, Lorg/joni/ast/AnchorNode;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "ANYCHAR_STAR_ML "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
