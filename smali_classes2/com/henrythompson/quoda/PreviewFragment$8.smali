.class Lcom/henrythompson/quoda/PreviewFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/PreviewFragment;->loadDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/PreviewFragment;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/PreviewFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$8;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    iput-object p2, p0, Lcom/henrythompson/quoda/PreviewFragment$8;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/henrythompson/quoda/PreviewFragment$8;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x5

    const/4 v6, 0x4

    :try_start_0
    new-instance v2, Lorg/markdown4j/Markdown4jProcessor;

    invoke-direct {v2}, Lorg/markdown4j/Markdown4jProcessor;-><init>()V

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/PreviewFragment$8;->val$source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/markdown4j/Markdown4jProcessor;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/PreviewFragment$8;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/henrythompson/quoda/PreviewFragment$8$1;

    invoke-direct {v4, p0, v1}, Lcom/henrythompson/quoda/PreviewFragment$8$1;-><init>(Lcom/henrythompson/quoda/PreviewFragment$8;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x6

    :goto_0
    nop

    return-void

    const/4 v6, 0x4

    const/4 v6, 0x4

    :catch_0
    move-exception v0

    const/4 v6, 0x3

    const-string v3, "PreviewFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Markdown4j threw an IO Exception with message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v1, 0x7
.end method
