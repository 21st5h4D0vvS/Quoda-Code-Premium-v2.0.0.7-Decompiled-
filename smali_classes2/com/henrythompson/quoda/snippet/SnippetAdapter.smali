.class public Lcom/henrythompson/quoda/snippet/SnippetAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/henrythompson/quoda/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/ListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x3

    const v0, 0x7f0a0038

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    iput-object p2, p0, Lcom/henrythompson/quoda/snippet/SnippetAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x6
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x6

    move-object v3, p2

    const/4 v6, 0x1

    if-nez v3, :cond_0

    const/4 v6, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    const/4 v6, 0x4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v6, 0x4

    const v4, 0x7f0a0038

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x7

    new-instance v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;-><init>()V

    const/4 v6, 0x5

    const v4, 0x7f0800e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v6, 0x6

    const v4, 0x7f0800df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v6, 0x2

    const v4, 0x7f0800e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v6, 0x3

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;

    const/4 v6, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/ListItem;

    const/4 v6, 0x6

    iget-object v4, v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x6

    iget-object v4, v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x4

    iget-object v4, v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/ListItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x5

    return-object v3

    const/4 v4, 0x2
.end method
