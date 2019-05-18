.class public Lcom/henrythompson/quoda/snippet/Tabstop;
.super Ljava/lang/Object;


# instance fields
.field private mCodeCompletions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

.field private mTabIndex:I


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mTabIndex:I

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, 0x2

    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v1, 0x3

    :cond_0
    iput-object p0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    goto :goto_0

    const/4 v0, 0x4
.end method

.method private getSnippetContainingRange(III)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 7

    const/4 v6, 0x5

    const/4 v6, 0x1

    move v1, p1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x2

    instance-of v4, v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v4, :cond_3

    const/4 v6, 0x7

    if-gt v1, p2, :cond_1

    const/4 v6, 0x5

    move v3, v1

    move-object v4, v0

    const/4 v6, 0x6

    check-cast v4, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v4

    add-int/2addr v1, v4

    const/4 v6, 0x1

    if-lt v1, p3, :cond_0

    const/4 v6, 0x4

    check-cast v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {v0, v3, p2, p3}, Lcom/henrythompson/quoda/snippet/Tabstop;->getSnippetContainingRange(III)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v2

    const/4 v6, 0x5

    if-nez v2, :cond_2

    const/4 v6, 0x1

    :cond_1
    :goto_0
    return-object p0

    const/4 v3, 0x3

    const/4 v6, 0x5

    :cond_2
    check-cast v2, Lcom/henrythompson/quoda/snippet/Tabstop;

    move-object p0, v2

    goto :goto_0

    const/4 v5, 0x1

    const/4 v6, 0x3

    :cond_3
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v6, 0x3

    if-gt v1, p2, :cond_1

    const/4 v6, 0x7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    const/4 v6, 0x6

    if-le v1, p3, :cond_0

    goto :goto_0

    const/4 v5, 0x5
.end method

