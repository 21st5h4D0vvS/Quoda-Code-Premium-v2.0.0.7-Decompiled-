.class public final enum Lorg/joni/constants/Reduce$ReduceType;
.super Ljava/lang/Enum;
.source "Reduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/constants/Reduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReduceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joni/constants/Reduce$ReduceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum A:Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum AQ:Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum ASIS:Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum DEL:Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum PQ_Q:Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum P_QQ:Lorg/joni/constants/Reduce$ReduceType;

.field public static final enum QQ:Lorg/joni/constants/Reduce$ReduceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "ASIS"

    invoke-direct {v0, v1, v3}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->ASIS:Lorg/joni/constants/Reduce$ReduceType;

    .line 34
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v4}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    .line 35
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "A"

    invoke-direct {v0, v1, v5}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->A:Lorg/joni/constants/Reduce$ReduceType;

    .line 36
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "AQ"

    invoke-direct {v0, v1, v6}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    .line 37
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "QQ"

    invoke-direct {v0, v1, v7}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->QQ:Lorg/joni/constants/Reduce$ReduceType;

    .line 38
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "P_QQ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->P_QQ:Lorg/joni/constants/Reduce$ReduceType;

    .line 39
    new-instance v0, Lorg/joni/constants/Reduce$ReduceType;

    const-string v1, "PQ_Q"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/Reduce$ReduceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->PQ_Q:Lorg/joni/constants/Reduce$ReduceType;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v1, Lorg/joni/constants/Reduce$ReduceType;->ASIS:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/joni/constants/Reduce$ReduceType;->A:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/joni/constants/Reduce$ReduceType;->QQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->P_QQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->PQ_Q:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/joni/constants/Reduce$ReduceType;->$VALUES:[Lorg/joni/constants/Reduce$ReduceType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/joni/constants/Reduce$ReduceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lorg/joni/constants/Reduce$ReduceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joni/constants/Reduce$ReduceType;

    return-object v0
.end method

.method public static values()[Lorg/joni/constants/Reduce$ReduceType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/joni/constants/Reduce$ReduceType;->$VALUES:[Lorg/joni/constants/Reduce$ReduceType;

    invoke-virtual {v0}, [Lorg/joni/constants/Reduce$ReduceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joni/constants/Reduce$ReduceType;

    return-object v0
.end method
