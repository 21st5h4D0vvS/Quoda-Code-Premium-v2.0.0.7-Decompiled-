.class Lcom/henrythompson/quoda/ListItemAdapter$PreferenceHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field radioButton:Landroid/widget/RadioButton;

.field txtTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method
