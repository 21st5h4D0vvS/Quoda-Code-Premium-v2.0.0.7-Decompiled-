.class abstract Lorg/joni/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"

# interfaces
.implements Lorg/joni/exception/ErrorMessages;


# instance fields
.field protected final analyser:Lorg/joni/Analyser;

.field protected final enc:Lorg/jcodings/Encoding;

.field protected final regex:Lorg/joni/Regex;


# direct methods
.method protected constructor <init>(Lorg/joni/Analyser;)V
    .locals 1
    .param p1, "analyser"    # Lorg/joni/Analyser;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/joni/Compiler;->analyser:Lorg/joni/Analyser;

    .line 45
    iget-object v0, p1, Lorg/joni/Analyser;->regex:Lorg/joni/Regex;

    iput-object v0, p0, Lorg/joni/Compiler;->regex:Lorg/joni/Regex;

    .line 46
    iget-object v0, p0, Lorg/joni/Compiler;->regex:Lorg/joni/Regex;

    iget-object v0, v0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iput-object v0, p0, Lorg/joni/Compiler;->enc:Lorg/jcodings/Encoding;

    .line 47
    return-void
.end method

.method private compileStringNode(Lorg/joni/ast/StringNode;)V
    .locals 10
    .param p1, "node"    # Lorg/joni/ast/StringNode;

    .prologue
    .line 66
    move-object v9, p1

    .line 67
    .local v9, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual {v9}, Lorg/joni/ast/StringNode;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {v9}, Lorg/joni/ast/StringNode;->isAmbig()Z

    move-result v5

    .line 72
    .local v5, "ambig":Z
    iget v2, v9, Lorg/joni/ast/StringNode;->p:I

    .local v2, "prev":I
    move v8, v2

    .line 73
    .local v8, "p":I
    iget v6, v9, Lorg/joni/ast/StringNode;->end:I

    .line 74
    .local v6, "end":I
    iget-object v1, v9, Lorg/joni/ast/StringNode;->bytes:[B

    .line 75
    .local v1, "bytes":[B
    iget-object v0, p0, Lorg/joni/Compiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, v1, v8, v6}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    .line 76
    .local v3, "prevLen":I
    add-int/2addr v8, v3

    .line 77
    const/4 v4, 0x1

    .line 79
    .local v4, "slen":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 80
    iget-object v0, p0, Lorg/joni/Compiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, v1, v8, v6}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    .line 81
    .local v7, "len":I
    if-ne v7, v3, :cond_1

    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 89
    :goto_2
    add-int/2addr v8, v7

    .line 90
    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v5}, Lorg/joni/Compiler;->addCompileString([BIIIZ)V

    .line 85
    move v2, v8

    .line 86
    const/4 v4, 0x1

    .line 87
    move v3, v7

    goto :goto_2

    .end local v7    # "len":I
    :cond_2
    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lorg/joni/Compiler;->addCompileString([BIIIZ)V

    goto :goto_0
.end method

.method private compileStringRawNode(Lorg/joni/ast/StringNode;)V
    .locals 6
    .param p1, "sn"    # Lorg/joni/ast/StringNode;

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p1, Lorg/joni/ast/StringNode;->bytes:[B

    iget v2, p1, Lorg/joni/ast/StringNode;->p:I

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joni/Compiler;->addCompileString([BIIIZ)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract addCompileString([BIIIZ)V
.end method

.method final compile()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/joni/Compiler;->prepare()V

    .line 51
    iget-object v0, p0, Lorg/joni/Compiler;->analyser:Lorg/joni/Analyser;

    iget-object v0, v0, Lorg/joni/Analyser;->root:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/Compiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 52
    invoke-virtual {p0}, Lorg/joni/Compiler;->finish()V

    .line 53
    return-void
.end method

.method protected abstract compileAltNode(Lorg/joni/ast/ConsAltNode;)V
.end method

.method protected abstract compileAnchorNode(Lorg/joni/ast/AnchorNode;)V
.end method

.method protected abstract compileAnyCharNode()V
.end method

.method protected abstract compileBackrefNode(Lorg/joni/ast/BackRefNode;)V
.end method

.method protected abstract compileCClassNode(Lorg/joni/ast/CClassNode;)V
.end method

.method protected abstract compileCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V
.end method

.method protected abstract compileCTypeNode(Lorg/joni/ast/CTypeNode;)V
.end method

.method protected abstract compileCallNode(Lorg/joni/ast/CallNode;)V
.end method

.method protected abstract compileEncloseNode(Lorg/joni/ast/EncloseNode;)V
.end method

.method protected abstract compileNonCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V
.end method

.method protected abstract compileOptionNode(Lorg/joni/ast/EncloseNode;)V
.end method

.method protected final compileTree(Lorg/joni/ast/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 175
    const-string v3, "internal parser error (bug)"

    invoke-virtual {p0, v3}, Lorg/joni/Compiler;->newInternalException(Ljava/lang/String;)V

    .line 177
    .end local p1    # "node":Lorg/joni/ast/Node;
    :goto_0
    return-void

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    move-object v1, p1

    .line 110
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    .line 112
    .local v1, "lin":Lorg/joni/ast/ConsAltNode;
    :cond_0
    iget-object v3, v1, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v3}, Lorg/joni/Compiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 113
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    .end local v1    # "lin":Lorg/joni/ast/ConsAltNode;
    :pswitch_1
    check-cast p1, Lorg/joni/ast/ConsAltNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileAltNode(Lorg/joni/ast/ConsAltNode;)V

    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_2
    move-object v2, p1

    .line 121
    check-cast v2, Lorg/joni/ast/StringNode;

    .line 122
    .local v2, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual {v2}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-direct {p0, v2}, Lorg/joni/Compiler;->compileStringRawNode(Lorg/joni/ast/StringNode;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v2}, Lorg/joni/Compiler;->compileStringNode(Lorg/joni/ast/StringNode;)V

    goto :goto_0

    .line 130
    .end local v2    # "sn":Lorg/joni/ast/StringNode;
    :pswitch_3
    check-cast p1, Lorg/joni/ast/CClassNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileCClassNode(Lorg/joni/ast/CClassNode;)V

    goto :goto_0

    .line 134
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_4
    check-cast p1, Lorg/joni/ast/CTypeNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileCTypeNode(Lorg/joni/ast/CTypeNode;)V

    goto :goto_0

    .line 138
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_5
    invoke-virtual {p0}, Lorg/joni/Compiler;->compileAnyCharNode()V

    goto :goto_0

    .line 142
    :pswitch_6
    check-cast p1, Lorg/joni/ast/BackRefNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileBackrefNode(Lorg/joni/ast/BackRefNode;)V

    goto :goto_0

    .line 147
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_7
    check-cast p1, Lorg/joni/ast/CallNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileCallNode(Lorg/joni/ast/CallNode;)V

    goto :goto_0

    .line 156
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_8
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileNonCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V

    goto :goto_0

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_9
    move-object v0, p1

    .line 161
    check-cast v0, Lorg/joni/ast/EncloseNode;

    .line 162
    .local v0, "enode":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v0}, Lorg/joni/ast/EncloseNode;->isOption()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {p0, v0}, Lorg/joni/Compiler;->compileOptionNode(Lorg/joni/ast/EncloseNode;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0, v0}, Lorg/joni/Compiler;->compileEncloseNode(Lorg/joni/ast/EncloseNode;)V

    goto :goto_0

    .line 170
    .end local v0    # "enode":Lorg/joni/ast/EncloseNode;
    :pswitch_a
    check-cast p1, Lorg/joni/ast/AnchorNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileAnchorNode(Lorg/joni/ast/AnchorNode;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method protected final compileTreeNTimes(Lorg/joni/ast/Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "n"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/joni/Compiler;->compileTree(Lorg/joni/ast/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method protected abstract finish()V
.end method

.method protected newInternalException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Lorg/joni/exception/InternalException;

    invoke-direct {v0, p1}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newSyntaxException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lorg/joni/exception/SyntaxException;

    invoke-direct {v0, p1}, Lorg/joni/exception/SyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract prepare()V
.end method
