.class synthetic Lcom/dropbox/core/v2/team/GroupDeleteError$1;
.super Ljava/lang/Object;
.source "GroupDeleteError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupDeleteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$team$GroupDeleteError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/dropbox/core/v2/team/GroupDeleteError;->values()[Lcom/dropbox/core/v2/team/GroupDeleteError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/team/GroupDeleteError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupDeleteError:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/team/GroupDeleteError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupDeleteError:[I

    sget-object v1, Lcom/dropbox/core/v2/team/GroupDeleteError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupDeleteError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupDeleteError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/team/GroupDeleteError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupDeleteError:[I

    sget-object v1, Lcom/dropbox/core/v2/team/GroupDeleteError;->OTHER:Lcom/dropbox/core/v2/team/GroupDeleteError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupDeleteError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/team/GroupDeleteError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupDeleteError:[I

    sget-object v1, Lcom/dropbox/core/v2/team/GroupDeleteError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupDeleteError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupDeleteError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dropbox/core/v2/team/GroupDeleteError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupDeleteError:[I

    sget-object v1, Lcom/dropbox/core/v2/team/GroupDeleteError;->GROUP_ALREADY_DELETED:Lcom/dropbox/core/v2/team/GroupDeleteError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupDeleteError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
