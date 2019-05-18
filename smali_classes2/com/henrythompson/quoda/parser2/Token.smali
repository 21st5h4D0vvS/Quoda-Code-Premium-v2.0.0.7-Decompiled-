.class public Lcom/henrythompson/quoda/parser2/Token;
.super Ljava/lang/Object;


# instance fields
.field private mAssociatedRule:Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

.field private mChildTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/parser2/Token;",
            ">;"
        }
    .end annotation
.end field

.field private mContentEnd:I

.field private mContentName:Ljava/lang/String;

.field private mContentStart:I

.field private mEnd:I

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/henrythompson/quoda/parser2/Token;

.field private mStart:I


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/henrythompson/quoda/parser2/Token;-><init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;Ljava/lang/String;IIII)V

    const/4 v9, 0x2

    nop

    return-void

    const/4 v6, 0x5
.end method

.method public constructor <init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput-object p3, p0, Lcom/henrythompson/quoda/parser2/Token;->mName:Ljava/lang/String;

    const/4 v0, 0x2

    iput-object p4, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentName:Ljava/lang/String;

    const/4 v0, 0x2

    iput-object p2, p0, Lcom/henrythompson/quoda/parser2/Token;->mAssociatedRule:Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/parser2/Token;->mParent:Lcom/henrythompson/quoda/parser2/Token;

    const/4 v0, 0x0

    iput p5, p0, Lcom/henrythompson/quoda/parser2/Token;->mStart:I

    const/4 v0, 0x0

    iput p6, p0, Lcom/henrythompson/quoda/parser2/Token;->mEnd:I

    const/4 v0, 0x1

    iput p7, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentStart:I

    const/4 v0, 0x7

    iput p8, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentEnd:I

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private getUnendingChild()Lcom/henrythompson/quoda/parser2/Token;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/parser2/Token;

    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/parser2/Token;->getEnd()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v1, v2

    const/4 v5, 0x3

    :cond_0
    :goto_0
    return-object v1

    const/4 v2, 0x3

    :cond_1
    move-object v1, v2

    goto :goto_0

    const/4 v2, 0x3
.end method


