.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;
.super Ljava/lang/Object;


# instance fields
.field private mDocument:Lcom/henrythompson/quoda/document/Document;

.field private mSaved:Z

.field private mTitle:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Landroid/text/Spanned;Lcom/henrythompson/quoda/document/Document;)V
    .locals 2
    .param p1    # Landroid/text/Spanned;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/henrythompson/quoda/document/Document;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    iput-object p2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mTitle:Landroid/text/Spanned;

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mSaved:Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 3
    .param p1    # Lcom/henrythompson/quoda/document/Document;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v2, 0x2

    new-instance v0, Landroid/text/SpannedString;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mTitle:Landroid/text/Spanned;

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mSaved:Z

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x6
.end method


# virtual methods
.method public getDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mDocument:Lcom/henrythompson/quoda/document/Document;

    return-object v0

    const/4 v0, 0x2
.end method

.method public getTitle()Landroid/text/Spanned;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->mTitle:Landroid/text/Spanned;

    return-object v0

    const/4 v0, 0x5
.end method
