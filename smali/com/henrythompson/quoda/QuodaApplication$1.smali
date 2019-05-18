.class final Lcom/henrythompson/quoda/QuodaApplication$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/QuodaApplication;->performOnBackgroundThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/QuodaApplication$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/QuodaApplication$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method
