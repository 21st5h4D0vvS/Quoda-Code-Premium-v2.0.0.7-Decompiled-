.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$5;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-string v1, "show_open_file_drawer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v3, 0x4
.end method
