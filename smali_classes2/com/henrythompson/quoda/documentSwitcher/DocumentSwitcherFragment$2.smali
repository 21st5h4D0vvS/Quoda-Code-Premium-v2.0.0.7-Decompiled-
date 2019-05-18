.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$2;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$2;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->access$000(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->search(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method
