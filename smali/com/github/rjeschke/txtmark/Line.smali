.class Lcom/github/rjeschke/txtmark/Line;
.super Ljava/lang/Object;


# instance fields
.field public isEmpty:Z

.field public leading:I

.field public next:Lcom/github/rjeschke/txtmark/Line;

.field public nextEmpty:Z

.field public pos:I

.field public prevEmpty:Z

.field public previous:Lcom/github/rjeschke/txtmark/Line;

.field public trailing:I

.field public value:Ljava/lang/String;

.field public xmlEndLine:Lcom/github/rjeschke/txtmark/Line;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    const/4 v2, 0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v2, 0x4

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v2, 0x1

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private checkHTML()Z
    .locals 12

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x5

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v11, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v10, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x21

    if-ne v7, v10, :cond_1

    const/4 v11, 0x2

    iget v7, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-direct {p0, p0, v7}, Lcom/github/rjeschke/txtmark/Line;->readXMLComment(Lcom/github/rjeschke/txtmark/Line;I)I

    move-result v7

    if-lez v7, :cond_1

    move v9, v8

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return v9

    const/4 v3, 0x4

    const/4 v11, 0x0

    :cond_1
    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v10, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-static {v6, v7, v10, v9}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v3

    const/4 v11, 0x7

    const/4 v7, -0x1

    if-le v3, v7, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x6

    invoke-static {v6, v0}, Lcom/github/rjeschke/txtmark/Utils;->getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v11, 0x3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x3

    invoke-static {v4}, Lcom/github/rjeschke/txtmark/HTML;->isHtmlBlockElement(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v11, 0x5

    const-string v7, "hr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v11, 0x3

    iput-object p0, p0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    move v9, v8

    const/4 v11, 0x2

    goto :goto_0

    const/4 v1, 0x1

    const/4 v11, 0x1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x4

    move-object v1, p0

    const/4 v11, 0x6

    :goto_1
    if-eqz v1, :cond_6

    const/4 v11, 0x5

    :goto_2
    iget-object v7, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget-object v7, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x3c

    if-eq v7, v10, :cond_3

    const/4 v11, 0x7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v3, 0x3

    const/4 v11, 0x0

    :cond_3
    iget-object v7, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_4

    const/4 v11, 0x0

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    const/4 v11, 0x1

    const/4 v11, 0x6

    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x1

    iget-object v7, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-static {v6, v7, v3, v9}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v2

    const/4 v11, 0x6

    if-lez v2, :cond_9

    const/4 v11, 0x7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x2

    invoke-static {v6, v0}, Lcom/github/rjeschke/txtmark/Utils;->getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v11, 0x7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    invoke-static {v4}, Lcom/github/rjeschke/txtmark/HTML;->isHtmlBlockElement(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "hr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v11, 0x5

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_7

    const/4 v11, 0x7

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v11, 0x6

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    const/4 v11, 0x2

    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_8

    const/4 v11, 0x1

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x6

    :cond_6
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    :goto_4
    move v9, v7

    goto/16 :goto_0

    const/4 v7, 0x7

    const/4 v11, 0x6

    :cond_7
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    const/4 v2, 0x6

    const/4 v11, 0x7

    :cond_8
    move v3, v2

    goto/16 :goto_1

    const/4 v11, 0x0

    const/4 v11, 0x5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    const/4 v5, 0x5

    :cond_a
    move v7, v9

    const/4 v11, 0x1

    goto :goto_4

    const/4 v11, 0x6
.end method

.method private countChars(C)I
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x7

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v4, 0x7

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v4, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v4, 0x3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x4

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 v4, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x5

    goto :goto_1

    const/4 v4, 0x2

    const/4 v4, 0x2

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x4

    :cond_2
    return v1

    const/4 v4, 0x7
.end method

.method private countCharsStart(C)I
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v4, 0x6

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x3

    const/4 v4, 0x0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 v4, 0x6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v0, 0x5

    const/4 v4, 0x6

    :cond_1
    return v1

    const/4 v3, 0x0
.end method

.method private readXMLComment(Lcom/github/rjeschke/txtmark/Line;I)I
    .locals 6

    const/4 v5, 0x3

    const/16 v4, 0x2d

    const/4 v5, 0x2

    move-object v0, p1

    const/4 v5, 0x2

    add-int/lit8 v2, p2, 0x3

    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v5, 0x1

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    const/4 v5, 0x2

    add-int/lit8 v1, p2, 0x4

    const/4 v5, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v5, 0x4

    :goto_1
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v3, 0x1

    const/4 v5, 0x5

    :cond_0
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v5, 0x2

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v5, 0x2

    const/4 v1, 0x0

    goto :goto_0

    const/4 v1, 0x2

    const/4 v5, 0x7

    :cond_1
    add-int/lit8 v2, v1, 0x2

    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v5, 0x3

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    const/4 v5, 0x7

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    const/4 v5, 0x5

    add-int/lit8 v2, v1, 0x3

    const/4 v5, 0x2

    :goto_2
    return v2

    const/4 v2, 0x0

    const/4 v5, 0x4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v5, 0x2

    const/4 v5, 0x6

    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    const/4 v0, 0x4
.end method


# virtual methods
.method public getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x20

    const/4 v6, 0x0

    const/16 v5, 0x2d

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v8, 0x6

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v1, :cond_0

    const/4 v8, 0x3

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->EMPTY:Lcom/github/rjeschke/txtmark/LineType;

    const/4 v8, 0x5

    :goto_0
    return-object v1

    const/4 v1, 0x5

    const/4 v8, 0x7

    :cond_0
    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-le v1, v3, :cond_1

    const/4 v8, 0x2

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    goto :goto_0

    const/4 v3, 0x1

    const/4 v8, 0x0

    :cond_1
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    const/4 v8, 0x0

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    goto :goto_0

    const/4 v3, 0x0

    const/4 v8, 0x3

    :cond_2
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_3

    const/4 v8, 0x7

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    goto :goto_0

    const/4 v2, 0x3

    const/4 v8, 0x7

    :cond_3
    if-eqz p1, :cond_7

    const/4 v8, 0x2

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v1, v2

    if-le v1, v4, :cond_7

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_7

    const/4 v8, 0x1

    :cond_4
    const/16 v1, 0x60

    invoke-direct {p0, v1}, Lcom/github/rjeschke/txtmark/Line;->countCharsStart(C)I

    move-result v1

    if-lt v1, v3, :cond_5

    const/4 v8, 0x6

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    goto :goto_0

    const/4 v7, 0x0

    const/4 v8, 0x6

    :cond_5
    const/16 v1, 0x7e

    invoke-direct {p0, v1}, Lcom/github/rjeschke/txtmark/Line;->countCharsStart(C)I

    move-result v1

    if-lt v1, v3, :cond_6

    const/4 v8, 0x6

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    goto :goto_0

    const/4 v5, 0x1

    const/4 v8, 0x1

    :cond_6
    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lcom/github/rjeschke/txtmark/Line;->countCharsStart(C)I

    move-result v1

    if-lt v1, v3, :cond_7

    const/4 v8, 0x6

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v8, 0x7

    :cond_7
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v1, v2

    if-le v1, v4, :cond_9

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_8

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_9

    const/4 v8, 0x3

    :cond_8
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/github/rjeschke/txtmark/Line;->countChars(C)I

    move-result v1

    if-lt v1, v3, :cond_9

    const/4 v8, 0x6

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HR:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v8, 0x4

    const/4 v8, 0x5

    :cond_9
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr v1, v2

    if-lt v1, v4, :cond_a

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_a

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v8, 0x7

    :cond_a
    :pswitch_0
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr v1, v2

    if-lt v1, v3, :cond_c

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v8, 0x5

    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v1, 0x1

    const/4 v8, 0x5

    :goto_1
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v8, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v3, 0x4

    const/4 v8, 0x7

    :pswitch_1
    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v8, 0x3

    :cond_b
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_c

    const/4 v8, 0x1

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v4, 0x5

    const/4 v8, 0x6

    :cond_c
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_d

    const/4 v8, 0x7

    invoke-direct {p0}, Lcom/github/rjeschke/txtmark/Line;->checkHTML()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v8, 0x5

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->XML:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v5, 0x5

    const/4 v8, 0x0

    :cond_d
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v1, v1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_f

    const/4 v8, 0x6

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_e

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {v1, v5}, Lcom/github/rjeschke/txtmark/Line;->countChars(C)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v8, 0x2

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v8, 0x4

    :cond_e
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/github/rjeschke/txtmark/Line;->countChars(C)I

    move-result v1

    if-lez v1, :cond_f

    const/4 v8, 0x0

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v4, 0x3

    const/4 v8, 0x7

    :cond_f
    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->OTHER:Lcom/github/rjeschke/txtmark/LineType;

    goto/16 :goto_0

    const/4 v2, 0x7

    const/4 v8, 0x1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 5

    const/4 v4, 0x4

    const/16 v3, 0x20

    const/4 v2, 0x0

    const/4 v4, 0x5

    iput v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v4, 0x6

    :goto_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v4, 0x6

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    goto :goto_0

    const/4 v0, 0x1

    const/4 v4, 0x0

    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v4, 0x7

    :cond_1
    nop

    return-void

    const/4 v2, 0x1

    const/4 v4, 0x6

    :cond_2
    iput-boolean v2, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    const/4 v4, 0x2

    iput v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    goto :goto_1

    const/4 v1, 0x3
.end method

.method public initLeading()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v2, 0x5

    :goto_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    goto :goto_0

    const/4 v1, 0x0

    const/4 v2, 0x5

    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v2, 0x6

    :cond_1
    nop

    return-void

    const/4 v1, 0x6
.end method

.method public varargs readUntil([C)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x5

    const/4 v8, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x6

    iget v4, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/4 v8, 0x2

    :goto_0
    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    const/4 v8, 0x6

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v8, 0x1

    const/16 v6, 0x5c

    if-ne v1, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v8, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x7

    goto :goto_0

    const/4 v0, 0x5

    const/4 v8, 0x3

    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x7

    goto :goto_1

    const/4 v4, 0x5

    const/4 v8, 0x7

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v6, p1

    if-ge v3, v6, :cond_1

    const/4 v8, 0x6

    aget-char v6, p1, v3

    if-ne v1, v6, :cond_3

    const/4 v8, 0x6

    const/4 v2, 0x1

    const/4 v8, 0x5

    :cond_1
    if-eqz v2, :cond_4

    const/4 v8, 0x3

    :cond_2
    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v8, 0x6

    :goto_3
    const/4 v3, 0x0

    :goto_4
    array-length v6, p1

    if-ge v3, v6, :cond_7

    const/4 v8, 0x0

    aget-char v6, p1, v3

    if-ne v1, v6, :cond_6

    const/4 v8, 0x7

    iput v4, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/4 v8, 0x6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    :goto_5
    return-object v6

    const/4 v6, 0x7

    const/4 v8, 0x7

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v6, 0x2

    const/4 v8, 0x3

    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v8, 0x5

    const/4 v8, 0x2

    :cond_5
    const/16 v1, 0xa

    goto :goto_3

    const/4 v3, 0x1

    const/4 v8, 0x4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    const/4 v0, 0x5

    const/4 v8, 0x4

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    const/4 v5, 0x0

    const/4 v8, 0x7

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x3e -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public setEmpty()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v0, ""

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v2, 0x6

    iput-boolean v1, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    const/4 v2, 0x5

    :cond_0
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    const/4 v2, 0x0

    :cond_1
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public skipSpaces()Z
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x5

    :goto_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v2, 0x7

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x4

    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    const/4 v2, 0x4

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    const/4 v0, 0x2
.end method

.method public stripID()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_1

    const/4 v10, 0x3

    :cond_0
    :goto_0
    return-object v4

    const/4 v9, 0x2

    const/4 v10, 0x6

    :cond_1
    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v10, 0x7

    const/4 v0, 0x0

    const/4 v10, 0x5

    :goto_1
    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    if-nez v0, :cond_3

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    const/4 v10, 0x4

    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x0

    goto :goto_1

    const/4 v1, 0x6

    const/4 v10, 0x2

    :sswitch_0
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v10, 0x6

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v10, 0x3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x5

    goto :goto_1

    const/4 v0, 0x0

    const/4 v10, 0x2

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    const/4 v5, 0x3

    const/4 v10, 0x7

    :sswitch_1
    const/4 v0, 0x1

    const/4 v10, 0x3

    goto :goto_1

    const/4 v8, 0x3

    const/4 v10, 0x2

    :cond_3
    if-eqz v0, :cond_0

    const/4 v10, 0x7

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_0

    const/4 v10, 0x2

    add-int/lit8 v3, v2, 0x2

    const/4 v10, 0x1

    move v2, v3

    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v10, 0x5

    :goto_3
    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    if-nez v0, :cond_5

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_1

    const/4 v10, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x0

    goto :goto_3

    const/4 v1, 0x1

    const/4 v10, 0x7

    :sswitch_2
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    const/4 v10, 0x5

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_1

    const/4 v10, 0x6

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x6

    goto :goto_3

    const/4 v10, 0x5

    const/4 v10, 0x1

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    const/4 v6, 0x2

    const/4 v10, 0x2

    :sswitch_3
    const/4 v0, 0x1

    const/4 v10, 0x6

    goto :goto_3

    const/4 v2, 0x7

    const/4 v10, 0x3

    :cond_5
    if-eqz v0, :cond_0

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x4

    iget v5, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-eqz v5, :cond_6

    const/4 v10, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v7, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v7, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v8, v3, -0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v10, 0x5

    :goto_5
    iput v9, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    const/4 v10, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    :goto_6
    move-object v4, v1

    goto/16 :goto_0

    const/4 v2, 0x7

    const/4 v10, 0x6

    :cond_6
    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v6, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_5

    const/4 v2, 0x7

    :cond_7
    move-object v1, v4

    const/4 v10, 0x7

    goto :goto_6

    const/4 v6, 0x0

    const/4 v10, 0x4

    nop

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_0
        0x7b -> :sswitch_1
    .end sparse-switch

    const/4 v10, 0x7

    nop

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch

    const/4 v10, 0x5

    nop

    :sswitch_data_1
    .sparse-switch
        0x5c -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch

    const/4 v10, 0x3

    nop

    :pswitch_data_1
    .packed-switch 0x7d
        :pswitch_1
    .end packed-switch
.end method
