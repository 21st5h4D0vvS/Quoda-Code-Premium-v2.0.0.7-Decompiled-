.class public final enum Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
.super Ljava/lang/Enum;
.source "PaperEnabledPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

.field public static final enum DISABLED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

.field public static final enum ENABLED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

.field public static final enum UNSPECIFIED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->DISABLED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->ENABLED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->UNSPECIFIED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->DISABLED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->ENABLED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->UNSPECIFIED:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    return-object v0
.end method
