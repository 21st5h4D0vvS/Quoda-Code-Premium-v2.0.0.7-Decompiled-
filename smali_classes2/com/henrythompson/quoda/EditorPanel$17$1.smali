.class Lcom/henrythompson/quoda/EditorPanel$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorPanel$17;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel$17;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$17$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$17$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->configureActionbar()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method
