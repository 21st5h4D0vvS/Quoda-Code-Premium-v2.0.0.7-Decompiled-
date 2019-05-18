.class public Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;
.super Ljava/lang/Object;
.source "EphemeralKeyPairGenerator.java"


# instance fields
.field private gen:Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private keyEncoder:Lorg/spongycastle/crypto/KeyEncoder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V
    .locals 0
    .param p1, "gen"    # Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;
    .param p2, "keyEncoder"    # Lorg/spongycastle/crypto/KeyEncoder;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->gen:Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 16
    iput-object p2, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->keyEncoder:Lorg/spongycastle/crypto/KeyEncoder;

    .line 17
    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/crypto/EphemeralKeyPair;
    .locals 3

    .prologue
    .line 21
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->gen:Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 24
    .local v0, "eph":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    new-instance v1, Lorg/spongycastle/crypto/EphemeralKeyPair;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->keyEncoder:Lorg/spongycastle/crypto/KeyEncoder;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/crypto/EphemeralKeyPair;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;Lorg/spongycastle/crypto/KeyEncoder;)V

    return-object v1
.end method
