.class public final enum Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;
.super Ljava/lang/Enum;
.source "TeamNamespacesListContinueError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

.field public static final enum INVALID_CURSOR:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    const-string v1, "INVALID_CURSOR"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->OTHER:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->OTHER:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->$VALUES:[Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->$VALUES:[Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    return-object v0
.end method