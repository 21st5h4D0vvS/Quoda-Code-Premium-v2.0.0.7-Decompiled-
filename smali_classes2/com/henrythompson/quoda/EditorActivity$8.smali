.class Lcom/henrythompson/quoda/EditorActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->startTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorActivity;

.field final synthetic val$spinner:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$8;->val$spinner:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x3

    const/4 v12, 0x3

    :try_start_0
    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v12, 0x1

    const v8, 0x7f0a0054

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v12, 0x5

    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v1, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v12, 0x6

    const/4 v8, 0x2

    new-array v2, v8, [I

    const/4 v12, 0x4

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->val$spinner:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v12, 0x7

    const/4 v8, 0x1

    aget v9, v2, v8

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorActivity$8;->val$spinner:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v2, v8

    const/4 v12, 0x6

    const/4 v8, 0x1

    aget v9, v2, v8

    const/16 v10, 0x8

    invoke-static {v10}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v10

    sub-int/2addr v9, v10

    aput v9, v2, v8

    const/4 v12, 0x6

    const v8, 0x7f080173

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v12, 0x1

    const v8, 0x7f080172

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v12, 0x3

    const v8, 0x7f080171

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/EditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/RobotoLight.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v12, 0x2

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v12, 0x3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v12, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v12, 0x6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v12, 0x5

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v9, 0x7f0d023d

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x2

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v9, 0x7f0d0239

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v9, 0x7f0d0064

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x6

    new-instance v8, Lcom/henrythompson/quoda/EditorActivity$8$1;

    invoke-direct {v8, p0, v6}, Lcom/henrythompson/quoda/EditorActivity$8$1;-><init>(Lcom/henrythompson/quoda/EditorActivity$8;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, 0x7

    new-instance v8, Lcom/henrythompson/quoda/EditorActivity$8$2;

    invoke-direct {v8, p0, v6}, Lcom/henrythompson/quoda/EditorActivity$8$2;-><init>(Lcom/henrythompson/quoda/EditorActivity$8;Landroid/widget/PopupWindow;)V

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v12, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v12, 0x4

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v12, 0x6

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v9, 0x1020002

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x3

    :goto_0
    nop

    return-void

    const/4 v10, 0x6

    const/4 v12, 0x2

    :catch_0
    move-exception v8

    goto :goto_0

    const/4 v12, 0x0
.end method
