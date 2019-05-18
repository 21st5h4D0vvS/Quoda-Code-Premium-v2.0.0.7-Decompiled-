.class Lcom/henrythompson/quoda/document/DocumentsManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/document/DocumentsManager;->sortDocuments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/henrythompson/quoda/document/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/document/DocumentsManager;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/DocumentsManager;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$1;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public compare(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/document/Document;)I
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2

    const/4 v3, 0x3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    check-cast p1, Lcom/henrythompson/quoda/document/Document;

    check-cast p2, Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {p0, p1, p2}, Lcom/henrythompson/quoda/document/DocumentsManager$1;->compare(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/document/Document;)I

    move-result v0

    return v0

    const/4 v1, 0x5
.end method
