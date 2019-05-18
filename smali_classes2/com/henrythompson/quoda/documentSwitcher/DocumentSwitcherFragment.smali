.class public Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;
.super Lcom/henrythompson/quoda/AuthHandlingFragment;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# instance fields
.field private mDocumentSwitcherAdapter:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

.field private mDocumentSwitcherList:Landroid/widget/ListView;

.field private mDocumentSwitcherSearchBox:Landroid/widget/EditText;

.field private mNewButton:Landroid/widget/Button;

.field private mOpenButton:Landroid/widget/Button;

.field private mTemplateButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherAdapter:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    return-object v0

    const/4 v0, 0x2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherList:Landroid/widget/ListView;

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherSearchBox:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mNewButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mTemplateButton:Landroid/widget/Button;

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800a4

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mOpenButton:Landroid/widget/Button;

    const/4 v4, 0x1

    new-instance v2, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherAdapter:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherAdapter:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    new-instance v3, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$1;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->setDocumentSwitcherListener(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;)V

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherAdapter:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherSearchBox:Landroid/widget/EditText;

    new-instance v3, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$2;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$2;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v4, 0x5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherSearchBox:Landroid/widget/EditText;

    const v3, 0x80091

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x6

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/RobotoLight.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mNewButton:Landroid/widget/Button;

    new-instance v3, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$3;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$3;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mTemplateButton:Landroid/widget/Button;

    new-instance v3, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$4;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$4;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mOpenButton:Landroid/widget/Button;

    new-instance v3, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$5;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$5;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x7

    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v2, 0x4

    const v0, 0x7f0a0031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    const/4 v0, 0x6
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onDestroyView()V

    const/4 v1, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x5
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x5

    sparse-switch p1, :sswitch_data_0

    const/4 v2, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x0

    const/4 v2, 0x7

    :sswitch_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$6;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$6;-><init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v2, 0x7

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->mDocumentSwitcherSearchBox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v1, 0x0
.end method
