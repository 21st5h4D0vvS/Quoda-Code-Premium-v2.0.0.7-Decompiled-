.class Lcom/henrythompson/quoda/FileBrowserPanel$12;
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

.field final synthetic val$defaultAuthorisationAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$12;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$12;->val$defaultAuthorisationAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$12;->val$defaultAuthorisationAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method
