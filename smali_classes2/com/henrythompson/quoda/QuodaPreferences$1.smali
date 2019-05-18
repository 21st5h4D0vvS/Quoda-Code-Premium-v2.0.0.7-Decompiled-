.class Lcom/henrythompson/quoda/QuodaPreferences$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/QuodaPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/QuodaPreferences;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/QuodaPreferences;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/QuodaPreferences$1;->this$0:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/QuodaPreferences$1;->this$0:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->load()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x3
.end method
