.class Lcom/henrythompson/quoda/EditorPanel$35$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel$35;->onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorPanel$35;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel$35;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$35$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$35;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$35$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$35$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$35;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel$35;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$35$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$35$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$35;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorPanel$35;->val$encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2700(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v1, 0x6
.end method
