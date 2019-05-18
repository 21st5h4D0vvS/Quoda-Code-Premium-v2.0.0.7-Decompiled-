.class public Lcom/henrythompson/quoda/SaveAsDialog;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field mNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static newInstance(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/SaveAsDialog;
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x3

    new-instance v1, Lcom/henrythompson/quoda/SaveAsDialog;

    invoke-direct {v1}, Lcom/henrythompson/quoda/SaveAsDialog;-><init>()V

    const/4 v4, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    const-string v2, "filepath"

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    const-string v2, "filesystem"

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/SaveAsDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 v4, 0x5

    return-object v1

    const/4 v1, 0x3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x6

    const v0, 0x7f0a002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method
