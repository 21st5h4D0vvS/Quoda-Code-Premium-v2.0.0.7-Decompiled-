.class Lcom/henrythompson/quoda/document/DocumentsManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/document/DocumentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/document/DocumentsManager;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/DocumentsManager;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$4;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/document/DocumentsManager$4;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-static {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$100(Lcom/henrythompson/quoda/document/DocumentsManager;)V

    const/4 v4, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$200()Lcom/henrythompson/quoda/document/CacheHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$4;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->updateDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v4, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$400()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$4;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-static {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$300(Lcom/henrythompson/quoda/document/DocumentsManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x1

    nop

    return-void

    const/4 v3, 0x6
.end method
