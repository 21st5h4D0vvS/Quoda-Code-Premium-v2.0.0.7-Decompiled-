.class Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/internal/ShareContentValidation$1;

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 2
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;

    .prologue
    .line 459
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share link content with quote using the share api"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 2
    .param p1, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;

    .prologue
    .line 454
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share ShareMediaContent using the share api"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 433
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$400(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 434
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 2
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share video content with place IDs using the share api"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share video content with people IDs using the share api"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share video content with referrer URL using the share api"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    return-void
.end method
