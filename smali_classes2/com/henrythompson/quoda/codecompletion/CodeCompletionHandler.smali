.class public abstract Lcom/henrythompson/quoda/codecompletion/CodeCompletionHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public abstract getCodeCompletions(Lcom/henrythompson/quoda/document/Document;Landroid/text/Editable;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/document/Document;",
            "Landroid/text/Editable;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;"
        }
    .end annotation
.end method