# virtual methods
.method addChildToken(Lcom/henrythompson/quoda/parser2/Token;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    const/4 v1, 0x4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x4

    const/4 v1, 0x4

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    goto :goto_0

    const/4 v1, 0x3
.end method

.method public clone()Lcom/henrythompson/quoda/parser2/Token;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mParent:Lcom/henrythompson/quoda/parser2/Token;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/parser2/Token;->clone(Lcom/henrythompson/quoda/parser2/Token;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public clone(Lcom/henrythompson/quoda/parser2/Token;)Lcom/henrythompson/quoda/parser2/Token;
    .locals 10

    const/4 v9, 0x5

    const/4 v9, 0x6

    new-instance v0, Lcom/henrythompson/quoda/parser2/Token;

    iget-object v2, p0, Lcom/henrythompson/quoda/parser2/Token;->mAssociatedRule:Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/Token;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->getStart()I

    move-result v5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->getEnd()I

    move-result v6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->getContentStart()I

    move-result v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->getContentEnd()I

    move-result v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/henrythompson/quoda/parser2/Token;-><init>(Lcom/henrythompson/quoda/parser2/Token;Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    const/4 v6, 0x3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->clone()Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v0

    return-object v0

    const/4 v1, 0x4
.end method

.method public cloneWithUnendingChildren()Lcom/henrythompson/quoda/parser2/Token;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mParent:Lcom/henrythompson/quoda/parser2/Token;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/parser2/Token;->cloneWithUnendingChildren(Lcom/henrythompson/quoda/parser2/Token;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v0

    return-object v0

    const/4 v0, 0x3
.end method

.method public cloneWithUnendingChildren(Lcom/henrythompson/quoda/parser2/Token;)Lcom/henrythompson/quoda/parser2/Token;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x3

    iget v3, p0, Lcom/henrythompson/quoda/parser2/Token;->mEnd:I

    if-eq v3, v4, :cond_1

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/parser2/Token;->clone(Lcom/henrythompson/quoda/parser2/Token;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v4}, Lcom/henrythompson/quoda/parser2/Token;->setStart(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4}, Lcom/henrythompson/quoda/parser2/Token;->setContentStart(I)V

    const/4 v5, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/parser2/Token;->getUnendingChild()Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v2

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    const/4 v5, 0x3

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/parser2/Token;->cloneWithUnendingChildren(Lcom/henrythompson/quoda/parser2/Token;)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v0

    const/4 v5, 0x7

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/parser2/Token;->addChildToken(Lcom/henrythompson/quoda/parser2/Token;)V

    goto :goto_0

    const/4 v2, 0x4
.end method

.method public getAssociatedRule()Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mAssociatedRule:Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    return-object v0

    const/4 v1, 0x4
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/parser2/Token;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getContentEnd()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentEnd:I

    return v0

    const/4 v0, 0x2
.end method

.method public getContentName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentName:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x6
.end method

.method public getContentStart()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentStart:I

    return v0

    const/4 v1, 0x0
.end method

.method public getEnd()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mEnd:I

    return v0

    const/4 v0, 0x4
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mName:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getParent()Lcom/henrythompson/quoda/parser2/Token;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mParent:Lcom/henrythompson/quoda/parser2/Token;

    return-object v0

    const/4 v1, 0x7
.end method

.method public getStart()I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mStart:I

    return v0

    const/4 v0, 0x4
.end method

.method public getTokenAtIndex(I)Lcom/henrythompson/quoda/parser2/Token;
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x5

    iget v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mStart:I

    if-ge p1, v4, :cond_1

    iget v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mEnd:I

    if-le p1, v4, :cond_1

    const/4 v5, 0x3

    const/4 p0, 0x0

    const/4 v5, 0x7

    :cond_0
    :goto_0
    return-object p0

    const/4 v1, 0x4

    const/4 v5, 0x0

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v5, 0x2

    :goto_1
    if-gt v2, v1, :cond_0

    const/4 v5, 0x6

    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int v3, v2, v4

    const/4 v5, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/parser2/Token;

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/parser2/Token;->getStart()I

    move-result v4

    if-ge p1, v4, :cond_2

    const/4 v5, 0x0

    add-int/lit8 v1, v3, -0x1

    goto :goto_1

    const/4 v5, 0x1

    const/4 v5, 0x5

    :cond_2
    invoke-virtual {v0}, Lcom/henrythompson/quoda/parser2/Token;->getEnd()I

    move-result v4

    if-le p1, v4, :cond_3

    const/4 v5, 0x0

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    const/4 v1, 0x2

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/parser2/Token;->getTokenAtIndex(I)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object p0

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public getTokenForRange(II)Lcom/henrythompson/quoda/parser2/Token;
    .locals 7

    const/4 v6, 0x2

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->getStart()I

    move-result v3

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/parser2/Token;->getEnd()I

    move-result v1

    const/4 v6, 0x5

    if-lt p1, v3, :cond_2

    if-gt p2, v1, :cond_2

    const/4 v6, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/parser2/Token;->mChildTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/parser2/Token;

    const/4 v6, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/parser2/Token;->getTokenForRange(II)Lcom/henrythompson/quoda/parser2/Token;

    move-result-object v2

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    move-object p0, v2

    const/4 v6, 0x6

    :cond_1
    :goto_0
    return-object p0

    const/4 v2, 0x4

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    const/4 v6, 0x7
.end method

.method public isRootToken()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mParent:Lcom/henrythompson/quoda/parser2/Token;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public length()I
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/parser2/Token;->mEnd:I

    iget v1, p0, Lcom/henrythompson/quoda/parser2/Token;->mStart:I

    sub-int/2addr v0, v1

    return v0

    const/4 v0, 0x4
.end method

.method public setContentEnd(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput p1, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentEnd:I

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setContentStart(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput p1, p0, Lcom/henrythompson/quoda/parser2/Token;->mContentStart:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setEnd(I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/parser2/Token;->mEnd:I

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setStart(I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/parser2/Token;->mStart:I

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method
