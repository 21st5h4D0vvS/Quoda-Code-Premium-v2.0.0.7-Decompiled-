.class public final Lorg/joni/ast/StringNode;
.super Lorg/joni/ast/Node;
.source "StringNode.java"

# interfaces
.implements Lorg/joni/constants/StringType;


# static fields
.field public static final EMPTY:Lorg/joni/ast/StringNode;

.field private static final NODE_STR_BUF_SIZE:I = 0x18

.field private static final NODE_STR_MARGIN:I = 0x10


# instance fields
.field public bytes:[B

.field public end:I

.field public flag:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 30
    new-instance v0, Lorg/joni/ast/StringNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/joni/ast/StringNode;-><init>([BII)V

    sput-object v0, Lorg/joni/ast/StringNode;->EMPTY:Lorg/joni/ast/StringNode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    .line 39
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/joni/ast/StringNode;->bytes:[B

    .line 40
    return-void
.end method

.method public constructor <init>(B)V
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/joni/ast/StringNode;-><init>()V

    .line 51
    iget-object v0, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v1, p0, Lorg/joni/ast/StringNode;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ast/StringNode;->end:I

    aput-byte p1, v0, v1

    .line 52
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    .line 44
    iput p2, p0, Lorg/joni/ast/StringNode;->p:I

    .line 45
    iput p3, p0, Lorg/joni/ast/StringNode;->end:I

    .line 46
    invoke-virtual {p0}, Lorg/joni/ast/StringNode;->setShared()V

    .line 47
    return-void
.end method

.method private modifyEnsure(I)V
    .locals 7
    .param p1, "ahead"    # I

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-virtual {p0}, Lorg/joni/ast/StringNode;->isShared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v2, v3

    add-int v0, v2, p1

    .line 71
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x10

    new-array v1, v2, [B

    .line 72
    .local v1, "tmp":[B
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    iget v4, p0, Lorg/joni/ast/StringNode;->end:I

    iget v5, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    .line 74
    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/joni/ast/StringNode;->end:I

    .line 75
    iput v6, p0, Lorg/joni/ast/StringNode;->p:I

    .line 76
    invoke-virtual {p0}, Lorg/joni/ast/StringNode;->clearShared()V

    .line 80
    .end local v0    # "len":I
    .end local v1    # "tmp":[B
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joni/ast/StringNode;->ensure(I)V

    goto :goto_0
.end method


# virtual methods
.method public canBeSplit(Lorg/jcodings/Encoding;)Z
    .locals 4
    .param p1, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/4 v0, 0x0

    .line 130
    iget v1, p0, Lorg/joni/ast/StringNode;->end:I

    iget v2, p0, Lorg/joni/ast/StringNode;->p:I

    if-le v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v2, p0, Lorg/joni/ast/StringNode;->p:I

    iget v3, p0, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 133
    :cond_0
    return v0
.end method

.method public cat(B)V
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joni/ast/StringNode;->modifyEnsure(I)V

    .line 152
    iget-object v0, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v1, p0, Lorg/joni/ast/StringNode;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/joni/ast/StringNode;->end:I

    aput-byte p1, v0, v1

    .line 153
    return-void
.end method

.method public cat([BII)V
    .locals 3
    .param p1, "cat"    # [B
    .param p2, "catP"    # I
    .param p3, "catEnd"    # I

    .prologue
    .line 144
    sub-int v0, p3, p2

    .line 145
    .local v0, "len":I
    invoke-direct {p0, v0}, Lorg/joni/ast/StringNode;->modifyEnsure(I)V

    .line 146
    iget-object v1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v1, p0, Lorg/joni/ast/StringNode;->end:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/joni/ast/StringNode;->end:I

    .line 148
    return-void
.end method

.method public catCode(ILorg/jcodings/Encoding;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 156
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/joni/ast/StringNode;->ensure(I)V

    .line 157
    iget v0, p0, Lorg/joni/ast/StringNode;->end:I

    iget-object v1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual {p2, p1, v1, v2}, Lorg/jcodings/Encoding;->codeToMbc(I[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ast/StringNode;->end:I

    .line 158
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lorg/joni/ast/StringNode;->bytes:[B

    array-length v0, v0

    if-le v0, v2, :cond_0

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/joni/ast/StringNode;->bytes:[B

    .line 162
    :cond_0
    iput v1, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 163
    iput v1, p0, Lorg/joni/ast/StringNode;->end:I

    iput v1, p0, Lorg/joni/ast/StringNode;->p:I

    .line 164
    return-void
.end method

.method public clearAmbig()V
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 184
    return-void
.end method

.method public clearDontGetOptInfo()V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 196
    return-void
.end method

.method public clearRaw()V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 172
    return-void
.end method

.method public clearShared()V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 208
    return-void
.end method

.method public ensure(I)V
    .locals 7
    .param p1, "ahead"    # I

    .prologue
    .line 58
    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v2, v3

    add-int v0, v2, p1

    .line 59
    .local v0, "len":I
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 60
    add-int/lit8 v2, v0, 0x10

    new-array v1, v2, [B

    .line 61
    .local v1, "tmp":[B
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/joni/ast/StringNode;->end:I

    iget v6, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    .line 64
    .end local v1    # "tmp":[B
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "String"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isAmbig()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDontGetOptInfo()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lorg/joni/ast/StringNode;->end:I

    iget v1, p0, Lorg/joni/ast/StringNode;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public length(Lorg/jcodings/Encoding;)I
    .locals 3
    .param p1, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v1, p0, Lorg/joni/ast/StringNode;->p:I

    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jcodings/Encoding;->strLength([BII)I

    move-result v0

    return v0
.end method

.method public set([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 137
    iput-object p1, p0, Lorg/joni/ast/StringNode;->bytes:[B

    .line 138
    iput p2, p0, Lorg/joni/ast/StringNode;->p:I

    .line 139
    iput p3, p0, Lorg/joni/ast/StringNode;->end:I

    .line 140
    invoke-virtual {p0}, Lorg/joni/ast/StringNode;->setShared()V

    .line 141
    return-void
.end method

.method public setAmbig()V
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 180
    return-void
.end method

.method public setDontGetOptInfo()V
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 192
    return-void
.end method

.method public setRaw()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 168
    return-void
.end method

.method public setShared()V
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/joni/ast/StringNode;->flag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/joni/ast/StringNode;->flag:I

    .line 204
    return-void
.end method

.method public splitLastChar(Lorg/jcodings/Encoding;)Lorg/joni/ast/StringNode;
    .locals 6
    .param p1, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "n":Lorg/joni/ast/StringNode;
    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    if-le v2, v3, :cond_1

    .line 119
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v3, p0, Lorg/joni/ast/StringNode;->p:I

    iget v4, p0, Lorg/joni/ast/StringNode;->end:I

    iget v5, p0, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v1

    .line 120
    .local v1, "prev":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Lorg/joni/ast/StringNode;->p:I

    if-le v1, v2, :cond_1

    .line 121
    new-instance v0, Lorg/joni/ast/StringNode;

    .end local v0    # "n":Lorg/joni/ast/StringNode;
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    iget v3, p0, Lorg/joni/ast/StringNode;->end:I

    invoke-direct {v0, v2, v1, v3}, Lorg/joni/ast/StringNode;-><init>([BII)V

    .line 122
    .restart local v0    # "n":Lorg/joni/ast/StringNode;
    invoke-virtual {p0}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/joni/ast/StringNode;->setRaw()V

    .line 123
    :cond_0
    iput v1, p0, Lorg/joni/ast/StringNode;->end:I

    .line 126
    .end local v1    # "prev":I
    :cond_1
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "value":Ljava/lang/StringBuilder;
    const-string v2, "\n  bytes: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v0, p0, Lorg/joni/ast/StringNode;->p:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/joni/ast/StringNode;->end:I

    if-ge v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    .line 98
    iget-object v2, p0, Lorg/joni/ast/StringNode;->bytes:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const-string v2, "[0x%02x]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/joni/ast/StringNode;->bytes:[B

    aget-byte v5, v5, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :cond_1
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
