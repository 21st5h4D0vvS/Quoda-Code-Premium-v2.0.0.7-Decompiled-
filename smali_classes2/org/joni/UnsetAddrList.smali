.class public final Lorg/joni/UnsetAddrList;
.super Ljava/lang/Object;
.source "UnsetAddrList.java"


# instance fields
.field num:I

.field offsets:[I

.field targets:[Lorg/joni/ast/Node;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, p1, [Lorg/joni/ast/Node;

    iput-object v0, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    .line 34
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    .line 35
    return-void
.end method


# virtual methods
.method public add(ILorg/joni/ast/Node;)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "node"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v4, 0x0

    .line 38
    iget v2, p0, Lorg/joni/UnsetAddrList;->num:I

    iget-object v3, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 39
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lorg/joni/ast/Node;

    .line 40
    .local v1, "ttmp":[Lorg/joni/ast/Node;
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    iget v3, p0, Lorg/joni/UnsetAddrList;->num:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iput-object v1, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    .line 42
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    .line 43
    .local v0, "otmp":[I
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    iget v3, p0, Lorg/joni/UnsetAddrList;->num:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v0, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    .line 46
    .end local v0    # "otmp":[I
    .end local v1    # "ttmp":[Lorg/joni/ast/Node;
    :cond_0
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    iget v3, p0, Lorg/joni/UnsetAddrList;->num:I

    aput-object p2, v2, v3

    .line 47
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    iget v3, p0, Lorg/joni/UnsetAddrList;->num:I

    aput p1, v2, v3

    .line 49
    iget v2, p0, Lorg/joni/UnsetAddrList;->num:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/UnsetAddrList;->num:I

    .line 50
    return-void
.end method

.method public fix(Lorg/joni/Regex;)V
    .locals 5
    .param p1, "regex"    # Lorg/joni/Regex;

    .prologue
    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/joni/UnsetAddrList;->num:I

    if-ge v1, v2, :cond_1

    .line 54
    iget-object v2, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    aget-object v0, v2, v1

    check-cast v0, Lorg/joni/ast/EncloseNode;

    .line 55
    .local v0, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v0}, Lorg/joni/ast/EncloseNode;->isAddrFixed()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/joni/exception/InternalException;

    const-string v3, "internal parser error (bug)"

    invoke-direct {v2, v3}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v2, p1, Lorg/joni/Regex;->code:[I

    iget-object v3, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    aget v3, v3, v1

    iget v4, v0, Lorg/joni/ast/EncloseNode;->callAddr:I

    aput v4, v2, v3

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "en":Lorg/joni/ast/EncloseNode;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v1, "value":Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/joni/UnsetAddrList;->num:I

    if-lez v2, :cond_0

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/joni/UnsetAddrList;->num:I

    if-ge v0, v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/UnsetAddrList;->offsets:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/UnsetAddrList;->targets:[Lorg/joni/ast/Node;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/joni/ast/Node;->getAddressName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
