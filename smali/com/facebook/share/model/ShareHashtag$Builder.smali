.class public Lcom/facebook/share/model/ShareHashtag$Builder;
.super Ljava/lang/Object;
.source "ShareHashtag.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareHashtag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/model/ShareHashtag;",
        "Lcom/facebook/share/model/ShareHashtag$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private hashtag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareHashtag$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareHashtag$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareHashtag;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/facebook/share/model/ShareHashtag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareHashtag;-><init>(Lcom/facebook/share/model/ShareHashtag$Builder;Lcom/facebook/share/model/ShareHashtag$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    return-object v0
.end method

.method public getHashtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareHashtag$Builder;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 104
    const-class v0, Lcom/facebook/share/model/ShareHashtag;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareHashtag;

    .line 104
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareHashtag$Builder;->readFrom(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;
    .locals 1
    .param p1, "model"    # Lcom/facebook/share/model/ShareHashtag;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 100
    .end local p0    # "this":Lcom/facebook/share/model/ShareHashtag$Builder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/ShareHashtag$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lcom/facebook/share/model/ShareHashtag;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->readFrom(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;
    .locals 0
    .param p1, "hashtag"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    .line 84
    return-object p0
.end method
