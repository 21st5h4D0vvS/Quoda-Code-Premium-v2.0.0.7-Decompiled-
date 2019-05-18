.class public Lcom/henrythompson/quoda/QuodaWebViewClient;
.super Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x0
.end method
