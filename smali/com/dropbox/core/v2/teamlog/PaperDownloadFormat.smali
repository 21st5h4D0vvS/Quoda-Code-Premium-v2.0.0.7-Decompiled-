.class public final enum Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
.super Ljava/lang/Enum;
.source "PaperDownloadFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum DOCX:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum HTML:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum MARKDOWN:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v1, "DOCX"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->DOCX:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->HTML:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    .line 22
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v1, "MARKDOWN"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->MARKDOWN:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->OTHER:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->DOCX:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->HTML:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->MARKDOWN:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->OTHER:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->$VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->$VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-object v0
.end method
