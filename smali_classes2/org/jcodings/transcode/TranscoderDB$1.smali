.class final Lorg/jcodings/transcode/TranscoderDB$1;
.super Ljava/lang/Object;
.source "TranscoderDB.java"

# interfaces
.implements Lorg/jcodings/transcode/TranscoderDB$SearchPathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jcodings/transcode/TranscoderDB;->open0([B[BI)Lorg/jcodings/transcode/EConv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field additional:I

.field final synthetic val$lentries:Lorg/jcodings/ObjPtr;


# direct methods
.method constructor <init>(Lorg/jcodings/ObjPtr;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lorg/jcodings/transcode/TranscoderDB$1;->val$lentries:Lorg/jcodings/ObjPtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/transcode/TranscoderDB$1;->additional:I

    return-void
.end method


# virtual methods
.method public call([B[BI)V
    .locals 3
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "depth"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$1;->val$lentries:Lorg/jcodings/ObjPtr;

    iget-object v0, v0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$1;->val$lentries:Lorg/jcodings/ObjPtr;

    add-int/lit8 v1, p3, 0x1

    iget v2, p0, Lorg/jcodings/transcode/TranscoderDB$1;->additional:I

    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/jcodings/transcode/TranscoderDB$Entry;

    iput-object v1, v0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$1;->val$lentries:Lorg/jcodings/ObjPtr;

    iget-object v0, v0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v0, [Lorg/jcodings/transcode/TranscoderDB$Entry;

    invoke-static {p1, p2}, Lorg/jcodings/transcode/TranscoderDB;->getEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v1

    aput-object v1, v0, p3

    .line 221
    return-void
.end method
