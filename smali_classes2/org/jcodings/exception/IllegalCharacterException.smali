.class public Lorg/jcodings/exception/IllegalCharacterException;
.super Lorg/jcodings/exception/EncodingException;
.source "IllegalCharacterException.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/exception/IllegalCharacterException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/jcodings/exception/IllegalCharacterException;

    invoke-direct {v0}, Lorg/jcodings/exception/IllegalCharacterException;-><init>()V

    sput-object v0, Lorg/jcodings/exception/IllegalCharacterException;->INSTANCE:Lorg/jcodings/exception/IllegalCharacterException;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "illegal character"

    invoke-direct {p0, v0}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
