.class public Lcom/nineoldandroids/animation/ArgbEvaluator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nineoldandroids/animation/TypeEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v5, v8, 0x18

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v9, v10, 0xff

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v7, v10, 0xff

    and-int/lit16 v6, v8, 0xff

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shr-int/lit8 v0, v3, 0x18

    shr-int/lit8 v10, v3, 0x10

    and-int/lit16 v4, v10, 0xff

    shr-int/lit8 v10, v3, 0x8

    and-int/lit16 v2, v10, 0xff

    and-int/lit16 v1, v3, 0xff

    sub-int v10, v0, v5

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0x18

    sub-int v11, v4, v9

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v9

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    sub-int v11, v2, v7

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v7

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    sub-int v11, v1, v6

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v6

    or-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    return-object v10

    const/4 v8, 0x7
.end method
