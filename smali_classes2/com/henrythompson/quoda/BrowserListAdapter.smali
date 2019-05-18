.class public Lcom/henrythompson/quoda/BrowserListAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/BrowserListAdapter$Browser;,
        Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/henrythompson/quoda/BrowserListAdapter$Browser;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/BrowserListAdapter$Browser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/BrowserListAdapter$Browser;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x6

    const v0, 0x7f0a0036

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/BrowserListAdapter;->mContext:Landroid/app/Activity;

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/henrythompson/quoda/BrowserListAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez p2, :cond_0

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/BrowserListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v6, 0x0

    const v4, 0x7f0a0036

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x4

    new-instance v3, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;

    invoke-direct {v3, v5}, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;-><init>(Lcom/henrythompson/quoda/BrowserListAdapter$1;)V

    const/4 v6, 0x5

    const v4, 0x7f0800da

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v6, 0x2

    const v4, 0x7f0800d9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v6, 0x5

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;

    const/4 v6, 0x5

    iget-object v5, v0, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/henrythompson/quoda/BrowserListAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;

    iget-object v4, v4, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x3

    iget-object v5, v0, Lcom/henrythompson/quoda/BrowserListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/henrythompson/quoda/BrowserListAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;

    iget-object v4, v4, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x6

    return-object v2

    const/4 v6, 0x3

    const/4 v6, 0x3

    :cond_0
    move-object v2, p2

    goto :goto_0

    const/4 v1, 0x6
.end method
