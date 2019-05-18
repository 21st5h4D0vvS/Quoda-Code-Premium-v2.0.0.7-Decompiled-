.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private mDocument:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    const/4 v0, 0x7
.end method

.method public getDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    return-object v0

    const/4 v1, 0x6
.end method

.method public length()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSearchItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method
