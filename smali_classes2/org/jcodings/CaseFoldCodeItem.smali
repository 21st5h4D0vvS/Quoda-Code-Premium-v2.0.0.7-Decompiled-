.class public Lorg/jcodings/CaseFoldCodeItem;
.super Ljava/lang/Object;
.source "CaseFoldCodeItem.java"


# static fields
.field static final ENC_MAX_COMP_CASE_FOLD_CODE_LEN:I = 0x3


# instance fields
.field public final byteLen:I

.field public final code:[I

.field public final codeLen:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 0
    .param p1, "byteLen"    # I
    .param p2, "codeLen"    # I
    .param p3, "code"    # [I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/jcodings/CaseFoldCodeItem;->byteLen:I

    .line 31
    iput p2, p0, Lorg/jcodings/CaseFoldCodeItem;->codeLen:I

    .line 32
    iput-object p3, p0, Lorg/jcodings/CaseFoldCodeItem;->code:[I

    .line 33
    return-void
.end method