.method private getTabstopForOffset(II)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 11

    const/4 v10, 0x1

    const/4 v10, 0x7

    const/4 v2, 0x0

    const/4 v10, 0x5

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x3

    instance-of v8, v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v8, :cond_0

    move-object v6, v1

    const/4 v10, 0x5

    check-cast v6, Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v10, 0x1

    invoke-virtual {v6}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v10, 0x2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, p1, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/snippet/Tabstop;->getEnd(I)I

    move-result v0

    const/4 v10, 0x4

    add-int/lit8 v9, v0, 0x1

    if-lt v9, p1, :cond_2

    const/4 v10, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, p2, :cond_2

    const/4 v10, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v10, 0x5

    move-object v2, v6

    const/4 v10, 0x2

    :cond_2
    invoke-direct {v6, p1, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabstopForOffset(II)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v5

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    const/4 v10, 0x6

    move-object v2, v5

    goto :goto_1

    const/4 v4, 0x4

    const/4 v10, 0x4

    :cond_3
    invoke-virtual {v6, p1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabstopForOffset(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    goto :goto_0

    const/4 v0, 0x3

    const/4 v10, 0x1

    :cond_4
    return-object v2

    const/4 v0, 0x7
.end method

.method private performLowercaseStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    const/4 v3, 0x7

    :goto_0
    return-object p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/4 v3, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v0, 0x4
.end method

.method private performUpdatePosition(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mPositions:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v4, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mPositions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    const/4 v0, 0x4

    const/4 v4, 0x7

    :cond_2
    instance-of v3, v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v3, :cond_1

    move-object v1, v0

    const/4 v4, 0x0

    check-cast v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v4, 0x0

    invoke-direct {v1, p1}, Lcom/henrythompson/quoda/snippet/Tabstop;->performUpdatePosition(I)V

    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x3

    :cond_3
    nop

    return-void

    const/4 v3, 0x2
.end method

.method private performUppercaseStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return-object p1

    const/4 v1, 0x6

    const/4 v3, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v0, 0x0
.end method

.method private updatePositions()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eq v0, p0, :cond_0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->updatePositions()V

    const/4 v1, 0x0

    :goto_0
    nop

    return-void

    const/4 v1, 0x5

    const/4 v1, 0x7

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/Tabstop;->clearPositions()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->performUpdatePosition(I)V

    goto :goto_0

    const/4 v1, 0x6
.end method


# virtual methods
.method public addCodeCompletion(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v3, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    const/4 v3, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    nop

    return-void

    const/4 v2, 0x4
.end method

.method public addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public addPart(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public clearCodeCompletions()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public clearParts()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public clearPositions()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mPositions:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    instance-of v2, v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    check-cast v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->clearPositions()V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v3, 0x2

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x7

    :cond_2
    nop

    return-void

    const/4 v3, 0x3
.end method

.method public getCodeCompletion(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    :goto_0
    return-object v0

    const/4 v0, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x1
.end method

.method public getCodeCompletions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getEnd(I)I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v0

    add-int/2addr v0, p1

    return v0

    const/4 v0, 0x2
.end method

.method public getLength()I
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    const/4 v0, 0x3

    const/4 v4, 0x4

    :cond_1
    instance-of v3, v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    check-cast v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    const/4 v0, 0x7

    const/4 v4, 0x2

    :cond_2
    return v0

    const/4 v0, 0x5
.end method

.method public getPartForOffset(I)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x5

    const/4 v6, 0x7

    const/4 v1, 0x0

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x3

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v3, v0

    const/4 v6, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    const/4 v6, 0x3

    if-lt v1, p1, :cond_0

    const/4 v6, 0x5

    :goto_0
    return-object v3

    const/4 v0, 0x0

    :cond_1
    move-object v2, v0

    const/4 v6, 0x6

    check-cast v2, Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v6, 0x6

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v5

    add-int/2addr v1, v5

    const/4 v6, 0x6

    if-lt v1, p1, :cond_0

    move-object v3, v2

    const/4 v6, 0x1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v6, 0x2

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public getParts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x3
.end method

.method public getSnippetContainingRange(II)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getSnippetContainingRange(III)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getTabIndex()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mTabIndex:I

    return v0

    const/4 v1, 0x3
.end method

.method public getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 6

    const/4 v5, 0x2

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x7

    instance-of v4, v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v4, :cond_0

    move-object v2, v0

    const/4 v5, 0x4

    check-cast v2, Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v5, 0x7

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v5, 0x6

    :goto_0
    return-object v2

    const/4 v5, 0x3

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v1

    const/4 v5, 0x7

    if-eqz v1, :cond_0

    move-object v2, v1

    const/4 v5, 0x2

    goto :goto_0

    const/4 v0, 0x4

    const/4 v5, 0x6

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public getTabStopStarts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mPositions:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getTabstopForOffset(I)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabstopForOffset(II)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    return-object v0

    const/4 v1, 0x6
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/snippet/Tabstop;->updatePositions()V

    const/4 v4, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_1
    instance-of v3, v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    check-cast v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    const/4 v1, 0x4

    const/4 v4, 0x2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const/4 v2, 0x3
.end method

.method public replace(IILjava/lang/String;)V
    .locals 19

    const/4 v14, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move v5, v14

    const/4 v11, 0x0

    instance-of v0, v13, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    :cond_0
    :goto_1
    add-int v17, v14, v11

    move/from16 v0, v17

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    move v4, v6

    :cond_1
    move v8, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move v9, v14

    const/4 v11, 0x0

    instance-of v0, v13, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v11, v17

    :cond_2
    :goto_3
    add-int v17, v14, v11

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_6

    move v8, v6

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v14, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    const/4 v7, 0x6

    :cond_3
    instance-of v0, v13, Lcom/henrythompson/quoda/snippet/Tabstop;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    check-cast v13, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v11

    goto :goto_1

    const/4 v7, 0x0

    :cond_4
    add-int/2addr v14, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    const/4 v12, 0x7

    :cond_5
    instance-of v0, v13, Lcom/henrythompson/quoda/snippet/Tabstop;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v13

    check-cast v17, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual/range {v17 .. v17}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v17

    add-int v11, v11, v17

    goto :goto_3

    const/4 v3, 0x0

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/16 v17, 0x0

    sub-int v18, p1, v5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v17, p2, v9

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_5
    if-eq v4, v8, :cond_b

    move v7, v8

    :goto_6
    if-lt v7, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    const/4 v6, 0x1

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    sub-int v18, p1, v5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    const/4 v12, 0x4

    :cond_a
    if-lez v3, :cond_8

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v17, p2, v9

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    const/4 v4, 0x4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/henrythompson/quoda/snippet/Tabstop;->updatePositions()V

    nop

    return-void

    const/4 v7, 0x3
.end method

.method public setCodeCompletions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v3, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mParts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mCodeCompletions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setTabIndex(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput p1, p0, Lcom/henrythompson/quoda/snippet/Tabstop;->mTabIndex:I

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method
