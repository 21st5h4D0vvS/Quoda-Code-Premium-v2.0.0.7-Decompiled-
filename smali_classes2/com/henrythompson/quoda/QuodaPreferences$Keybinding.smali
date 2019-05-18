.class public Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/QuodaPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keybinding"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public alt:Z

.field public ctrl:Z

.field public enabled:Z

.field public key:C

.field public shift:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZCZZZ)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput-boolean p2, p0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->enabled:Z

    const/4 v0, 0x2

    iput-char p3, p0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->key:C

    const/4 v0, 0x6

    iput-boolean p4, p0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->ctrl:Z

    const/4 v0, 0x7

    iput-boolean p5, p0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->shift:Z

    const/4 v0, 0x7

    iput-boolean p6, p0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->alt:Z

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->action:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method
