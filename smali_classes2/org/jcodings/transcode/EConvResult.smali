.class public final enum Lorg/jcodings/transcode/EConvResult;
.super Ljava/lang/Enum;
.source "EConvResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jcodings/transcode/EConvResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jcodings/transcode/EConvResult;

.field public static final enum AfterOutput:Lorg/jcodings/transcode/EConvResult;

.field public static final enum DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

.field public static final enum Finished:Lorg/jcodings/transcode/EConvResult;

.field public static final enum IncompleteInput:Lorg/jcodings/transcode/EConvResult;

.field public static final enum InvalidByteSequence:Lorg/jcodings/transcode/EConvResult;

.field public static final enum SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

.field public static final enum UndefinedConversion:Lorg/jcodings/transcode/EConvResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "InvalidByteSequence"

    invoke-direct {v0, v1, v3}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->InvalidByteSequence:Lorg/jcodings/transcode/EConvResult;

    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "UndefinedConversion"

    invoke-direct {v0, v1, v4}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->UndefinedConversion:Lorg/jcodings/transcode/EConvResult;

    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "DestinationBufferFull"

    invoke-direct {v0, v1, v5}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "SourceBufferEmpty"

    invoke-direct {v0, v1, v6}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "Finished"

    invoke-direct {v0, v1, v7}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->Finished:Lorg/jcodings/transcode/EConvResult;

    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "AfterOutput"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    new-instance v0, Lorg/jcodings/transcode/EConvResult;

    const-string v1, "IncompleteInput"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jcodings/transcode/EConvResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->IncompleteInput:Lorg/jcodings/transcode/EConvResult;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/jcodings/transcode/EConvResult;

    sget-object v1, Lorg/jcodings/transcode/EConvResult;->InvalidByteSequence:Lorg/jcodings/transcode/EConvResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jcodings/transcode/EConvResult;->UndefinedConversion:Lorg/jcodings/transcode/EConvResult;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jcodings/transcode/EConvResult;->Finished:Lorg/jcodings/transcode/EConvResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jcodings/transcode/EConvResult;->IncompleteInput:Lorg/jcodings/transcode/EConvResult;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/transcode/EConvResult;->$VALUES:[Lorg/jcodings/transcode/EConvResult;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jcodings/transcode/EConvResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/jcodings/transcode/EConvResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jcodings/transcode/EConvResult;

    return-object v0
.end method

.method public static values()[Lorg/jcodings/transcode/EConvResult;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->$VALUES:[Lorg/jcodings/transcode/EConvResult;

    invoke-virtual {v0}, [Lorg/jcodings/transcode/EConvResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jcodings/transcode/EConvResult;

    return-object v0
.end method


# virtual methods
.method isAfterOutput()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->AfterOutput:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDestinationBufferFull()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->DestinationBufferFull:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->Finished:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIncompleteInput()Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->IncompleteInput:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalidByteSequence()Z
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->InvalidByteSequence:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSourceBufferEmpty()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->SourceBufferEmpty:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUndefinedConversion()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/jcodings/transcode/EConvResult;->UndefinedConversion:Lorg/jcodings/transcode/EConvResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
