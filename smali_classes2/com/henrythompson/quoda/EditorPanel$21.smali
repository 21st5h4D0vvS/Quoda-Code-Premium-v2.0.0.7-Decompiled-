.class Lcom/henrythompson/quoda/EditorPanel$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromLocalFile(Lcom/henrythompson/quoda/document/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$21;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$21;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$21;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$21;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2000(Lcom/henrythompson/quoda/EditorPanel;ZLjava/lang/String;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method
