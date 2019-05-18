.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->onReceiveEvent(I[Ljava/lang/Object;)V
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

    const/4 v0, 0x3

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$6;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$6;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->access$000(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->refresh()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x3
.end method
