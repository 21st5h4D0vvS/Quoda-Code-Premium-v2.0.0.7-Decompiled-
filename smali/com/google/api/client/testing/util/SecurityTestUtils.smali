.class public final Lcom/google/api/client/testing/util/SecurityTestUtils;
.super Ljava/lang/Object;
.source "SecurityTestUtils.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# static fields
.field private static final ENCODED_PRIVATE_KEY:[B

.field private static final ENCODED_PUBLIC_KEY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x27a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/api/client/testing/util/SecurityTestUtils;->ENCODED_PRIVATE_KEY:[B

    .line 71
    const/16 v0, 0xa2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/api/client/testing/util/SecurityTestUtils;->ENCODED_PUBLIC_KEY:[B

    return-void

    .line 38
    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x76t
        0x2t
        0x1t
        0x0t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x4t
        -0x7et
        0x2t
        0x60t
        0x30t
        -0x7et
        0x2t
        0x5ct
        0x2t
        0x1t
        0x0t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x59t
        0x21t
        0x8t
        -0x7ct
        0x6et
        -0x3ct
        0x59t
        0x8t
        -0x3et
        0x45t
        0x78t
        0x5ft
        -0x3bt
        -0x2bt
        0xdt
        -0x12t
        0x7bt
        0x1dt
        -0x1ft
        0xdt
        -0x50t
        -0x4ct
        0x6dt
        -0x3et
        -0x4ft
        0x2t
        0x68t
        -0x5et
        0x4ct
        0x3bt
        -0x49t
        -0x1at
        0x63t
        0x7bt
        -0x39t
        -0x5ct
        -0x64t
        0x74t
        0x32t
        -0x19t
        0x60t
        0x35t
        0x7ct
        0x5ft
        0x4ct
        -0x3bt
        -0x54t
        0x46t
        0x1bt
        0x0t
        0x48t
        -0x3ft
        0x54t
        -0x4dt
        -0x2t
        -0x6bt
        -0x42t
        -0x20t
        -0x77t
        0x1bt
        -0x5ft
        0x36t
        -0x2ct
        -0x59t
        0x1t
        0x47t
        0x2ct
        0x7t
        -0x37t
        0x7et
        0x5t
        -0x4et
        0x57t
        -0x69t
        -0x72t
        0x41t
        -0x13t
        0x3at
        -0x4et
        -0x5ft
        0x0t
        0x76t
        0x53t
        0x4ct
        -0x58t
        0x2t
        -0x15t
        0x7ft
        0x40t
        0x4at
        -0x67t
        -0x72t
        -0x7ft
        -0x46t
        -0x51t
        -0x7ft
        0x7dt
        -0x25t
        0x15t
        0x71t
        0x14t
        -0x66t
        0x2et
        -0x25t
        -0x6ft
        -0x61t
        0x61t
        -0x7ft
        0x20t
        0x57t
        -0x50t
        0x69t
        0x12t
        -0x13t
        0x6bt
        -0x49t
        -0x32t
        -0x61t
        0xbt
        -0x17t
        -0x3bt
        -0x6bt
        -0x6bt
        0x53t
        -0x19t
        0xft
        -0x5dt
        -0x15t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        0x2t
        -0x7ft
        -0x80t
        0x2dt
        -0x22t
        -0x68t
        0x1at
        -0x28t
        -0x29t
        -0x2ct
        -0x1dt
        -0x23t
        -0x7bt
        -0x7t
        -0x6et
        -0x49t
        -0x6at
        0x50t
        -0x5t
        -0x76t
        0x18t
        -0x26t
        0x42t
        -0x36t
        -0x5dt
        -0x36t
        -0x68t
        0x2bt
        -0x3et
        -0x30t
        0x7at
        -0xet
        -0x29t
        0x55t
        0x12t
        -0x35t
        0x6dt
        0x16t
        -0x71t
        0x2ct
        0x4dt
        -0x74t
        0x7t
        0xat
        -0x2bt
        -0x3dt
        0x2bt
        -0x28t
        -0x3dt
        0x4ct
        0x13t
        -0xbt
        -0x59t
        0x2ft
        0x50t
        -0x48t
        0x71t
        -0x56t
        0x46t
        -0x17t
        0x1bt
        0x71t
        0x25t
        -0x1t
        0x2at
        0x30t
        0x54t
        -0x50t
        0x1et
        0x56t
        0x24t
        -0x7ct
        -0x16t
        0x4ft
        -0x2ct
        0x57t
        -0x28t
        0x1ft
        -0x29t
        -0x2ct
        -0x10t
        -0x4at
        0x55t
        0x3dt
        -0x7at
        -0x16t
        0xat
        -0x1ft
        0x4et
        0x5ct
        -0x7bt
        -0x4dt
        0xct
        -0x50t
        0x3et
        -0x34t
        0x44t
        -0x2et
        -0x11t
        0x43t
        0x7ct
        -0x4et
        -0x17t
        -0x69t
        -0x4dt
        -0x2t
        0x59t
        -0x10t
        -0xct
        -0x38t
        -0x33t
        0x1at
        0x66t
        0x2et
        0x27t
        -0x3dt
        -0xdt
        -0x4ft
        -0x41t
        -0x5t
        0x7et
        0x46t
        0x1dt
        0x1ft
        0x68t
        -0x6dt
        0x41t
        -0x17t
        -0x45t
        0x17t
        -0x7t
        0x2t
        0x41t
        0x0t
        -0x2at
        0x12t
        0x65t
        0xat
        -0x15t
        0x25t
        0x6bt
        -0x3t
        -0x72t
        -0x1dt
        -0x28t
        0x4ct
        0x6bt
        -0x7at
        0x28t
        0x8t
        -0x3at
        -0x20t
        -0xct
        0x37t
        -0x4t
        -0x3dt
        -0x42t
        0x5bt
        -0x38t
        -0x32t
        0x4et
        -0x7ct
        0xbt
        -0x31t
        -0x3et
        -0x79t
        -0x38t
        0x46t
        -0x5ct
        0x5at
        0x20t
        -0x70t
        0x31t
        0x1at
        -0x63t
        0x71t
        0x2ct
        0x1at
        0x2at
        -0x63t
        -0x28t
        -0x7bt
        0x11t
        0x5dt
        0x72t
        0x7dt
        0x23t
        -0x76t
        -0x20t
        0x7dt
        -0x40t
        0x3dt
        0x3at
        -0x3at
        -0x69t
        -0x69t
        -0x27t
        0x5dt
        0x2t
        0x41t
        0x0t
        -0x39t
        -0x24t
        -0x16t
        -0x6bt
        -0x2at
        -0x4ft
        0x0t
        -0x76t
        0x79t
        -0x4ct
        0x78t
        0x34t
        0x6et
        0x7ft
        0x73t
        0x44t
        -0x56t
        -0x4t
        0x60t
        -0x32t
        0x48t
        -0x3ct
        -0x39t
        0x7dt
        0x39t
        0x15t
        -0x51t
        -0x2ct
        0x19t
        0x70t
        -0x4bt
        0x53t
        0x39t
        -0x37t
        0x3dt
        0x18t
        0x1ct
        -0x70t
        -0x67t
        -0x8t
        0x78t
        0x6et
        -0x34t
        -0x6ct
        -0x29t
        -0x4ct
        -0x60t
        0x57t
        -0x75t
        0x45t
        0x0t
        0x40t
        0x1at
        0x4t
        0x7at
        0xdt
        0x6t
        -0x6at
        0x70t
        -0x33t
        -0x1t
        0x4ft
        0x75t
        -0x19t
        0x2t
        0x40t
        0x7ft
        0x44t
        0x3ct
        0x51t
        -0x5t
        0x6et
        0x29t
        -0x1t
        0x7at
        0x5dt
        -0x4at
        -0x71t
        -0x18t
        0x34t
        -0x41t
        -0x3ct
        0x48t
        0x8t
        0x20t
        -0x18t
        -0x30t
        0x1at
        -0x39t
        0x26t
        -0x1at
        0x0t
        -0x30t
        -0x18t
        -0x15t
        -0x1ct
        -0x42t
        0x2ft
        -0x21t
        0x3ft
        0x30t
        0x22t
        0x6ct
        -0x33t
        -0x74t
        -0x7dt
        -0x28t
        0x2at
        0x1at
        0x20t
        0xct
        0x49t
        -0x1t
        0x19t
        0x4dt
        0x33t
        -0x6dt
        0x7t
        0x16t
        -0x7ct
        0x4ft
        -0x1at
        0x32t
        -0x33t
        -0x4ct
        0xdt
        -0x50t
        -0x42t
        0x13t
        -0x7t
        0x2t
        0x41t
        0x0t
        -0x5at
        0x63t
        -0x14t
        0x44t
        -0x4t
        -0x54t
        -0xbt
        -0x69t
        0x53t
        -0x7bt
        -0x7ct
        -0x3ft
        -0x67t
        -0x10t
        -0x51t
        0x65t
        0x4et
        -0x48t
        -0x48t
        0x5bt
        0x64t
        -0x39t
        -0x4at
        -0x6ft
        0x31t
        0x12t
        0x36t
        0x4t
        -0x13t
        0x7dt
        0x20t
        -0x18t
        0x7dt
        -0x1at
        0x64t
        -0x21t
        -0x75t
        0x0t
        0x73t
        -0x41t
        0x21t
        0x7ct
        -0x6bt
        0x3t
        -0x5ft
        -0x5bt
        0x76t
        0xct
        0xct
        0x1dt
        0x50t
        -0x3t
        0xct
        -0x14t
        0x7t
        0x34t
        -0x76t
        -0xct
        0x7at
        0x4bt
        0x75t
        -0x51t
        -0x70t
        -0x59t
        0x2t
        0x40t
        0x5dt
        -0x15t
        -0x34t
        -0x6et
        -0x36t
        -0x9t
        0x4ft
        -0x7bt
        0x69t
        0x7dt
        -0x38t
        0x4bt
        -0x4dt
        -0x1at
        0x7dt
        -0x7bt
        -0x45t
        0x3et
        -0x2t
        0x4ft
        0x8t
        0x48t
        -0x4ct
        -0x43t
        0x5t
        0x21t
        -0x79t
        0x1t
        -0x2at
        -0x11t
        0x1dt
        0x45t
        -0x14t
        -0x44t
        -0x1at
        -0x17t
        0x5ft
        -0x7t
        -0x46t
        -0x32t
        -0xat
        0x3at
        0x10t
        -0xft
        -0x59t
        -0x18t
        -0x79t
        -0xet
        -0x48t
        -0x7ft
        -0x59t
        -0x3ft
        0x42t
        0x7t
        0x4dt
        -0x59t
        -0x36t
        -0x5ft
        -0x5at
        0x2dt
        -0x2ct
        -0x76t
        0x45t
        -0x1t
    .end array-data

    .line 71
    nop

    :array_1
    .array-data 1
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x59t
        0x21t
        0x8t
        -0x7ct
        0x6et
        -0x3ct
        0x59t
        0x8t
        -0x3et
        0x45t
        0x78t
        0x5ft
        -0x3bt
        -0x2bt
        0xdt
        -0x12t
        0x7bt
        0x1dt
        -0x1ft
        0xdt
        -0x50t
        -0x4ct
        0x6dt
        -0x3et
        -0x4ft
        0x2t
        0x68t
        -0x5et
        0x4ct
        0x3bt
        -0x49t
        -0x1at
        0x63t
        0x7bt
        -0x39t
        -0x5ct
        -0x64t
        0x74t
        0x32t
        -0x19t
        0x60t
        0x35t
        0x7ct
        0x5ft
        0x4ct
        -0x3bt
        -0x54t
        0x46t
        0x1bt
        0x0t
        0x48t
        -0x3ft
        0x54t
        -0x4dt
        -0x2t
        -0x6bt
        -0x42t
        -0x20t
        -0x77t
        0x1bt
        -0x5ft
        0x36t
        -0x2ct
        -0x59t
        0x1t
        0x47t
        0x2ct
        0x7t
        -0x37t
        0x7et
        0x5t
        -0x4et
        0x57t
        -0x69t
        -0x72t
        0x41t
        -0x13t
        0x3at
        -0x4et
        -0x5ft
        0x0t
        0x76t
        0x53t
        0x4ct
        -0x58t
        0x2t
        -0x15t
        0x7ft
        0x40t
        0x4at
        -0x67t
        -0x72t
        -0x7ft
        -0x46t
        -0x51t
        -0x7ft
        0x7dt
        -0x25t
        0x15t
        0x71t
        0x14t
        -0x66t
        0x2et
        -0x25t
        -0x6ft
        -0x61t
        0x61t
        -0x7ft
        0x20t
        0x57t
        -0x50t
        0x69t
        0x12t
        -0x13t
        0x6bt
        -0x49t
        -0x32t
        -0x61t
        0xbt
        -0x17t
        -0x3bt
        -0x6bt
        -0x6bt
        0x53t
        -0x19t
        0xft
        -0x5dt
        -0x15t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static newEncodedRsaPrivateKeyBytes()[B
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/api/client/testing/util/SecurityTestUtils;->ENCODED_PRIVATE_KEY:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static newEncodedRsaPublicKeyBytes()[B
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/api/client/testing/util/SecurityTestUtils;->ENCODED_PUBLIC_KEY:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static newRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getRsaKeyFactory()Ljava/security/KeyFactory;

    move-result-object v0

    .line 100
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    sget-object v2, Lcom/google/api/client/testing/util/SecurityTestUtils;->ENCODED_PRIVATE_KEY:[B

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 101
    .local v1, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    return-object v2
.end method

.method public static newRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getRsaKeyFactory()Ljava/security/KeyFactory;

    move-result-object v0

    .line 107
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    sget-object v2, Lcom/google/api/client/testing/util/SecurityTestUtils;->ENCODED_PUBLIC_KEY:[B

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 108
    .local v1, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    return-object v2
.end method
