.class Lcom/henrythompson/quoda/parser2/LineParser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/parser2/LineParser;->registerTextChange(Lcom/henrythompson/quoda/UndoStack$TextChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/parser2/LineParser;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/parser2/LineParser;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/parser2/LineParser$1;->this$0:Lcom/henrythompson/quoda/parser2/LineParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x7

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v2, 0x6

    return-object v0

    const/4 v2, 0x5
.end method
