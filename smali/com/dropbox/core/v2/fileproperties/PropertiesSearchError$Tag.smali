.class public final enum Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;
.super Ljava/lang/Enum;
.source "PropertiesSearchError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

.field public static final enum PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    const-string v1, "PROPERTY_GROUP_LOOKUP"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->$VALUES:[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->$VALUES:[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    return-object v0
.end method
