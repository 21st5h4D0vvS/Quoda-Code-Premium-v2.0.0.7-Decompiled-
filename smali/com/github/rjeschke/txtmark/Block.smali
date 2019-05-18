.class Lcom/github/rjeschke/txtmark/Block;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rjeschke/txtmark/Block$1;
    }
.end annotation


# instance fields
.field public blockTail:Lcom/github/rjeschke/txtmark/Block;

.field public blocks:Lcom/github/rjeschke/txtmark/Block;

.field public hlDepth:I

.field public id:Ljava/lang/String;

.field public lineTail:Lcom/github/rjeschke/txtmark/Line;

.field public lines:Lcom/github/rjeschke/txtmark/Line;

.field public meta:Ljava/lang/String;

.field public next:Lcom/github/rjeschke/txtmark/Block;

.field public type:Lcom/github/rjeschke/txtmark/BlockType;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x6

    sget-object v0, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    const/4 v2, 0x1

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    const/4 v2, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v0, ""

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x2
.end method


# virtual methods
.method public appendLine(Lcom/github/rjeschke/txtmark/Line;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    if-nez v0, :cond_0

    const/4 v2, 0x5

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v2, 0x2

    :cond_0
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v1, p1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    iput-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v0, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    iput-boolean v0, p1, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-object p1, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x7

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public expandListParagraphs()V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    if-eq v3, v4, :cond_1

    const/4 v5, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v5, 0x4

    :cond_1
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x0

    iget-object v3, v2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v3, v4, :cond_3

    const/4 v5, 0x1

    iget-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v5, 0x4

    :goto_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    const/4 v5, 0x0

    iget-object v3, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v3, v4, :cond_2

    const/4 v5, 0x5

    const/4 v0, 0x1

    const/4 v5, 0x2

    :cond_2
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_1

    const/4 v5, 0x4

    const/4 v5, 0x3

    :cond_3
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_0

    const/4 v3, 0x6

    const/4 v5, 0x3

    :cond_4
    if-eqz v0, :cond_0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v5, 0x6

    :goto_2
    if-eqz v2, :cond_0

    const/4 v5, 0x1

    iget-object v3, v2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v3, v4, :cond_6

    const/4 v5, 0x1

    iget-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v5, 0x6

    :goto_3
    if-eqz v1, :cond_6

    const/4 v5, 0x7

    iget-object v3, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v3, v4, :cond_5

    const/4 v5, 0x5

    sget-object v3, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v3, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v5, 0x4

    :cond_5
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_3

    const/4 v3, 0x5

    const/4 v5, 0x1

    :cond_6
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_2

    const/4 v2, 0x3
.end method

.method public hasLines()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public removeBlockQuotePrefix()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v4, 0x5

    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, 0x4

    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_1

    const/4 v4, 0x0

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    const/4 v4, 0x0

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v1, v2, 0x1

    const/4 v4, 0x1

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x3

    :cond_0
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Line;->initLeading()V

    const/4 v4, 0x5

    :cond_1
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v1, 0x1

    const/4 v4, 0x2

    :cond_2
    nop

    return-void

    const/4 v3, 0x2
.end method

.method public removeLeadingEmptyLines()Z
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x7

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p0, v0}, Lcom/github/rjeschke/txtmark/Block;->removeLine(Lcom/github/rjeschke/txtmark/Line;)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x7

    const/4 v1, 0x1

    goto :goto_0

    const/4 v0, 0x3

    const/4 v3, 0x2

    :cond_0
    return v1

    const/4 v2, 0x3
.end method

.method public removeLine(Lcom/github/rjeschke/txtmark/Line;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-nez v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x5

    :goto_0
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-nez v0, :cond_1

    const/4 v2, 0x4

    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x2

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x3

    const/4 v2, 0x2

    :cond_0
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x6

    :cond_1
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_1

    const/4 v1, 0x7
.end method

.method public removeListIndent(Z)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v4, 0x5

    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, 0x0

    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_0

    const/4 v4, 0x3

    sget-object v1, Lcom/github/rjeschke/txtmark/Block$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/LineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v4, 0x3

    :goto_1
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Line;->initLeading()V

    const/4 v4, 0x7

    :cond_0
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x1

    :pswitch_0
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_1

    const/4 v3, 0x7

    const/4 v4, 0x5

    :pswitch_1
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_1

    const/4 v3, 0x3

    const/4 v4, 0x3

    :cond_1
    nop

    return-void

    const/4 v4, 0x5

    const/4 v4, 0x4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeSurroundingEmptyLines()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Block;->removeTrailingEmptyLines()V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public removeTrailingEmptyLines()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x5

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/github/rjeschke/txtmark/Block;->removeLine(Lcom/github/rjeschke/txtmark/Line;)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/Block;

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Block;-><init>()V

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x5

    iput-object p1, v0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x7

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x3

    iput-object v2, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-nez v1, :cond_0

    const/4 v3, 0x2

    iput-object v2, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x3

    :goto_0
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    if-nez v1, :cond_1

    const/4 v3, 0x3

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v3, 0x4

    :goto_1
    return-object v0

    const/4 v1, 0x3

    const/4 v3, 0x6

    :cond_0
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v0, 0x4

    const/4 v3, 0x3

    :cond_1
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    iput-object v0, v1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    const/4 v3, 0x7

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_1

    const/4 v3, 0x3
.end method

.method public transfromHeadline()V
    .locals 9

    const/4 v8, 0x4

    const/16 v7, 0x23

    const/16 v6, 0x20

    const/4 v8, 0x7

    iget v4, p0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    if-lez v4, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x1

    const/4 v8, 0x0

    :cond_1
    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v8, 0x7

    iget-boolean v4, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v4, :cond_0

    const/4 v8, 0x2

    iget v3, v2, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v8, 0x3

    :goto_1
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v8, 0x6

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v7, 0x4

    const/4 v8, 0x0

    :cond_2
    :goto_2
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v8, 0x5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v8, 0x0

    const/4 v8, 0x7

    :cond_3
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v8, 0x6

    :goto_3
    const/4 v4, 0x6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    goto :goto_0

    const/4 v3, 0x2

    const/4 v8, 0x2

    :cond_4
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v2, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x1

    const/4 v8, 0x6

    :goto_4
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5

    const/4 v8, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    const/4 v1, 0x0

    const/4 v8, 0x0

    :cond_5
    :goto_5
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_6

    const/4 v8, 0x5

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    const/4 v7, 0x0

    const/4 v8, 0x5

    :cond_6
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v4, 0x0

    iput v4, v2, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    iput v4, v2, Lcom/github/rjeschke/txtmark/Line;->leading:I

    goto :goto_3

    const/4 v8, 0x5
.end method
