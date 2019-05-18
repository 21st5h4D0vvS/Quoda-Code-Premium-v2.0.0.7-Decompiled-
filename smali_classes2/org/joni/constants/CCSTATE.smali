.class public final enum Lorg/joni/constants/CCSTATE;
.super Ljava/lang/Enum;
.source "CCSTATE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joni/constants/CCSTATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joni/constants/CCSTATE;

.field public static final enum COMPLETE:Lorg/joni/constants/CCSTATE;

.field public static final enum RANGE:Lorg/joni/constants/CCSTATE;

.field public static final enum START:Lorg/joni/constants/CCSTATE;

.field public static final enum VALUE:Lorg/joni/constants/CCSTATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/joni/constants/CCSTATE;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/CCSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    .line 24
    new-instance v0, Lorg/joni/constants/CCSTATE;

    const-string v1, "RANGE"

    invoke-direct {v0, v1, v3}, Lorg/joni/constants/CCSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCSTATE;->RANGE:Lorg/joni/constants/CCSTATE;

    .line 25
    new-instance v0, Lorg/joni/constants/CCSTATE;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lorg/joni/constants/CCSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCSTATE;->COMPLETE:Lorg/joni/constants/CCSTATE;

    .line 26
    new-instance v0, Lorg/joni/constants/CCSTATE;

    const-string v1, "START"

    invoke-direct {v0, v1, v5}, Lorg/joni/constants/CCSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCSTATE;->START:Lorg/joni/constants/CCSTATE;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/joni/constants/CCSTATE;

    sget-object v1, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    aput-object v1, v0, v2

    sget-object v1, Lorg/joni/constants/CCSTATE;->RANGE:Lorg/joni/constants/CCSTATE;

    aput-object v1, v0, v3

    sget-object v1, Lorg/joni/constants/CCSTATE;->COMPLETE:Lorg/joni/constants/CCSTATE;

    aput-object v1, v0, v4

    sget-object v1, Lorg/joni/constants/CCSTATE;->START:Lorg/joni/constants/CCSTATE;

    aput-object v1, v0, v5

    sput-object v0, Lorg/joni/constants/CCSTATE;->$VALUES:[Lorg/joni/constants/CCSTATE;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/joni/constants/CCSTATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/joni/constants/CCSTATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joni/constants/CCSTATE;

    return-object v0
.end method

.method public static values()[Lorg/joni/constants/CCSTATE;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/joni/constants/CCSTATE;->$VALUES:[Lorg/joni/constants/CCSTATE;

    invoke-virtual {v0}, [Lorg/joni/constants/CCSTATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joni/constants/CCSTATE;

    return-object v0
.end method
