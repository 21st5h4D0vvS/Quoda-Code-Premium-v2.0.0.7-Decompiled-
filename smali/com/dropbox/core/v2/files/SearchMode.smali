.class public final enum Lcom/dropbox/core/v2/files/SearchMode;
.super Ljava/lang/Enum;
.source "SearchMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SearchMode$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/SearchMode;

.field public static final enum DELETED_FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

.field public static final enum FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

.field public static final enum FILENAME_AND_CONTENT:Lcom/dropbox/core/v2/files/SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/files/SearchMode;

    const-string v1, "FILENAME"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/files/SearchMode;

    const-string v1, "FILENAME_AND_CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME_AND_CONTENT:Lcom/dropbox/core/v2/files/SearchMode;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/files/SearchMode;

    const-string v1, "DELETED_FILENAME"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchMode;->DELETED_FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/files/SearchMode;

    sget-object v1, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME_AND_CONTENT:Lcom/dropbox/core/v2/files/SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/SearchMode;->DELETED_FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/files/SearchMode;->$VALUES:[Lcom/dropbox/core/v2/files/SearchMode;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/files/SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/SearchMode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode;->$VALUES:[Lcom/dropbox/core/v2/files/SearchMode;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/SearchMode;

    return-object v0
.end method
