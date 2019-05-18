.class final Lorg/joni/ApplyCaseFold;
.super Ljava/lang/Object;
.source "ApplyCaseFold.java"

# interfaces
.implements Lorg/jcodings/ApplyAllCaseFoldFunction;


# static fields
.field static final INSTANCE:Lorg/joni/ApplyCaseFold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lorg/joni/ApplyCaseFold;

    invoke-direct {v0}, Lorg/joni/ApplyCaseFold;-><init>()V

    sput-object v0, Lorg/joni/ApplyCaseFold;->INSTANCE:Lorg/joni/ApplyCaseFold;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I[IILjava/lang/Object;)V
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # [I
    .param p3, "length"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 32
    move-object v1, p4

    check-cast v1, Lorg/joni/ApplyCaseFoldArg;

    .line 34
    .local v1, "arg":Lorg/joni/ApplyCaseFoldArg;
    iget-object v5, v1, Lorg/joni/ApplyCaseFoldArg;->env:Lorg/joni/ScanEnvironment;

    .line 35
    .local v5, "env":Lorg/joni/ScanEnvironment;
    iget-object v4, v5, Lorg/joni/ScanEnvironment;->enc:Lorg/jcodings/Encoding;

    .line 36
    .local v4, "enc":Lorg/jcodings/Encoding;
    iget-object v3, v1, Lorg/joni/ApplyCaseFoldArg;->cc:Lorg/joni/ast/CClassNode;

    .line 37
    .local v3, "cc":Lorg/joni/ast/CClassNode;
    iget-object v2, v3, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    .line 39
    .local v2, "bs":Lorg/joni/BitSet;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_5

    .line 40
    invoke-virtual {v3, v4, p1}, Lorg/joni/ast/CClassNode;->isCodeInCC(Lorg/jcodings/Encoding;I)Z

    move-result v7

    .line 43
    .local v7, "inCC":Z
    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    if-nez v7, :cond_3

    invoke-virtual {v3}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 44
    :cond_1
    invoke-virtual {v4}, Lorg/jcodings/Encoding;->minLength()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_2

    const/4 v9, 0x0

    aget v9, p2, v9

    const/16 v10, 0x100

    if-lt v9, v10, :cond_4

    .line 45
    :cond_2
    const/4 v9, 0x0

    aget v9, p2, v9

    const/4 v10, 0x0

    aget v10, p2, v10

    invoke-virtual {v3, v5, v9, v10}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    .line 91
    .end local v7    # "inCC":Z
    :cond_3
    :goto_0
    return-void

    .line 48
    .restart local v7    # "inCC":Z
    :cond_4
    const/4 v9, 0x0

    aget v9, p2, v9

    invoke-virtual {v2, v9}, Lorg/joni/BitSet;->set(I)V

    goto :goto_0

    .line 67
    .end local v7    # "inCC":Z
    :cond_5
    invoke-virtual {v3, v4, p1}, Lorg/joni/ast/CClassNode;->isCodeInCC(Lorg/jcodings/Encoding;I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v9

    if-nez v9, :cond_3

    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, "node":Lorg/joni/ast/StringNode;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, p3, :cond_7

    .line 70
    if-nez v6, :cond_6

    .line 71
    new-instance v8, Lorg/joni/ast/StringNode;

    .end local v8    # "node":Lorg/joni/ast/StringNode;
    invoke-direct {v8}, Lorg/joni/ast/StringNode;-><init>()V

    .line 74
    .restart local v8    # "node":Lorg/joni/ast/StringNode;
    invoke-virtual {v8}, Lorg/joni/ast/StringNode;->setAmbig()V

    .line 76
    :cond_6
    aget v9, p2, v6

    invoke-virtual {v8, v9, v4}, Lorg/joni/ast/StringNode;->catCode(ILorg/jcodings/Encoding;)V

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 79
    :cond_7
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v0

    .line 81
    .local v0, "alt":Lorg/joni/ast/ConsAltNode;
    iget-object v9, v1, Lorg/joni/ApplyCaseFoldArg;->tail:Lorg/joni/ast/ConsAltNode;

    if-nez v9, :cond_8

    .line 82
    iput-object v0, v1, Lorg/joni/ApplyCaseFoldArg;->altRoot:Lorg/joni/ast/ConsAltNode;

    .line 86
    :goto_2
    iput-object v0, v1, Lorg/joni/ApplyCaseFoldArg;->tail:Lorg/joni/ast/ConsAltNode;

    goto :goto_0

    .line 84
    :cond_8
    iget-object v9, v1, Lorg/joni/ApplyCaseFoldArg;->tail:Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v9, v0}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    goto :goto_2
.end method
