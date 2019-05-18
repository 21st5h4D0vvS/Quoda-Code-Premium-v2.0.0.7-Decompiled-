.class public Lcom/henrythompson/quoda/ListItemAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;
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
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/ListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x4

    iput p2, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mLayoutResourceId:I

    const/4 v1, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    iput-object p3, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x5
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v11, 0x2

    move-object v4, p2

    const/4 v11, 0x3

    if-nez v4, :cond_9

    const/4 v11, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v11, 0x3

    iget v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mLayoutResourceId:I

    invoke-virtual {v3, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v11, 0x2

    new-instance v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;

    invoke-direct {v2}, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;-><init>()V

    const/4 v11, 0x6

    const v6, 0x7f0800e5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    const/4 v11, 0x7

    const v6, 0x7f0800e3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v11, 0x5

    const v6, 0x7f0800e4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x4

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v11, 0x7

    :goto_0
    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/henrythompson/quoda/ListItem;

    const/4 v11, 0x2

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const/4 v11, 0x3

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v11, 0x2

    :cond_0
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    const/4 v11, 0x4

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v11, 0x4

    :cond_1
    invoke-virtual {v5}, Lcom/henrythompson/quoda/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/henrythompson/quoda/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-ne v6, v7, :cond_a

    const/4 v11, 0x0

    :cond_2
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    const/4 v11, 0x6

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x3

    :cond_3
    :goto_1
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getTitleDrawableLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getTitleDrawableLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v11, 0x5

    :cond_4
    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getTitleDrawableRight()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v11, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getTitleDrawableRight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v11, 0x4

    :cond_5
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v9, v1, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x5

    :cond_6
    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getCheckBoxVisible()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v11, 0x4

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_7

    const/4 v11, 0x5

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v11, 0x5

    iget-object v7, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getCheckBoxState()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v11, 0x6

    iget-object v7, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getCheckChangedListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v11, 0x0

    :cond_7
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v6, :cond_8

    const/4 v11, 0x6

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    const/4 v11, 0x0

    iget-object v7, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getCheckBoxState()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v11, 0x2

    iget-object v7, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getCheckChangedListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v11, 0x5

    :cond_8
    :goto_2
    return-object v4

    const/4 v3, 0x6

    const/4 v11, 0x3

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;

    goto/16 :goto_0

    const/4 v2, 0x3

    const/4 v11, 0x1

    :cond_a
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    const/4 v11, 0x5

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    const/4 v11, 0x3

    const/4 v11, 0x0

    :cond_b
    iget-object v6, p0, Lcom/henrythompson/quoda/ListItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/ListItem;->getImageVisible()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v11, 0x3

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_c

    const/4 v11, 0x2

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v11, 0x2

    :cond_c
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v6, :cond_8

    const/4 v11, 0x4

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2

    const/4 v11, 0x0

    const/4 v11, 0x1

    :cond_d
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_e

    const/4 v11, 0x1

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v11, 0x6

    :cond_e
    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v6, :cond_8

    const/4 v11, 0x7

    iget-object v6, v2, Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2

    const/4 v9, 0x3
.end method
