.class public interface abstract Lorg/joni/constants/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joni/constants/Reduce$ReduceType;
    }
.end annotation


# static fields
.field public static final PopularQStr:[Ljava/lang/String;

.field public static final REDUCE_TABLE:[[Lorg/joni/constants/Reduce$ReduceType;

.field public static final ReduceQStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [[Lorg/joni/constants/Reduce$ReduceType;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->A:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->A:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->QQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->ASIS:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->P_QQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->P_QQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->A:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->A:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->ASIS:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->P_QQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/joni/constants/Reduce$ReduceType;

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->ASIS:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v2, v5

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->PQ_Q:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v2, v6

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v2, v7

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v2, v8

    sget-object v3, Lorg/joni/constants/Reduce$ReduceType;->AQ:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lorg/joni/constants/Reduce$ReduceType;->DEL:Lorg/joni/constants/Reduce$ReduceType;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/joni/constants/Reduce;->REDUCE_TABLE:[[Lorg/joni/constants/Reduce$ReduceType;

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "*"

    aput-object v1, v0, v6

    const-string v1, "+"

    aput-object v1, v0, v7

    const-string v1, "??"

    aput-object v1, v0, v8

    const-string v1, "*?"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "+?"

    aput-object v2, v0, v1

    sput-object v0, Lorg/joni/constants/Reduce;->PopularQStr:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, "*"

    aput-object v1, v0, v7

    const-string v1, "*?"

    aput-object v1, v0, v8

    const-string v1, "??"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "+ and ??"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+? and ?"

    aput-object v2, v0, v1

    sput-object v0, Lorg/joni/constants/Reduce;->ReduceQStr:[Ljava/lang/String;

    return-void
.end method
