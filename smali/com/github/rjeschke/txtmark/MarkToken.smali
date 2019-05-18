.class final enum Lcom/github/rjeschke/txtmark/MarkToken;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/rjeschke/txtmark/MarkToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum HTML:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum LINK:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum NONE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x2

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "EM_STAR"

    invoke-direct {v0, v1, v4}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "EM_UNDERSCORE"

    invoke-direct {v0, v1, v5}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "STRONG_STAR"

    invoke-direct {v0, v1, v6}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x2

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "STRONG_UNDERSCORE"

    invoke-direct {v0, v1, v7}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x0

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "STRIKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "CODE_SINGLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x3

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "CODE_DOUBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x0

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "LINK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x4

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "HTML"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x5

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "IMAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x5

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "ENTITY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "ESCAPE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "SUPER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_COPY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x2

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_REG"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_TRADE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x4

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LAQUO"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_RAQUO"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x2

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_NDASH"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x5

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_MDASH"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x3

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_HELLIP"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_RDQUO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x4

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LDQUO"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LINK_OPEN"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LINK_CLOSE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v8, 0x4

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/github/rjeschke/txtmark/MarkToken;

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->$VALUES:[Lcom/github/rjeschke/txtmark/MarkToken;

    nop

    return-void

    const/4 v2, 0x1
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/MarkToken;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    const-class v0, Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rjeschke/txtmark/MarkToken;

    return-object v0

    const/4 v1, 0x4
.end method

.method public static values()[Lcom/github/rjeschke/txtmark/MarkToken;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    sget-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->$VALUES:[Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v0}, [Lcom/github/rjeschke/txtmark/MarkToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rjeschke/txtmark/MarkToken;

    return-object v0

    const/4 v1, 0x1
.end method
