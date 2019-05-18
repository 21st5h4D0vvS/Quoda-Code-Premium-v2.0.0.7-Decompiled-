.class public Lcom/henrythompson/quoda/styler/ContextSpan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_CSS_VALUES:I = 0x1

.field public static final TYPE_HTML_TAG:I = 0x0

.field private static final serialVersionUID:J = 0x4c12e629a742dcb0L


# instance fields
.field public TYPE:I

.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    const/4 v0, 0x1

    iput p2, p0, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    const/4 v0, 0x5

    iput p3, p0, Lcom/henrythompson/quoda/styler/ContextSpan;->TYPE:I

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method
