.class Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadApiRateLimitValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 278
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 286
    :goto_0
    if-nez v2, :cond_1

    .line 287
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 282
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 283
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 289
    :cond_1
    const-string v4, "unlimited"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    sget-object v3, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .line 301
    .local v3, "value":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    :goto_1
    if-nez v0, :cond_2

    .line 302
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 303
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 305
    :cond_2
    return-object v3

    .line 292
    .end local v3    # "value":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    :cond_3
    const-string v4, "limit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "fieldValue":Ljava/lang/Long;
    const-string v4, "limit"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 295
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .line 296
    .restart local v1    # "fieldValue":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limit(J)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v3

    .line 297
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    goto :goto_1

    .line 299
    .end local v1    # "fieldValue":Ljava/lang/Long;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
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
    .line 247
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$1;->$SwitchMap$com$dropbox$core$v2$team$UploadApiRateLimitValue$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->tag()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 254
    :pswitch_0
    const-string v0, "unlimited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 259
    const-string v0, "limit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->access$000(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 262
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 252
    nop

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
    .line 247
    check-cast p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->serialize(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
