.class public final enum Lcom/dropbox/core/v2/team/MembersSuspendError;
.super Ljava/lang/Enum;
.source "MembersSuspendError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSuspendError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MembersSuspendError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersSuspendError;

.field public static final enum SUSPEND_INACTIVE_USER:Lcom/dropbox/core/v2/team/MembersSuspendError;

.field public static final enum SUSPEND_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSuspendError;

.field public static final enum TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSuspendError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSuspendError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSuspendError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v1, "USER_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MembersSuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v1, "USER_NOT_IN_TEAM"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MembersSuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/MembersSuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v1, "SUSPEND_INACTIVE_USER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/MembersSuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_INACTIVE_USER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v1, "SUSPEND_LAST_ADMIN"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/MembersSuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v1, "TEAM_LICENSE_LIMIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersSuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/team/MembersSuspendError;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSuspendError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSuspendError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_INACTIVE_USER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSuspendError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSuspendError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersSuspendError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSuspendError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersSuspendError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersSuspendError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersSuspendError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersSuspendError;

    return-object v0
.end method
