.class Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "PaperDocSharingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;
    }
.end annotation


# instance fields
.field protected final sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "sharingPolicy"    # Lcom/dropbox/core/v2/paper/SharingPolicy;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 34
    if-nez p2, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharingPolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    .line 78
    .local v0, "other":Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    .line 79
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/SharingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    :cond_5
    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingPolicy()Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 63
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
