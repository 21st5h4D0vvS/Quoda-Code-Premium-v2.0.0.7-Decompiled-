.class public Lorg/joni/Syntax$MetaCharTable;
.super Ljava/lang/Object;
.source "Syntax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/Syntax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaCharTable"
.end annotation


# instance fields
.field public final anyChar:I

.field public final anyCharAnyTime:I

.field public final anyTime:I

.field public final esc:I

.field public final oneOrMoreTime:I

.field public final zeroOrOneTime:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "esc"    # I
    .param p2, "anyChar"    # I
    .param p3, "anyTime"    # I
    .param p4, "zeroOrOneTime"    # I
    .param p5, "oneOrMoreTime"    # I
    .param p6, "anyCharAnyTime"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/joni/Syntax$MetaCharTable;->esc:I

    .line 52
    iput p2, p0, Lorg/joni/Syntax$MetaCharTable;->anyChar:I

    .line 53
    iput p3, p0, Lorg/joni/Syntax$MetaCharTable;->anyTime:I

    .line 54
    iput p4, p0, Lorg/joni/Syntax$MetaCharTable;->zeroOrOneTime:I

    .line 55
    iput p5, p0, Lorg/joni/Syntax$MetaCharTable;->oneOrMoreTime:I

    .line 56
    iput p6, p0, Lorg/joni/Syntax$MetaCharTable;->anyCharAnyTime:I

    .line 57
    return-void
.end method
