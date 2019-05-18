.class Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/AuthNeededException;->runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field final synthetic val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

.field final synthetic val$onAuthorised:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;->this$0:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;->val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;->val$onAuthorised:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;->val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->removeAuthHandler()V

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;->val$onAuthorised:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method
