.class public interface abstract Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DocumentSwitcherListener"
.end annotation


# virtual methods
.method public abstract onDisplayDocumentClick(Lcom/henrythompson/quoda/document/Document;)V
    .param p1    # Lcom/henrythompson/quoda/document/Document;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDocumentCloseClick(Lcom/henrythompson/quoda/document/Document;)V
    .param p1    # Lcom/henrythompson/quoda/document/Document;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
