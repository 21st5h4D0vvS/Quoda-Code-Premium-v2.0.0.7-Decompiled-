.class public Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;
.super Lcom/henrythompson/quoda/codecompletion/CodeCompletionHandler;


# instance fields
.field mSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionHandler;-><init>()V

    const/4 v2, 0x2

    if-nez p1, :cond_0

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Snippet cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x3

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;->mSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v2, 0x6

    nop

    return-void

    const/4 v1, 0x4
.end method


# virtual methods
.method public getCodeCompletions(Lcom/henrythompson/quoda/document/Document;Landroid/text/Editable;I)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/document/Document;",
            "Landroid/text/Editable;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;->mSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/snippet/Tabstop;->getCodeCompletions()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1

    const/4 v13, 0x0

    :cond_0
    :goto_0
    return-object v13

    const/4 v11, 0x4

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;->mSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v9, -0x1

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v9, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v0, p3

    if-gt v6, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v9, v6, v7

    goto :goto_1

    const/4 v13, 0x4

    :cond_3
    if-gez v9, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    const/4 v4, 0x1

    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v9, v5, :cond_5

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v5

    move/from16 v0, p3

    if-le v0, v5, :cond_5

    const/4 v13, 0x0

    goto :goto_0

    const/4 v8, 0x4

    :cond_5
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v9, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v0, 0x6
.end method
