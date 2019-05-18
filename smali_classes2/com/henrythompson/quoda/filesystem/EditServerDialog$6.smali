.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$6;
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

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$6;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x6

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$6;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    const/4 v1, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x1

    const/4 v1, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$6;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

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

    const/4 v0, 0x2

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x5
.end method
