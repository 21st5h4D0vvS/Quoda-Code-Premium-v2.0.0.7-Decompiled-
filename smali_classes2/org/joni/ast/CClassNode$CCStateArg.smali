.class public final Lorg/joni/ast/CClassNode$CCStateArg;
.super Ljava/lang/Object;
.source "CClassNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/ast/CClassNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CCStateArg"
.end annotation


# instance fields
.field public inType:Lorg/joni/constants/CCVALTYPE;

.field public state:Lorg/joni/constants/CCSTATE;

.field public type:Lorg/joni/constants/CCVALTYPE;

.field public v:I

.field public vIsRaw:Z

.field public vs:I

.field public vsIsRaw:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
