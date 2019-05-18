.class public Lcom/jcraft/jsch/CipherNone;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x10

.field private static final ivsize:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    const/16 v0, 0x10

    return v0

    const/4 v0, 0x4
.end method

.method public getIVSize()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    const/16 v0, 0x8

    return v0

    const/4 v1, 0x1
.end method

.method public init(I[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public isCBC()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x3
.end method

.method public update([BII[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method
