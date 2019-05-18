.class public Lcom/henrythompson/quoda/LineBreak;
.super Ljava/lang/Object;


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final LF:Ljava/lang/String; = "\n"

.field public static final LINEBREAK_CODE_CR:I = 0x0

.field public static final LINEBREAK_CODE_CRLF:I = 0x2

.field public static final LINEBREAK_CODE_LF:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public static toLineBreak(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    if-nez p0, :cond_0

    const-string v0, "\r"

    :goto_0
    return-object v0

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "\n"

    goto :goto_0

    const/4 v1, 0x5

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "\r\n"

    goto :goto_0

    const/4 v1, 0x3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x7

    const/4 v0, 0x0

    :goto_0
    return-object v0

    const/4 v1, 0x5

    const/4 v1, 0x2

    :pswitch_0
    const-string v0, "CR"

    goto :goto_0

    const/4 v0, 0x6

    const/4 v1, 0x6

    :pswitch_1
    const-string v0, "LF"

    goto :goto_0

    const/4 v1, 0x5

    const/4 v1, 0x1

    :pswitch_2
    const-string v0, "CRLF"

    goto :goto_0

    const/4 v0, 0x7

    const/4 v1, 0x7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final toStringWithDescription(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x6

    packed-switch p0, :pswitch_data_0

    const/4 v2, 0x3

    const/4 v1, 0x0

    :goto_0
    return-object v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    :pswitch_0
    const v1, 0x7f0d0143

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x2

    :pswitch_1
    const v1, 0x7f0d0145

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v2, 0x7

    :pswitch_2
    const v1, 0x7f0d0144

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v0, 0x1

    const/4 v2, 0x5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
