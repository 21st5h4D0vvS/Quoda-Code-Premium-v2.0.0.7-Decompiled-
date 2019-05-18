.class public final Lorg/jcodings/specific/GB18030Encoding;
.super Lorg/jcodings/MultiByteEncoding;
.source "GB18030Encoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/specific/GB18030Encoding$State;
    }
.end annotation


# static fields
.field private static final C1:I = 0x0

.field private static final C2:I = 0x1

.field private static final C4:I = 0x2

.field private static final CM:I = 0x3

.field private static final GB18030:Ljava/lang/String; = "GB18030"

.field private static final GB18030Trans:[[I

.field private static final GB18030_MAP:[I

.field public static final INSTANCE:Lorg/jcodings/specific/GB18030Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 403
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    .line 422
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding;->GB18030Trans:[[I

    .line 497
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding;

    invoke-direct {v0}, Lorg/jcodings/specific/GB18030Encoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding;->INSTANCE:Lorg/jcodings/specific/GB18030Encoding;

    return-void

    .line 403
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
    .end array-data

    .line 422
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        -0x2
    .end array-data

    :array_2
    .array-data 4
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
    .end array-data

    :array_3
    .array-data 4
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        -0x2
    .end array-data

    :array_4
    .array-data 4
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 32
    const-string v1, "GB18030"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    sget-object v5, Lorg/jcodings/specific/GB18030Encoding;->GB18030Trans:[[I

    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->AsciiCtypeTable:[S

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jcodings/MultiByteEncoding;-><init>(Ljava/lang/String;II[I[[I[S)V

    .line 33
    return-void
.end method

.method private lengthForThreeUptoFour([BIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "s"    # I

    .prologue
    const/4 v0, -0x1

    .line 58
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/jcodings/specific/GB18030Encoding;->missing(I)I

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v1, p0, Lorg/jcodings/specific/GB18030Encoding;->Trans:[[I

    aget-object v1, v1, p4

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p4, v1, v2

    .line 60
    if-gez p4, :cond_2

    if-ne p4, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jcodings/specific/GB18030Encoding;->missing(I)I

    move-result v0

    goto :goto_0

    .line 62
    :cond_3
    iget-object v1, p0, Lorg/jcodings/specific/GB18030Encoding;->Trans:[[I

    aget-object v1, v1, p4

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p4, v1, v2

    .line 63
    if-ne p4, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private lengthForTwoUptoFour([BIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "s"    # I

    .prologue
    const/4 v0, -0x1

    .line 51
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jcodings/specific/GB18030Encoding;->missing(I)I

    move-result v0

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    iget-object v1, p0, Lorg/jcodings/specific/GB18030Encoding;->Trans:[[I

    aget-object v1, v1, p4

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p4, v1, v2

    .line 53
    if-gez p4, :cond_2

    if-ne p4, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jcodings/specific/GB18030Encoding;->lengthForThreeUptoFour([BIII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public codeToMbc(I[BI)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/specific/GB18030Encoding;->mb4CodeToMbc(I[BI)I

    move-result v0

    return v0
.end method

.method public codeToMbcLength(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/jcodings/specific/GB18030Encoding;->mb4CodeToMbcLength(I)I

    move-result v0

    return v0
.end method

.method public ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1
    .param p1, "ctype"    # I
    .param p2, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "GB18030"

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/jcodings/specific/GB18030Encoding;->mb4IsCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public isReverseMatchAllowed([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 395
    sget-object v0, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leftAdjustCharHead([BIII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 136
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->START:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 138
    .local v1, "state":Lorg/jcodings/specific/GB18030Encoding$State;
    move v0, p3

    .local v0, "p_":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 139
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$1;->$SwitchMap$org$jcodings$specific$GB18030Encoding$State:[I

    invoke-virtual {v1}, Lorg/jcodings/specific/GB18030Encoding$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 141
    :pswitch_0
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 390
    .end local p3    # "s":I
    :goto_2
    :pswitch_1
    return p3

    .line 143
    .restart local p3    # "s":I
    :pswitch_2
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C2:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 144
    goto :goto_1

    .line 145
    :pswitch_3
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 146
    goto :goto_1

    .line 147
    :pswitch_4
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 152
    :pswitch_5
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 156
    :pswitch_6
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 161
    :pswitch_7
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    goto :goto_1

    .line 165
    :pswitch_8
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 170
    :pswitch_9
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    goto :goto_1

    .line 173
    :pswitch_a
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 174
    goto :goto_1

    .line 175
    :pswitch_b
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 180
    :pswitch_c
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5

    goto :goto_1

    .line 183
    :pswitch_d
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 184
    :pswitch_e
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 189
    :pswitch_f
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6

    goto :goto_1

    .line 193
    :pswitch_10
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 198
    :pswitch_11
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7

    goto :goto_1

    .line 200
    :pswitch_12
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 201
    :pswitch_13
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 202
    goto :goto_1

    .line 203
    :pswitch_14
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    goto :goto_1

    .line 208
    :pswitch_15
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_1

    .line 210
    :pswitch_16
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 211
    :pswitch_17
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 212
    goto/16 :goto_1

    .line 213
    :pswitch_18
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 218
    :pswitch_19
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9

    goto/16 :goto_1

    .line 221
    :pswitch_1a
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 222
    :pswitch_1b
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 227
    :pswitch_1c
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a

    goto/16 :goto_1

    .line 229
    :pswitch_1d
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 230
    :pswitch_1e
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 231
    goto/16 :goto_1

    .line 232
    :pswitch_1f
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 237
    :pswitch_20
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b

    goto/16 :goto_1

    .line 240
    :pswitch_21
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 241
    :pswitch_22
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 246
    :pswitch_23
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_c

    goto/16 :goto_1

    .line 249
    :pswitch_24
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 250
    :pswitch_25
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 255
    :pswitch_26
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d

    goto/16 :goto_1

    .line 258
    :pswitch_27
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 259
    :pswitch_28
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 264
    :pswitch_29
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e

    goto/16 :goto_1

    .line 267
    :pswitch_2a
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 268
    :pswitch_2b
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 273
    :pswitch_2c
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f

    goto/16 :goto_1

    .line 276
    :pswitch_2d
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 277
    :pswitch_2e
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 282
    :pswitch_2f
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_10

    goto/16 :goto_1

    .line 286
    :pswitch_30
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 291
    :pswitch_31
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_11

    goto/16 :goto_1

    .line 293
    :pswitch_32
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 294
    :pswitch_33
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 295
    goto/16 :goto_1

    .line 296
    :pswitch_34
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 301
    :pswitch_35
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_12

    goto/16 :goto_1

    .line 304
    :pswitch_36
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 305
    :pswitch_37
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 310
    :pswitch_38
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_13

    goto/16 :goto_1

    .line 312
    :pswitch_39
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 313
    :pswitch_3a
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 314
    goto/16 :goto_1

    .line 315
    :pswitch_3b
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 320
    :pswitch_3c
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_14

    goto/16 :goto_1

    .line 323
    :pswitch_3d
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 324
    :pswitch_3e
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 329
    :pswitch_3f
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_15

    goto/16 :goto_1

    .line 332
    :pswitch_40
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 333
    :pswitch_41
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 338
    :pswitch_42
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_16

    goto/16 :goto_1

    .line 341
    :pswitch_43
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 342
    :pswitch_44
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 347
    :pswitch_45
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding;->GB18030_MAP:[I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_17

    goto/16 :goto_1

    .line 350
    :pswitch_46
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 351
    :pswitch_47
    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    goto/16 :goto_1

    .line 358
    :cond_0
    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$1;->$SwitchMap$org$jcodings$specific$GB18030Encoding$State:[I

    invoke-virtual {v1}, Lorg/jcodings/specific/GB18030Encoding$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_18

    goto/16 :goto_2

    .line 359
    :pswitch_48
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 360
    :pswitch_49
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 361
    :pswitch_4a
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 362
    :pswitch_4b
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 364
    :pswitch_4c
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 365
    :pswitch_4d
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 367
    :pswitch_4e
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 368
    :pswitch_4f
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 369
    :pswitch_50
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 370
    :pswitch_51
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 371
    :pswitch_52
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 373
    :pswitch_53
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 374
    :pswitch_54
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 376
    :pswitch_55
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    .line 377
    :pswitch_56
    add-int/lit8 p3, p3, -0x3

    goto/16 :goto_2

    .line 379
    :pswitch_57
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 380
    :pswitch_58
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 381
    :pswitch_59
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 382
    :pswitch_5a
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 384
    :pswitch_5b
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 385
    :pswitch_5c
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 386
    :pswitch_5d
    add-int/lit8 p3, p3, -0x2

    goto/16 :goto_2

    .line 387
    :pswitch_5e
    add-int/lit8 p3, p3, 0x0

    goto/16 :goto_2

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1c
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_31
        :pswitch_35
        :pswitch_38
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 152
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 161
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 170
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 180
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 189
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_10
    .end packed-switch

    .line 198
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 208
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 218
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 227
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 237
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 246
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_25
    .end packed-switch

    .line 255
    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_28
    .end packed-switch

    .line 264
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 273
    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    .line 282
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_30
    .end packed-switch

    .line 291
    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch

    .line 301
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_37
    .end packed-switch

    .line 310
    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch

    .line 320
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3e
    .end packed-switch

    .line 329
    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_41
    .end packed-switch

    .line 338
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_44
    .end packed-switch

    .line 347
    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_47
    .end packed-switch

    .line 358
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
    .end packed-switch
.end method

.method public length([BII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, -0x1

    .line 44
    iget-object v2, p0, Lorg/jcodings/specific/GB18030Encoding;->TransZero:[I

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    aget v0, v2, v3

    .line 45
    .local v0, "s":I
    if-gez v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 46
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jcodings/specific/GB18030Encoding;->lengthForTwoUptoFour([BIII)I

    move-result v1

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p5}, Lorg/jcodings/specific/GB18030Encoding;->mbnMbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public mbcToCode([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/specific/GB18030Encoding;->mbnMbcToCode([BII)I

    move-result v0

    return v0
.end method
