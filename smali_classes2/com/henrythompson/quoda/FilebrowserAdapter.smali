.class public Lcom/henrythompson/quoda/FilebrowserAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/henrythompson/quoda/filesystem/FileObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFileIcon:Landroid/graphics/drawable/Drawable;

.field private mFolderIcon:Landroid/graphics/drawable/Drawable;

.field private final mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation
.end field

.field private mUpIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x6

    const v0, 0x7f0a0037

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mFileIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mUpIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v4, p2

    const/4 v8, 0x6

    if-nez v4, :cond_0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    const/4 v8, 0x5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v8, 0x3

    const v5, 0x7f0a0037

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x3

    new-instance v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;-><init>()V

    const/4 v8, 0x6

    const v5, 0x7f0800de

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v8, 0x6

    const v5, 0x7f0800db

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v8, 0x3

    const v5, 0x7f0800dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v8, 0x6

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v8, 0x4

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x6

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x1

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v8, 0x6

    instance-of v5, v0, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v6, 0x7f0d0108

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const/4 v8, 0x4

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mUpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x2

    :goto_0
    return-object v4

    const/4 v5, 0x4

    const/4 v8, 0x5

    :cond_1
    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getDrawableResource()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v8, 0x3

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    const/4 v7, 0x7

    const/4 v8, 0x2

    :cond_2
    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getDrawableResource()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v8, 0x0

    :cond_3
    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v8, 0x2

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSizeDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getDrawableResource()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v8, 0x4

    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/henrythompson/quoda/FilebrowserAdapter;->mFileIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    const/4 v1, 0x7

    const/4 v8, 0x3

    :cond_4
    iget-object v5, v1, Lcom/henrythompson/quoda/FilebrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getDrawableResource()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    const/4 v4, 0x1
.end method
