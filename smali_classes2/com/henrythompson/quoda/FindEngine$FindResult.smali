.class public Lcom/henrythompson/quoda/FindEngine$FindResult;
.super Landroid/text/style/BackgroundColorSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FindEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindResult"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x1

    const/16 v0, 0x55

    const/4 v4, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StyleSpan;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/4 v4, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StyleSpan;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StyleSpan;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v4, 0x3

    iput p1, p0, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    const/4 v4, 0x2

    iput p2, p0, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    const/4 v4, 0x3

    nop

    return-void

    const/4 v1, 0x0
.end method
