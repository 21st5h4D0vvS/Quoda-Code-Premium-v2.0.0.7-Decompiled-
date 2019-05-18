.class Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AssetLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/AssetLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 496
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 498
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 506
    :goto_0
    if-nez v2, :cond_1

    .line 507
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 502
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 503
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 504
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 509
    :cond_1
    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "fieldValue":Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    sget-object v4, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileLogInfo$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    move-result-object v1

    .line 512
    invoke-static {v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->file(Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v3

    .line 532
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .local v3, "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    :goto_1
    if-nez v0, :cond_2

    .line 533
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 534
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 536
    :cond_2
    return-object v3

    .line 514
    .end local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    :cond_3
    const-string v4, "folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "fieldValue":Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    sget-object v4, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object v1

    .line 517
    invoke-static {v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folder(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v3

    .line 518
    .restart local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    goto :goto_1

    .line 519
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .end local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    :cond_4
    const-string v4, "paper_document"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "fieldValue":Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    sget-object v4, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    move-result-object v1

    .line 522
    invoke-static {v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocument(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v3

    .line 523
    .restart local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    goto :goto_1

    .line 524
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .end local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    :cond_5
    const-string v4, "paper_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "fieldValue":Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    sget-object v4, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    move-result-object v1

    .line 527
    invoke-static {v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolder(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v3

    .line 528
    .restart local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    goto :goto_1

    .line 530
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .end local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    :cond_6
    sget-object v3, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    .restart local v3    # "value":Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 456
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$AssetLogInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 486
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 458
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 459
    const-string v0, "file"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 460
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->access$000(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 461
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 465
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 466
    const-string v0, "folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 467
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->access$100(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 468
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 473
    const-string v0, "paper_document"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 474
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->access$200(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 475
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 479
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 480
    const-string v0, "paper_folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 481
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->access$300(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 482
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 451
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
