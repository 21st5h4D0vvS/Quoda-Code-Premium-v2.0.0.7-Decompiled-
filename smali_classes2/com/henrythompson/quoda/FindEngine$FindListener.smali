.class public interface abstract Lcom/henrythompson/quoda/FindEngine$FindListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FindEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FindListener"
.end annotation


# virtual methods
.method public abstract onFindFinished(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/FindEngine$FindResult;",
            ">;Z)V"
        }
    .end annotation
.end method
