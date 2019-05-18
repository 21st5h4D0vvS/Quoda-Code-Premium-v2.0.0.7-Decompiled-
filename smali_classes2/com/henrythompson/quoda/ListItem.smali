.class public Lcom/henrythompson/quoda/ListItem;
.super Ljava/lang/Object;


# instance fields
.field private mCheckBoxState:Z

.field private mDescription:Ljava/lang/String;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mShowCheckBox:Z

.field private mShowImage:Z

.field private mTitle:Ljava/lang/String;

.field private mTitleDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mTitleDrawableRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mCheckBoxState:Z

    const/4 v2, 0x4

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x5

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x1

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    const/4 v2, 0x7

    iput-object p2, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x2

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x3

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x4

    nop

    return-void

    const/4 v2, 0x0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mCheckBoxState:Z

    const/4 v2, 0x5

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x3

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x0

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    const/4 v2, 0x3

    iput-object p2, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    const/4 v2, 0x5

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x0

    iput-object p3, p0, Lcom/henrythompson/quoda/ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mCheckBoxState:Z

    const/4 v2, 0x5

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x2

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x4

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    const/4 v2, 0x6

    iput-object p2, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    const/4 v2, 0x2

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x7

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x3

    iput-object p3, p0, Lcom/henrythompson/quoda/ListItem;->mTitleDrawableLeft:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    iput-object p4, p0, Lcom/henrythompson/quoda/ListItem;->mTitleDrawableRight:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x5

    iput-boolean v1, p0, Lcom/henrythompson/quoda/ListItem;->mCheckBoxState:Z

    const/4 v2, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x2

    iput-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    iput-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    const/4 v2, 0x2

    iput-boolean p3, p0, Lcom/henrythompson/quoda/ListItem;->mCheckBoxState:Z

    const/4 v2, 0x7

    iput-boolean v1, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    const/4 v2, 0x7

    iput-object p4, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v2, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public getCheckBoxState()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mCheckBoxState:Z

    return v0

    const/4 v0, 0x3
.end method

.method public getCheckBoxVisible()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowCheckBox:Z

    return v0

    const/4 v1, 0x5
.end method

.method public getCheckChangedListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mOnCheckChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getImageVisible()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/ListItem;->mShowImage:Z

    return v0

    const/4 v0, 0x7
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getTitleDrawableLeft()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mTitleDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getTitleDrawableRight()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/ListItem;->mTitleDrawableRight:Landroid/graphics/drawable/Drawable;

    return-object v0

    const/4 v1, 0x2
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setTextAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x7

    iput-object p2, p0, Lcom/henrythompson/quoda/ListItem;->mDescription:Ljava/lang/String;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/ListItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method
