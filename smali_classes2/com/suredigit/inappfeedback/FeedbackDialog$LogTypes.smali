.class public final enum Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;
.super Ljava/lang/Enum;
.source "FeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/suredigit/inappfeedback/FeedbackDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

.field private static final synthetic ENUM$VALUES:[Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

.field public static final enum NONE:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    new-instance v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->NONE:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sget-object v1, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->NONE:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->ENUM$VALUES:[Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    return-object v0
.end method

.method public static values()[Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->ENUM$VALUES:[Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    array-length v1, v0

    new-array v2, v1, [Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
