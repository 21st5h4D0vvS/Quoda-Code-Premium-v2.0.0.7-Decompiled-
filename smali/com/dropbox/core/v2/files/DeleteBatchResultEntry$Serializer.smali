.class Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DeleteBatchResultEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 284
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 292
    :goto_0
    if-nez v2, :cond_1

    .line 293
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 288
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 289
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_1
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    sget-object v4, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    move-result-object v1

    .line 298
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->success(Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object v3

    .line 309
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    .local v3, "value":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    :goto_1
    if-nez v0, :cond_2

    .line 310
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 313
    :cond_2
    return-object v3

    .line 300
    .end local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    :cond_3
    const-string v4, "failure"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/DeleteError;
    const-string v4, "failure"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 303
    sget-object v4, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v1

    .line 304
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failure(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object v3

    .line 305
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    goto :goto_1

    .line 307
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/DeleteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    :cond_4
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
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
    .line 250
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchResultEntry$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 258
    const-string v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->access$000(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;)Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchResultData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 275
    :goto_0
    return-void

    .line 264
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 265
    const-string v0, "failure"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 266
    const-string v0, "failure"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->access$100(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 250
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
