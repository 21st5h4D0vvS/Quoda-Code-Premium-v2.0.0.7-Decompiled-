.class public final enum Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/SFTPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthenticationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

.field public static final enum KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

.field public static final enum PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    new-instance v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const-string v1, "KEY"

    invoke-direct {v0, v1, v3}, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    sget-object v1, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->$VALUES:[Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    const-class v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    return-object v0

    const/4 v0, 0x3
.end method

.method public static values()[Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->$VALUES:[Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    invoke-virtual {v0}, [Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    return-object v0

    const/4 v1, 0x3
.end method
