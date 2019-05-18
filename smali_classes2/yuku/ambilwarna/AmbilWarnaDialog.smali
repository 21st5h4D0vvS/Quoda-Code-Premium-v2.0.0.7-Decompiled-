.class public Lyuku/ambilwarna/AmbilWarnaDialog;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;
    }
.end annotation


# instance fields
.field final currentColorHsv:[F

.field final dialog:Landroid/app/AlertDialog;

.field final listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

.field final viewContainer:Landroid/view/ViewGroup;

.field final viewCursor:Landroid/widget/ImageView;

.field final viewHue:Landroid/view/View;

.field final viewNewColor:Landroid/view/View;

.field final viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

.field final viewTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "listener"    # Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    .line 38
    iput-object p3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    .line 39
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    invoke-static {p2, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lyuku/ambilwarna/R$layout;->ambilwarna_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    sget v2, Lyuku/ambilwarna/R$id;->ambilwarna_viewHue:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    .line 43
    sget v2, Lyuku/ambilwarna/R$id;->ambilwarna_viewSatBri:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lyuku/ambilwarna/AmbilWarnaKotak;

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    .line 44
    sget v2, Lyuku/ambilwarna/R$id;->ambilwarna_cursor:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    .line 45
    sget v2, Lyuku/ambilwarna/R$id;->ambilwarna_warnaBaru:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    .line 46
    sget v2, Lyuku/ambilwarna/R$id;->ambilwarna_target:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    .line 47
    sget v2, Lyuku/ambilwarna/R$id;->ambilwarna_viewContainer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    .line 49
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F

    move-result v3

    invoke-virtual {v2, v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->setHue(F)V

    .line 50
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    new-instance v3, Lyuku/ambilwarna/AmbilWarnaDialog$1;

    invoke-direct {v3, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$1;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    new-instance v3, Lyuku/ambilwarna/AmbilWarnaDialog$2;

    invoke-direct {v3, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$2;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    invoke-virtual {v2, v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Insert"

    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog$6;

    invoke-direct {v4, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$6;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Copy"

    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog$5;

    invoke-direct {v4, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$5;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog$4;

    invoke-direct {v4, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$4;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lyuku/ambilwarna/AmbilWarnaDialog$3;

    invoke-direct {v3, p0}, Lyuku/ambilwarna/AmbilWarnaDialog$3;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    .line 126
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    .line 137
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 138
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 142
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lyuku/ambilwarna/AmbilWarnaDialog$7;

    invoke-direct {v2, p0, v0}, Lyuku/ambilwarna/AmbilWarnaDialog$7;-><init>(Lyuku/ambilwarna/AmbilWarnaDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lyuku/ambilwarna/AmbilWarnaDialog;F)V
    .locals 0
    .param p0, "x0"    # Lyuku/ambilwarna/AmbilWarnaDialog;
    .param p1, "x1"    # F

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lyuku/ambilwarna/AmbilWarnaDialog;->setHue(F)V

    return-void
.end method

.method static synthetic access$100(Lyuku/ambilwarna/AmbilWarnaDialog;)F
    .locals 1
    .param p0, "x0"    # Lyuku/ambilwarna/AmbilWarnaDialog;

    .prologue
    .line 10
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lyuku/ambilwarna/AmbilWarnaDialog;)I
    .locals 1
    .param p0, "x0"    # Lyuku/ambilwarna/AmbilWarnaDialog;

    .prologue
    .line 10
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lyuku/ambilwarna/AmbilWarnaDialog;F)V
    .locals 0
    .param p0, "x0"    # Lyuku/ambilwarna/AmbilWarnaDialog;
    .param p1, "x1"    # F

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lyuku/ambilwarna/AmbilWarnaDialog;->setSat(F)V

    return-void
.end method

.method static synthetic access$400(Lyuku/ambilwarna/AmbilWarnaDialog;F)V
    .locals 0
    .param p0, "x0"    # Lyuku/ambilwarna/AmbilWarnaDialog;
    .param p1, "x1"    # F

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lyuku/ambilwarna/AmbilWarnaDialog;->setVal(F)V

    return-void
.end method

.method private getColor()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private getHue()F
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getSat()F
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getVal()F
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private setHue(F)V
    .locals 2
    .param p1, "hue"    # F

    .prologue
    .line 188
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 189
    return-void
.end method

.method private setSat(F)V
    .locals 2
    .param p1, "sat"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 193
    return-void
.end method

.method private setVal(F)V
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 196
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 197
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected moveCursor()V
    .locals 6

    .prologue
    .line 152
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getHue()F

    move-result v3

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 153
    .local v1, "y":F
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 154
    :cond_0
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 155
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 157
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-double v2, v2

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 159
    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-void
.end method

.method protected moveTarget()V
    .locals 8

    .prologue
    .line 163
    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getSat()F

    move-result v3

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    .line 164
    .local v1, "x":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lyuku/ambilwarna/AmbilWarnaDialog;->getVal()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 165
    .local v2, "y":F
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-double v4, v3

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 167
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-double v4, v3

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 168
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method
