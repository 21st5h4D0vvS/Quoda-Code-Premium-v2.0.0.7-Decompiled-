.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;
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

    const/4 v0, 0x6

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x7

    if-nez p3, :cond_1

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x5

    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$700(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x4

    :goto_1
    nop

    return-void

    const/4 v1, 0x7

    const/4 v3, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x5

    const/4 v3, 0x0

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$700(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x2

    :goto_2
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    const/4 v0, 0x0

    const/4 v3, 0x6

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$700(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    const/4 v2, 0x7

    const/4 v3, 0x1

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    const/4 v3, 0x1
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

    const/4 v0, 0x7

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method
