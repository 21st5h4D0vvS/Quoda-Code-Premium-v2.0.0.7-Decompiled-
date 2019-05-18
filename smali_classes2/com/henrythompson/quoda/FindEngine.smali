.class public Lcom/henrythompson/quoda/FindEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/FindEngine$FindListener;,
        Lcom/henrythompson/quoda/FindEngine$FindResult;,
        Lcom/henrythompson/quoda/FindEngine$FindTask;
    }
.end annotation


# static fields
.field private static mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public static find(Ljava/lang/String;Lcom/henrythompson/quoda/FindEngine$FindListener;Z)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x4

    sget-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    if-eqz v1, :cond_0

    const/4 v3, 0x7

    sget-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/FindEngine$FindTask;->cancel(Z)Z

    const/4 v3, 0x2

    sput-object v0, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    const/4 v3, 0x2

    :cond_0
    new-instance v1, Lcom/henrythompson/quoda/FindEngine$FindTask;

    invoke-direct {v1, p1}, Lcom/henrythompson/quoda/FindEngine$FindTask;-><init>(Lcom/henrythompson/quoda/FindEngine$FindListener;)V

    sput-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    const/4 v3, 0x7

    sget-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    invoke-static {v1, p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->access$002(Lcom/henrythompson/quoda/FindEngine$FindTask;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x4

    sget-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/FindEngine$FindTask;->access$102(Lcom/henrythompson/quoda/FindEngine$FindTask;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x4

    sget-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    invoke-static {v1, p2}, Lcom/henrythompson/quoda/FindEngine$FindTask;->access$202(Lcom/henrythompson/quoda/FindEngine$FindTask;Z)Z

    const/4 v3, 0x1

    sget-object v1, Lcom/henrythompson/quoda/FindEngine;->mTask:Lcom/henrythompson/quoda/FindEngine$FindTask;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x6

    nop

    return-void

    const/4 v3, 0x5
.end method
