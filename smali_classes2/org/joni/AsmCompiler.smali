.class final Lorg/joni/AsmCompiler;
.super Lorg/joni/AsmCompilerSupport;
.source "AsmCompiler.java"


# direct methods
.method public constructor <init>(Lorg/joni/Analyser;)V
    .locals 0
    .param p1, "analyser"    # Lorg/joni/Analyser;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/joni/AsmCompilerSupport;-><init>(Lorg/joni/Analyser;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected addCompileString([BIIIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "mbLength"    # I
    .param p4, "strLength"    # I
    .param p5, "ignoreCase"    # Z

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p4}, Lorg/joni/AsmCompiler;->installTemplate([BII)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "template":Ljava/lang/String;
    return-void
.end method

.method protected compileAltNode(Lorg/joni/ast/ConsAltNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/ConsAltNode;

    .prologue
    .line 60
    return-void
.end method

.method protected compileAnchorNode(Lorg/joni/ast/AnchorNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/AnchorNode;

    .prologue
    .line 108
    return-void
.end method

.method protected compileAnyCharNode()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected compileBackrefNode(Lorg/joni/ast/BackRefNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/BackRefNode;

    .prologue
    .line 84
    return-void
.end method

.method protected compileCClassNode(Lorg/joni/ast/CClassNode;)V
    .locals 1
    .param p1, "node"    # Lorg/joni/ast/CClassNode;

    .prologue
    .line 69
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget-object v0, v0, Lorg/joni/BitSet;->bits:[I

    invoke-virtual {p0, v0}, Lorg/joni/AsmCompiler;->installBitSet([I)Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method protected compileCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    .line 92
    return-void
.end method

.method protected compileCTypeNode(Lorg/joni/ast/CTypeNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/CTypeNode;

    .prologue
    .line 76
    return-void
.end method

.method protected compileCallNode(Lorg/joni/ast/CallNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/CallNode;

    .prologue
    .line 88
    return-void
.end method

.method protected compileEncloseNode(Lorg/joni/ast/EncloseNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/EncloseNode;

    .prologue
    .line 104
    return-void
.end method

.method protected compileNonCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    .line 96
    return-void
.end method

.method protected compileOptionNode(Lorg/joni/ast/EncloseNode;)V
    .locals 0
    .param p1, "node"    # Lorg/joni/ast/EncloseNode;

    .prologue
    .line 100
    return-void
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->setupFactoryInit()V

    .line 52
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->setupMachineInit()V

    .line 53
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->setupMachineMatch()V

    .line 55
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->setupClasses()V

    .line 56
    return-void
.end method

.method protected prepare()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lorg/joni/AsmCompiler;->REG_NUM:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/joni/AsmCompiler;->REG_NUM:I

    .line 40
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->prepareMachine()V

    .line 41
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->prepareMachineInit()V

    .line 42
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->prepareMachineMatch()V

    .line 44
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->prepareFactory()V

    .line 45
    invoke-virtual {p0}, Lorg/joni/AsmCompiler;->prepareFactoryInit()V

    .line 46
    return-void
.end method
