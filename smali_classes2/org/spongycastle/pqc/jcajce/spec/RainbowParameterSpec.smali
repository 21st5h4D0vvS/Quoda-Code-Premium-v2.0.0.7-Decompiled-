.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;
.super Ljava/lang/Object;
.source "RainbowParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final DEFAULT_VI:[I


# instance fields
.field private vi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->DEFAULT_VI:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0xc
        0x11
        0x16
        0x21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->DEFAULT_VI:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    .line 47
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "vi"    # [I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    .line 61
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->checkParams()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkParams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no layers defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 80
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-lt v1, v2, :cond_1

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "v[i] has to be smaller than v[i+1]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Rainbow needs at least 1 layer, such that v1 < v2."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getDocumentLength()I
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getVi()[I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
