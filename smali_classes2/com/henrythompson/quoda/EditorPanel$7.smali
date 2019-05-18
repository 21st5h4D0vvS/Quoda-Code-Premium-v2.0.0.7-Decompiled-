.class Lcom/henrythompson/quoda/EditorPanel$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/EditorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$7;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$7;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->onReplaceAllClick()V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method
