.class public Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field closeButton:Landroid/widget/ImageButton;

.field savedIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

.field titleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$Holder;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method
