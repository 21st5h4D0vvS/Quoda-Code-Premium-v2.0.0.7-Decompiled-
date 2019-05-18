.class public abstract Lorg/joni/SearchAlgorithm;
.super Ljava/lang/Object;
.source "SearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joni/SearchAlgorithm$SLOW_IC;
    }
.end annotation


# static fields
.field public static final BM:Lorg/joni/SearchAlgorithm;

.field public static final BM_NOT_REV:Lorg/joni/SearchAlgorithm;

.field public static final MAP:Lorg/joni/SearchAlgorithm;

.field public static final MAP_SB:Lorg/joni/SearchAlgorithm;

.field public static final NONE:Lorg/joni/SearchAlgorithm;

.field public static final SLOW:Lorg/joni/SearchAlgorithm;

.field public static final SLOW_IC_SB:Lorg/joni/SearchAlgorithm;

.field public static final SLOW_SB:Lorg/joni/SearchAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/joni/SearchAlgorithm$1;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$1;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->NONE:Lorg/joni/SearchAlgorithm;

    .line 48
    new-instance v0, Lorg/joni/SearchAlgorithm$2;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$2;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->SLOW:Lorg/joni/SearchAlgorithm;

    .line 116
    new-instance v0, Lorg/joni/SearchAlgorithm$3;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$3;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->SLOW_SB:Lorg/joni/SearchAlgorithm;

    .line 253
    new-instance v0, Lorg/joni/SearchAlgorithm$4;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$4;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->SLOW_IC_SB:Lorg/joni/SearchAlgorithm;

    .line 316
    new-instance v0, Lorg/joni/SearchAlgorithm$5;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$5;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->BM:Lorg/joni/SearchAlgorithm;

    .line 416
    new-instance v0, Lorg/joni/SearchAlgorithm$6;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$6;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->BM_NOT_REV:Lorg/joni/SearchAlgorithm;

    .line 487
    new-instance v0, Lorg/joni/SearchAlgorithm$7;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$7;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->MAP:Lorg/joni/SearchAlgorithm;

    .line 520
    new-instance v0, Lorg/joni/SearchAlgorithm$8;

    invoke-direct {v0}, Lorg/joni/SearchAlgorithm$8;-><init>()V

    sput-object v0, Lorg/joni/SearchAlgorithm;->MAP_SB:Lorg/joni/SearchAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract search(Lorg/joni/Regex;[BIII)I
.end method

.method public abstract searchBackward(Lorg/joni/Regex;[BIIIIII)I
.end method
