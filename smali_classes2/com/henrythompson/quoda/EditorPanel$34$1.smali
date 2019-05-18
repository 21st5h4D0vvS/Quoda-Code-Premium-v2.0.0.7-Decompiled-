.class Lcom/henrythompson/quoda/EditorPanel$34$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel$34;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorPanel$34;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel$34;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$34$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$34$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$34;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$34$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$34;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$34;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2700(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x7
.end method
