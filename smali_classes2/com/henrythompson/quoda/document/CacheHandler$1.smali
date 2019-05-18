.class Lcom/henrythompson/quoda/document/CacheHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/document/CacheHandler;->addCommandToQueue(Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/document/CacheHandler;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/CacheHandler;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/document/CacheHandler$1;->this$0:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v4, 0x3

    :try_start_0
    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->access$100()Ljava/lang/Thread;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x6

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x4

    :try_start_2
    iget v1, v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mCommand:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/document/CacheHandler$1;->this$0:Lcom/henrythompson/quoda/document/CacheHandler;

    iget-object v2, v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/document/CacheHandler;->access$200(Lcom/henrythompson/quoda/document/CacheHandler;Lcom/henrythompson/quoda/document/Document;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    const/4 v3, 0x4

    const/4 v4, 0x5

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v1, 0x5

    const/4 v4, 0x0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    const/4 v4, 0x5

    :cond_1
    iget v1, v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mCommand:I

    if-nez v1, :cond_2

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/document/CacheHandler$1;->this$0:Lcom/henrythompson/quoda/document/CacheHandler;

    iget-object v2, v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/document/CacheHandler;->access$300(Lcom/henrythompson/quoda/document/CacheHandler;Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v3, 0x5

    const/4 v4, 0x1

    :cond_2
    iget v1, v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mCommand:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/document/CacheHandler$1;->this$0:Lcom/henrythompson/quoda/document/CacheHandler;

    iget-object v2, v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/document/CacheHandler;->access$400(Lcom/henrythompson/quoda/document/CacheHandler;Lcom/henrythompson/quoda/document/Document;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v4, 0x2

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/henrythompson/quoda/document/CacheHandler;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    const/4 v4, 0x7

    nop

    return-void

    const/4 v1, 0x3
.end method
