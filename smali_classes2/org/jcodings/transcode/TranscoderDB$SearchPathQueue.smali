.class final Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;
.super Ljava/lang/Object;
.source "TranscoderDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/transcode/TranscoderDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchPathQueue"
.end annotation


# instance fields
.field encoding:[B

.field next:Lorg/jcodings/ObjPtr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/ObjPtr",
            "<",
            "Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lorg/jcodings/ObjPtr;

    invoke-direct {v0}, Lorg/jcodings/ObjPtr;-><init>()V

    iput-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->next:Lorg/jcodings/ObjPtr;

    return-void
.end method
