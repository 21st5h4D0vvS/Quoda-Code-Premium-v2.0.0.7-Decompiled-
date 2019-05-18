.class public Lcom/henrythompson/quoda/snippet/Snippet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mLanguages:[Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mTabTrigger:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mUuid:Ljava/lang/String;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mUuid:Ljava/lang/String;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mTabTrigger:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    const/4 v0, 0x5
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mContent:Ljava/lang/String;

    :goto_0
    return-object v0

    const/4 v1, 0x1

    :cond_0
    const-string v0, ""

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mDescription:Ljava/lang/String;

    :goto_0
    return-object v0

    const/4 v1, 0x2

    :cond_0
    const-string v0, ""

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLanguages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLanguages:[Ljava/lang/String;

    :goto_0
    return-object v0

    const/4 v1, 0x6

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLocation:Ljava/lang/String;

    :goto_0
    return-object v0

    const/4 v0, 0x7

    :cond_0
    const-string v0, "/"

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mName:Ljava/lang/String;

    :goto_0
    return-object v0

    const/4 v0, 0x3

    :cond_0
    const-string v0, ""

    goto :goto_0

    const/4 v1, 0x6
.end method

.method public getParentTabstop(Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x5

    new-instance v0, Lcom/henrythompson/quoda/snippet/SnippetParser;

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mContent:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/henrythompson/quoda/snippet/SnippetParser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parse()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method public getTabTrigger()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mTabTrigger:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mTabTrigger:Ljava/lang/String;

    :goto_0
    return-object v0

    const/4 v1, 0x6

    :cond_0
    const-string v0, ""

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mUuid:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x5
.end method

.method public length()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mTabTrigger:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mContent:Ljava/lang/String;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mDescription:Ljava/lang/String;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLanguages:[Ljava/lang/String;

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setLanguages([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLanguages:[Ljava/lang/String;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mLocation:Ljava/lang/String;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mName:Ljava/lang/String;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setTabTrigger(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mTabTrigger:Ljava/lang/String;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/Snippet;->mTabTrigger:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x4

    const/4 v0, 0x0

    return-object v0

    const/4 v0, 0x0
.end method
