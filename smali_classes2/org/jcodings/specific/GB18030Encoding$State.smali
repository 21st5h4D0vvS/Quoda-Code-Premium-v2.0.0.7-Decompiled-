.class final enum Lorg/jcodings/specific/GB18030Encoding$State;
.super Ljava/lang/Enum;
.source "GB18030Encoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/specific/GB18030Encoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jcodings/specific/GB18030Encoding$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Even_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum Odd_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_C2:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_C4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_C4_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_C4_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum One_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

.field public static final enum START:Lorg/jcodings/specific/GB18030Encoding$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->START:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 102
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_C2"

    invoke-direct {v0, v1, v4}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_C2:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 103
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_C4"

    invoke-direct {v0, v1, v5}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 104
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_CM"

    invoke-direct {v0, v1, v6}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 106
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_CM_One_CX"

    invoke-direct {v0, v1, v7}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 107
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_CM_One_CX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 110
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_CMC4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 111
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_CMC4"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 112
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_C4_Odd_CMC4"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 113
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_CMC4"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 114
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_C4_Even_CMC4"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 116
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_CM_Odd_CMC4"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 117
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_CM_Odd_CMC4"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 119
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_CM_Even_CMC4"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 120
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_CM_Even_CMC4"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 123
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_C4CM"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 124
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_CM_Odd_C4CM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 125
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_C4CM"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 126
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "One_CM_Even_C4CM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 128
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_CM_Odd_C4CM"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 129
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_CM_Odd_C4CM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 130
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Even_CM_Even_C4CM"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 131
    new-instance v0, Lorg/jcodings/specific/GB18030Encoding$State;

    const-string v1, "Odd_CM_Even_C4CM"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/jcodings/specific/GB18030Encoding$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    .line 100
    const/16 v0, 0x17

    new-array v0, v0, [Lorg/jcodings/specific/GB18030Encoding$State;

    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->START:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C2:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_One_CX:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->One_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->One_C4_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_CMC4:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->One_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Odd_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Even_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jcodings/specific/GB18030Encoding$State;->Odd_CM_Even_C4CM:Lorg/jcodings/specific/GB18030Encoding$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->$VALUES:[Lorg/jcodings/specific/GB18030Encoding$State;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jcodings/specific/GB18030Encoding$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lorg/jcodings/specific/GB18030Encoding$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jcodings/specific/GB18030Encoding$State;

    return-object v0
.end method

.method public static values()[Lorg/jcodings/specific/GB18030Encoding$State;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/jcodings/specific/GB18030Encoding$State;->$VALUES:[Lorg/jcodings/specific/GB18030Encoding$State;

    invoke-virtual {v0}, [Lorg/jcodings/specific/GB18030Encoding$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jcodings/specific/GB18030Encoding$State;

    return-object v0
.end method
