.class public final Lcom/melnykov/fab/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_fab_colorNormal:I = 0x0

.field public static final FloatingActionButton_fab_colorPressed:I = 0x1

.field public static final FloatingActionButton_fab_colorRipple:I = 0x2

.field public static final FloatingActionButton_fab_shadow:I = 0x3

.field public static final FloatingActionButton_fab_type:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    nop

    return-void

    const/4 v0, 0x1

    nop

    :array_0
    .array-data 4
        0x7f030087
        0x7f030088
        0x7f030089
        0x7f03008a
        0x7f03008b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method
