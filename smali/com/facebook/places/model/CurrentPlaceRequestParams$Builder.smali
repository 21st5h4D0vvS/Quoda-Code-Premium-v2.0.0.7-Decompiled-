.class public Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
.super Ljava/lang/Object;
.source "CurrentPlaceRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private location:Landroid/location/Location;

.field private minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field private scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->location:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;

    .prologue
    .line 127
    iget v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->limit:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public build()Lcom/facebook/places/model/CurrentPlaceRequestParams;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/CurrentPlaceRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceRequestParams$1;)V

    return-object v0
.end method

.method public setLimit(I)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->limit:I

    .line 180
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->location:Landroid/location/Location;

    .line 145
    return-object p0
.end method

.method public setMinConfidenceLevel(Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .locals 0
    .param p1, "minConfidenceLevel"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 169
    return-object p0
.end method

.method public setScanMode(Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .locals 0
    .param p1, "scanMode"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 159
    return-object p0
.end method
