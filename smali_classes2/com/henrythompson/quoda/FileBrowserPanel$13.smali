.class Lcom/henrythompson/quoda/FileBrowserPanel$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

.field final synthetic val$auth:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field final synthetic val$defaultAuthorisationAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$13;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$13;->val$auth:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    iput-object p3, p0, Lcom/henrythompson/quoda/FileBrowserPanel$13;->val$defaultAuthorisationAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$13;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$13;->val$auth:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$13;->val$defaultAuthorisationAction:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$800(Lcom/henrythompson/quoda/FileBrowserPanel;Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v1, 0x7
.end method
