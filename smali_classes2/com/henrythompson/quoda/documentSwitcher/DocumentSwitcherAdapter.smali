.class public Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;,
        Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mManager:Lcom/henrythompson/quoda/document/DocumentsManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x2

    const v2, 0x7f0a0059

    invoke-direct {p0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v0

    const/4 v4, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v4, 0x1

    new-instance v2, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;

    iget-object v3, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->add(Ljava/lang/Object;)V

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x3

    const/4 v4, 0x7

    :cond_0
    nop

    return-void

    const/4 v2, 0x0
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mListener:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;

    return-object v0

    const/4 v1, 0x3
.end method


# virtual methods
.method public convertToSearchItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x5

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v4, 0x4

    new-instance v1, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;

    iget-object v3, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v0, 0x4

    const/4 v4, 0x4

    :cond_0
    return-object v2

    const/4 v0, 0x1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p2

    const/4 v8, 0x3

    if-nez v3, :cond_0

    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    const/4 v8, 0x2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v8, 0x0

    const v5, 0x7f0a0032

    invoke-virtual {v1, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const/4 v8, 0x0

    new-instance v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;)V

    const/4 v8, 0x1

    const v5, 0x7f08009f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->closeButton:Landroid/widget/ImageButton;

    const/4 v8, 0x7

    const v5, 0x7f0800a0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->titleButton:Landroid/widget/Button;

    const/4 v8, 0x3

    const v5, 0x7f0800a1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->savedIcon:Landroid/widget/ImageView;

    const/4 v8, 0x7

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v8, 0x6

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;

    const/4 v8, 0x2

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;

    const/4 v8, 0x2

    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->getTitle()Landroid/text/Spanned;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x7

    invoke-virtual {v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->isDisplayed()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x0

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v4, v5, v7, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v8, 0x6

    :cond_1
    invoke-virtual {v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v8, 0x5

    iget-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->savedIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v8, 0x2

    :goto_0
    iget-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->titleButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x5

    iget-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->titleButton:Landroid/widget/Button;

    new-instance v6, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x4

    iget-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->closeButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$2;

    invoke-direct {v6, p0, p1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$2;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x6

    return-object v3

    const/4 v6, 0x5

    const/4 v8, 0x2

    :cond_2
    iget-object v5, v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->savedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    const/4 v6, 0x6
.end method

.method public refresh()V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->clear()V

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v0

    const/4 v4, 0x6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v4, 0x0

    new-instance v2, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;

    iget-object v3, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->add(Ljava/lang/Object;)V

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x0

    const/4 v4, 0x5

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->notifyDataSetChanged()V

    const/4 v4, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public search(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->clear()V

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->refresh()V

    const/4 v8, 0x3

    :goto_0
    nop

    return-void

    const/4 v5, 0x2

    const/4 v8, 0x5

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->convertToSearchItems()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x4

    invoke-static {v4, p1}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->getFuzzyMatches(Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v8, 0x6

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    const/4 v8, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->getSearchItem()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;

    const/4 v8, 0x7

    new-instance v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;

    invoke-static {v1}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->styleResult(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;-><init>(Landroid/text/Spanned;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v8, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    const/4 v4, 0x7

    const/4 v8, 0x2

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->notifyDataSetChanged()V

    goto :goto_0

    const/4 v5, 0x5
.end method

.method public setDocumentSwitcherListener(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;)V
    .locals 1
    .param p1    # Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->mListener:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method
