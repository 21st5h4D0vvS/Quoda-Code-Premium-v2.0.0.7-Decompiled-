.class public final enum Lorg/joni/constants/CCVALTYPE;
.super Ljava/lang/Enum;
.source "CCVALTYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joni/constants/CCVALTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joni/constants/CCVALTYPE;

.field public static final enum CLASS:Lorg/joni/constants/CCVALTYPE;

.field public static final enum CODE_POINT:Lorg/joni/constants/CCVALTYPE;

.field public static final enum SB:Lorg/joni/constants/CCVALTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/joni/constants/CCVALTYPE;

    const-string v1, "SB"

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/CCVALTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    .line 24
    new-instance v0, Lorg/joni/constants/CCVALTYPE;

    const-string v1, "CODE_POINT"

    invoke-direct {v0, v1, v3}, Lorg/joni/constants/CCVALTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    .line 25
    new-instance v0, Lorg/joni/constants/CCVALTYPE;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v4}, Lorg/joni/constants/CCVALTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/CCVALTYPE;->CLASS:Lorg/joni/constants/CCVALTYPE;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/joni/constants/CCVALTYPE;

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->CLASS:Lorg/joni/constants/CCVALTYPE;

    aput-object v1, v0, v4

    sput-object v0, Lorg/joni/constants/CCVALTYPE;->$VALUES:[Lorg/joni/constants/CCVALTYPE;

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

.method public static valueOf(Ljava/lang/String;)Lorg/joni/constants/CCVALTYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/joni/constants/CCVALTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joni/constants/CCVALTYPE;

    return-object v0
.end method

.method public static values()[Lorg/joni/constants/CCVALTYPE;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/joni/constants/CCVALTYPE;->$VALUES:[Lorg/joni/constants/CCVALTYPE;

    invoke-virtual {v0}, [Lorg/joni/constants/CCVALTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joni/constants/CCVALTYPE;

    return-object v0
.end method
