.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialSelectionFinished:Z

    if-nez v0, :cond_1

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialSelectionFinished:Z

    const/4 v2, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v2, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-nez p3, :cond_2

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x1

    const/4 v2, 0x2

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method
