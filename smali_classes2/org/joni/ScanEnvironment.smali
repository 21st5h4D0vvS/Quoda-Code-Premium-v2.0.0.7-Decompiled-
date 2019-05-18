.class public final Lorg/joni/ScanEnvironment;
.super Ljava/lang/Object;
.source "ScanEnvironment.java"


# static fields
.field private static final SCANENV_MEMNODES_SIZE:I = 0x8


# instance fields
.field backrefedMem:I

.field btMemEnd:I

.field btMemStart:I

.field captureHistory:I

.field final caseFoldFlag:I

.field combExpMaxRegNum:I

.field currMaxRegNum:I

.field public final enc:Lorg/jcodings/Encoding;

.field hasRecursion:Z

.field public memNodes:[Lorg/joni/ast/Node;

.field numCall:I

.field numCombExpCheck:I

.field public numMem:I

.field numNamed:I

.field numPrecReadNotNodes:I

.field option:I

.field precReadNotNodes:[Lorg/joni/ast/Node;

.field public final reg:Lorg/joni/Regex;

.field public final syntax:Lorg/joni/Syntax;

.field unsetAddrList:Lorg/joni/UnsetAddrList;


# direct methods
.method public constructor <init>(Lorg/joni/Regex;Lorg/joni/Syntax;)V
    .locals 1
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "syntax"    # Lorg/joni/Syntax;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/joni/ScanEnvironment;->reg:Lorg/joni/Regex;

    .line 63
    iget v0, p1, Lorg/joni/Regex;->options:I

    iput v0, p0, Lorg/joni/ScanEnvironment;->option:I

    .line 64
    iget v0, p1, Lorg/joni/Regex;->caseFoldFlag:I

    iput v0, p0, Lorg/joni/ScanEnvironment;->caseFoldFlag:I

    .line 65
    iget-object v0, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iput-object v0, p0, Lorg/joni/ScanEnvironment;->enc:Lorg/jcodings/Encoding;

    .line 66
    iput-object p2, p0, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    .line 67
    return-void
.end method


# virtual methods
.method public addMemEntry()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget v1, p0, Lorg/joni/ScanEnvironment;->numMem:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ScanEnvironment;->numMem:I

    if-nez v1, :cond_1

    .line 93
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/joni/ast/Node;

    iput-object v1, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    .line 100
    :cond_0
    :goto_0
    iget v1, p0, Lorg/joni/ScanEnvironment;->numMem:I

    return v1

    .line 94
    :cond_1
    iget v1, p0, Lorg/joni/ScanEnvironment;->numMem:I

    iget-object v2, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/joni/ast/Node;

    .line 96
    .local v0, "tmp":[Lorg/joni/ast/Node;
    iget-object v1, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    iget-object v2, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iput-object v0, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    goto :goto_0
.end method

.method ccEscWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->warnCCOpNotEscaped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->backSlashEscapeInCC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->reg:Lorg/joni/Regex;

    iget-object v0, v0, Lorg/joni/Regex;->warnings:Lorg/joni/WarnCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character class has \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' without escape"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lorg/joni/BitStatus;->bsClear()I

    move-result v0

    iput v0, p0, Lorg/joni/ScanEnvironment;->captureHistory:I

    .line 71
    invoke-static {}, Lorg/joni/BitStatus;->bsClear()I

    move-result v0

    iput v0, p0, Lorg/joni/ScanEnvironment;->btMemStart:I

    .line 72
    invoke-static {}, Lorg/joni/BitStatus;->bsClear()I

    move-result v0

    iput v0, p0, Lorg/joni/ScanEnvironment;->btMemEnd:I

    .line 73
    invoke-static {}, Lorg/joni/BitStatus;->bsClear()I

    move-result v0

    iput v0, p0, Lorg/joni/ScanEnvironment;->backrefedMem:I

    .line 75
    iput v1, p0, Lorg/joni/ScanEnvironment;->numCall:I

    .line 76
    iput v1, p0, Lorg/joni/ScanEnvironment;->numMem:I

    .line 78
    iput v1, p0, Lorg/joni/ScanEnvironment;->numNamed:I

    .line 80
    iput-object v2, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    .line 82
    iput v1, p0, Lorg/joni/ScanEnvironment;->numCombExpCheck:I

    .line 83
    iput v1, p0, Lorg/joni/ScanEnvironment;->combExpMaxRegNum:I

    .line 84
    iput v1, p0, Lorg/joni/ScanEnvironment;->currMaxRegNum:I

    .line 85
    iput-boolean v1, p0, Lorg/joni/ScanEnvironment;->hasRecursion:Z

    .line 87
    iput v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    .line 88
    iput-object v2, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    .line 89
    return-void
.end method

.method closeBracketWithoutEscapeWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->warnCCOpNotEscaped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->reg:Lorg/joni/Regex;

    iget-object v0, v0, Lorg/joni/Regex;->warnings:Lorg/joni/WarnCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regular expression has \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' without escape"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/joni/WarnCallback;->warn(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method public convertBackslashValue(I)I
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->opEscControlChars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 154
    .end local p1    # "c":I
    :cond_0
    :goto_0
    return p1

    .line 140
    .restart local p1    # "c":I
    :sswitch_0
    const/16 p1, 0xa

    goto :goto_0

    .line 141
    :sswitch_1
    const/16 p1, 0x9

    goto :goto_0

    .line 142
    :sswitch_2
    const/16 p1, 0xd

    goto :goto_0

    .line 143
    :sswitch_3
    const/16 p1, 0xc

    goto :goto_0

    .line 144
    :sswitch_4
    const/4 p1, 0x7

    goto :goto_0

    .line 145
    :sswitch_5
    const/16 p1, 0x8

    goto :goto_0

    .line 146
    :sswitch_6
    const/16 p1, 0x1b

    goto :goto_0

    .line 148
    :sswitch_7
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->op2EscVVtab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_4
        0x62 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_3
        0x6e -> :sswitch_0
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_7
    .end sparse-switch
.end method

.method public currentPrecReadNotNode()Lorg/joni/ast/Node;
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    iget v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popPrecReadNotNode(Lorg/joni/ast/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    iget v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    iget v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 126
    iget v0, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    .line 128
    :cond_0
    return-void
.end method

.method public pushPrecReadNotNode(Lorg/joni/ast/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v3, 0x0

    .line 112
    iget v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    .line 113
    iget-object v1, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    if-nez v1, :cond_1

    .line 114
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/joni/ast/Node;

    iput-object v1, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    iget v2, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 121
    return-void

    .line 115
    :cond_1
    iget v1, p0, Lorg/joni/ScanEnvironment;->numPrecReadNotNodes:I

    iget-object v2, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/joni/ast/Node;

    .line 117
    .local v0, "tmp":[Lorg/joni/ast/Node;
    iget-object v1, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    iget-object v2, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v0, p0, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    goto :goto_0
.end method

.method public setMemNode(ILorg/joni/ast/Node;)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 104
    iget v0, p0, Lorg/joni/ScanEnvironment;->numMem:I

    if-lt v0, p1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    aput-object p2, v0, p1

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Lorg/joni/exception/InternalException;

    const-string v1, "internal parser error (bug)"

    invoke-direct {v0, v1}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
