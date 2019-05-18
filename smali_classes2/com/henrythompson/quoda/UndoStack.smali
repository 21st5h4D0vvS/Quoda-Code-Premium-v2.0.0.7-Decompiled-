.class public Lcom/henrythompson/quoda/UndoStack;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/UndoStack$TextChange;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x100000

.field private static final serialVersionUID:J = -0x5fb6d5d0e466ab3L


# instance fields
.field private mCurrentSize:I

.field private mStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/UndoStack$TextChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public canUndo()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x6
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public count()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method public getItemAt(I)Lcom/henrythompson/quoda/UndoStack$TextChange;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    return-object v0

    const/4 v0, 0x2
.end method

.method public mergeTop()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v4, 0x7

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-ne v2, v3, :cond_0

    const/4 v4, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v4, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x4

    :goto_0
    return v2

    const/4 v3, 0x5

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public pop()Lcom/henrythompson/quoda/UndoStack$TextChange;
    .locals 6

    const/4 v5, 0x2

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x5

    if-lez v2, :cond_0

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x2

    iget-object v3, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    const/4 v5, 0x1

    iget v3, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    const/4 v5, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v3

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v5, 0x3

    :goto_0
    return-object v0

    const/4 v4, 0x3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V
    .locals 11

    const/4 v10, 0x2

    const/high16 v9, 0x100000

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x2

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v10, 0x4

    const-string v6, ""

    iput-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v10, 0x3

    :cond_0
    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    if-nez v6, :cond_1

    const/4 v10, 0x1

    const-string v6, ""

    iput-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v10, 0x3

    :cond_1
    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v3, v6, v7

    const/4 v10, 0x6

    if-ge v3, v9, :cond_19

    const/4 v10, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_18

    const/4 v10, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v10, 0x1

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_d

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    const/4 v10, 0x1

    iget v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v7, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-ne v6, v7, :cond_c

    const/4 v10, 0x4

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v10, 0x0

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-char v2, v6, v5

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    const/4 v4, 0x0

    const/4 v10, 0x6

    :cond_3
    if-eqz v1, :cond_6

    const/4 v10, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v10, 0x1

    :goto_1
    iget v5, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    const/4 v10, 0x3

    :cond_4
    iget v5, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    if-le v5, v9, :cond_5

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/UndoStack;->removeLast()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v10, 0x5

    :cond_5
    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v5

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v10, 0x3

    :goto_2
    nop

    return-void

    const/4 v3, 0x4

    const/4 v10, 0x6

    :cond_6
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v2, 0x0

    const/4 v10, 0x4

    :cond_7
    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v10, 0x1

    const/4 v0, 0x1

    const/4 v10, 0x6

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    :goto_3
    if-ge v5, v7, :cond_9

    aget-char v2, v6, v5

    const/4 v10, 0x6

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v10, 0x2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    const/4 v10, 0x2

    const/4 v10, 0x2

    :cond_9
    if-eqz v0, :cond_a

    const/4 v10, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    goto :goto_1

    const/4 v6, 0x7

    const/4 v10, 0x3

    :cond_a
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v2, 0x6

    const/4 v10, 0x2

    :cond_b
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v7, 0x2

    const/4 v10, 0x2

    :cond_c
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v0, 0x4

    const/4 v10, 0x2

    :cond_d
    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_17

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_17

    const/4 v10, 0x4

    iget v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-ne v6, v7, :cond_16

    const/4 v10, 0x7

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v10, 0x7

    const/4 v1, 0x1

    const/4 v10, 0x0

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    :goto_4
    if-ge v5, v7, :cond_f

    aget-char v2, v6, v5

    const/4 v10, 0x5

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v10, 0x1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    const/4 v9, 0x5

    const/4 v10, 0x3

    :cond_f
    if-eqz v1, :cond_10

    const/4 v10, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v10, 0x7

    iget v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    goto/16 :goto_1

    const/4 v3, 0x0

    const/4 v10, 0x0

    :cond_10
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v2, 0x4

    const/4 v10, 0x6

    :cond_11
    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v10, 0x0

    const/4 v0, 0x1

    const/4 v10, 0x0

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    :goto_5
    if-ge v5, v7, :cond_13

    aget-char v2, v6, v5

    const/4 v10, 0x3

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v10, 0x6

    const/4 v0, 0x0

    const/4 v10, 0x5

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    const/4 v0, 0x1

    const/4 v10, 0x2

    :cond_13
    if-eqz v0, :cond_14

    const/4 v10, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v10, 0x6

    iget v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v6, p1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    goto/16 :goto_1

    const/4 v5, 0x6

    const/4 v10, 0x7

    :cond_14
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v10, 0x4

    const/4 v10, 0x4

    :cond_15
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v1, 0x6

    const/4 v10, 0x2

    :cond_16
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v8, 0x7

    const/4 v10, 0x3

    :cond_17
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v8, 0x0

    const/4 v10, 0x6

    :cond_18
    iget-object v5, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v5, 0x4

    const/4 v10, 0x1

    :cond_19
    invoke-virtual {p0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    goto/16 :goto_2

    const/4 v0, 0x3
.end method

.method public removeAll()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v2, 0x6

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public removeLast()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x2

    if-lez v1, :cond_0

    const/4 v5, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/UndoStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x5

    iget v2, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    iget-object v3, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/henrythompson/quoda/UndoStack;->mCurrentSize:I

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x3

    :cond_0
    return v2

    const/4 v0, 0x1
.end method
