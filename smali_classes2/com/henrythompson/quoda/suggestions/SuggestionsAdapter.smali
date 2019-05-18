.class public Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/henrythompson/quoda/suggestions/Suggestion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    const v0, 0x7f0a0059

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x2
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/suggestions/Suggestion;

    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    const/4 v3, 0x7

    const/4 v3, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v5, 0x4

    move-object v1, p2

    const/4 v5, 0x6

    if-nez v1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v5, 0x2

    const v3, 0x7f0a0059

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x4

    const v3, 0x7f08015f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x7

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/suggestions/Suggestion;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/suggestions/Suggestion;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x5

    return-object v1

    const/4 v2, 0x4
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x6
.end method
