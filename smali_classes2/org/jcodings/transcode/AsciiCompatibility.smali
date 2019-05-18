.class public final enum Lorg/jcodings/transcode/AsciiCompatibility;
.super Ljava/lang/Enum;
.source "AsciiCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jcodings/transcode/AsciiCompatibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jcodings/transcode/AsciiCompatibility;

.field public static final enum CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

.field public static final enum DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

.field public static final enum ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/jcodings/transcode/AsciiCompatibility;

    const-string v1, "CONVERTER"

    invoke-direct {v0, v1, v2}, Lorg/jcodings/transcode/AsciiCompatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    new-instance v0, Lorg/jcodings/transcode/AsciiCompatibility;

    const-string v1, "DECODER"

    invoke-direct {v0, v1, v3}, Lorg/jcodings/transcode/AsciiCompatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    new-instance v0, Lorg/jcodings/transcode/AsciiCompatibility;

    const-string v1, "ENCODER"

    invoke-direct {v0, v1, v4}, Lorg/jcodings/transcode/AsciiCompatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jcodings/transcode/AsciiCompatibility;

    sget-object v1, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->$VALUES:[Lorg/jcodings/transcode/AsciiCompatibility;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jcodings/transcode/AsciiCompatibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jcodings/transcode/AsciiCompatibility;

    return-object v0
.end method

.method public static values()[Lorg/jcodings/transcode/AsciiCompatibility;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->$VALUES:[Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v0}, [Lorg/jcodings/transcode/AsciiCompatibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jcodings/transcode/AsciiCompatibility;

    return-object v0
.end method


# virtual methods
.method isConverter()Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDecoder()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEncoder()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
