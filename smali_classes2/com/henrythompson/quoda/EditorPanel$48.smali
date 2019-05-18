.class Lcom/henrythompson/quoda/EditorPanel$48;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->saveFileAs(Lcom/henrythompson/quoda/document/Document;)V
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

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$48;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$48;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$48;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$48;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->saveFile(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x2
.end method
