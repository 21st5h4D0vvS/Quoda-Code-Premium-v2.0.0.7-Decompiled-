.class public final enum Lorg/joni/constants/TokenType;
.super Ljava/lang/Enum;
.source "TokenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joni/constants/TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joni/constants/TokenType;

.field public static final enum ALT:Lorg/joni/constants/TokenType;

.field public static final enum ANCHOR:Lorg/joni/constants/TokenType;

.field public static final enum ANYCHAR:Lorg/joni/constants/TokenType;

.field public static final enum ANYCHAR_ANYTIME:Lorg/joni/constants/TokenType;

.field public static final enum BACKREF:Lorg/joni/constants/TokenType;

.field public static final enum CALL:Lorg/joni/constants/TokenType;

.field public static final enum CC_AND:Lorg/joni/constants/TokenType;

.field public static final enum CC_CC_OPEN:Lorg/joni/constants/TokenType;

.field public static final enum CC_CLOSE:Lorg/joni/constants/TokenType;

.field public static final enum CC_OPEN:Lorg/joni/constants/TokenType;

.field public static final enum CC_RANGE:Lorg/joni/constants/TokenType;

.field public static final enum CHAR:Lorg/joni/constants/TokenType;

.field public static final enum CHAR_PROPERTY:Lorg/joni/constants/TokenType;

.field public static final enum CHAR_TYPE:Lorg/joni/constants/TokenType;

.field public static final enum CODE_POINT:Lorg/joni/constants/TokenType;

.field public static final enum EOT:Lorg/joni/constants/TokenType;

.field public static final enum INTERVAL:Lorg/joni/constants/TokenType;

.field public static final enum OP_REPEAT:Lorg/joni/constants/TokenType;

.field public static final enum POSIX_BRACKET_OPEN:Lorg/joni/constants/TokenType;

.field public static final enum QUOTE_OPEN:Lorg/joni/constants/TokenType;

.field public static final enum RAW_BYTE:Lorg/joni/constants/TokenType;

.field public static final enum STRING:Lorg/joni/constants/TokenType;

.field public static final enum SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

.field public static final enum SUBEXP_OPEN:Lorg/joni/constants/TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "EOT"

    invoke-direct {v0, v1, v3}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    .line 24
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "RAW_BYTE"

    invoke-direct {v0, v1, v4}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    .line 25
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CHAR"

    invoke-direct {v0, v1, v5}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CHAR:Lorg/joni/constants/TokenType;

    .line 26
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v6}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->STRING:Lorg/joni/constants/TokenType;

    .line 27
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CODE_POINT"

    invoke-direct {v0, v1, v7}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    .line 28
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "ANYCHAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->ANYCHAR:Lorg/joni/constants/TokenType;

    .line 29
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CHAR_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CHAR_TYPE:Lorg/joni/constants/TokenType;

    .line 30
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "BACKREF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->BACKREF:Lorg/joni/constants/TokenType;

    .line 31
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CALL:Lorg/joni/constants/TokenType;

    .line 32
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "ANCHOR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->ANCHOR:Lorg/joni/constants/TokenType;

    .line 33
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "OP_REPEAT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->OP_REPEAT:Lorg/joni/constants/TokenType;

    .line 34
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "INTERVAL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    .line 35
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "ANYCHAR_ANYTIME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->ANYCHAR_ANYTIME:Lorg/joni/constants/TokenType;

    .line 36
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "ALT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    .line 37
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "SUBEXP_OPEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->SUBEXP_OPEN:Lorg/joni/constants/TokenType;

    .line 38
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "SUBEXP_CLOSE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

    .line 39
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CC_OPEN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CC_OPEN:Lorg/joni/constants/TokenType;

    .line 40
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "QUOTE_OPEN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->QUOTE_OPEN:Lorg/joni/constants/TokenType;

    .line 41
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CHAR_PROPERTY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CHAR_PROPERTY:Lorg/joni/constants/TokenType;

    .line 43
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CC_CLOSE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    .line 44
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CC_RANGE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CC_RANGE:Lorg/joni/constants/TokenType;

    .line 45
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "POSIX_BRACKET_OPEN"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->POSIX_BRACKET_OPEN:Lorg/joni/constants/TokenType;

    .line 46
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CC_AND"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CC_AND:Lorg/joni/constants/TokenType;

    .line 47
    new-instance v0, Lorg/joni/constants/TokenType;

    const-string v1, "CC_CC_OPEN"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/joni/constants/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joni/constants/TokenType;->CC_CC_OPEN:Lorg/joni/constants/TokenType;

    .line 22
    const/16 v0, 0x18

    new-array v0, v0, [Lorg/joni/constants/TokenType;

    sget-object v1, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/joni/constants/TokenType;->CHAR:Lorg/joni/constants/TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/joni/constants/TokenType;->STRING:Lorg/joni/constants/TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/joni/constants/TokenType;->CODE_POINT:Lorg/joni/constants/TokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/joni/constants/TokenType;->ANYCHAR:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/joni/constants/TokenType;->CHAR_TYPE:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/joni/constants/TokenType;->BACKREF:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/joni/constants/TokenType;->CALL:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/joni/constants/TokenType;->ANCHOR:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/joni/constants/TokenType;->OP_REPEAT:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/joni/constants/TokenType;->ANYCHAR_ANYTIME:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_OPEN:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/joni/constants/TokenType;->CC_OPEN:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/joni/constants/TokenType;->QUOTE_OPEN:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/joni/constants/TokenType;->CHAR_PROPERTY:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/joni/constants/TokenType;->CC_RANGE:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/joni/constants/TokenType;->POSIX_BRACKET_OPEN:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/joni/constants/TokenType;->CC_AND:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/joni/constants/TokenType;->CC_CC_OPEN:Lorg/joni/constants/TokenType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/joni/constants/TokenType;->$VALUES:[Lorg/joni/constants/TokenType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/joni/constants/TokenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/joni/constants/TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joni/constants/TokenType;

    return-object v0
.end method

.method public static values()[Lorg/joni/constants/TokenType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/joni/constants/TokenType;->$VALUES:[Lorg/joni/constants/TokenType;

    invoke-virtual {v0}, [Lorg/joni/constants/TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joni/constants/TokenType;

    return-object v0
.end method
