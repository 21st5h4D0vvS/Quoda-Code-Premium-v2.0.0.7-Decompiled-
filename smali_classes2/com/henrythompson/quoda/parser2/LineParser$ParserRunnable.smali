.class Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/parser2/LineParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserRunnable"
.end annotation


# instance fields
.field mChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

.field final synthetic this$0:Lcom/henrythompson/quoda/parser2/LineParser;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/parser2/LineParser;Lcom/henrythompson/quoda/UndoStack$TextChange;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/UndoStack$TextChange;->clone()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->mChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v9, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$000(Lcom/henrythompson/quoda/parser2/LineParser;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v9, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    iget-object v7, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->mChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-static {v6, v7}, Lcom/henrythompson/quoda/parser2/LineParser;->access$100(Lcom/henrythompson/quoda/parser2/LineParser;Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v9, 0x2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v9, 0x5

    sub-long v0, v2, v4

    const/4 v9, 0x6

    const-string v6, "Parser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse finished in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$300(Lcom/henrythompson/quoda/parser2/LineParser;)V

    const/4 v9, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$400(Lcom/henrythompson/quoda/parser2/LineParser;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    monitor-enter v7

    const/4 v9, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$400(Lcom/henrythompson/quoda/parser2/LineParser;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$400(Lcom/henrythompson/quoda/parser2/LineParser;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$400(Lcom/henrythompson/quoda/parser2/LineParser;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/henrythompson/quoda/parser2/LineParser;->access$402(Lcom/henrythompson/quoda/parser2/LineParser;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$500(Lcom/henrythompson/quoda/parser2/LineParser;)V

    const/4 v9, 0x7

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x6

    nop

    return-void

    const/4 v9, 0x4

    const/4 v9, 0x7

    :cond_1
    iget-object v6, p0, Lcom/henrythompson/quoda/parser2/LineParser$ParserRunnable;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-static {v6}, Lcom/henrythompson/quoda/parser2/LineParser;->access$200(Lcom/henrythompson/quoda/parser2/LineParser;)V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v9, 0x7

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
