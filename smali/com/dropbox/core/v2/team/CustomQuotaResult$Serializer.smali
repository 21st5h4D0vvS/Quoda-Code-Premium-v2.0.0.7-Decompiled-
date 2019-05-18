.class Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "CustomQuotaResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/CustomQuotaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 347
    :goto_0
    if-nez v2, :cond_1

    .line 348
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 343
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 344
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 350
    :cond_1
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/UserCustomQuotaResult;
    sget-object v4, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->success(Lcom/dropbox/core/v2/team/UserCustomQuotaResult;)Lcom/dropbox/core/v2/team/CustomQuotaResult;

    move-result-object v3

    .line 364
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/UserCustomQuotaResult;
    .local v3, "value":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    :goto_1
    if-nez v0, :cond_2

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 368
    :cond_2
    return-object v3

    .line 355
    .end local v3    # "value":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    :cond_3
    const-string v4, "invalid_user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const-string v4, "invalid_user"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 358
    sget-object v4, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    .line 359
    invoke-static {v1}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/CustomQuotaResult;

    move-result-object v3

    .line 360
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    goto :goto_1

    .line 362
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/team/CustomQuotaResult;->OTHER:Lcom/dropbox/core/v2/team/CustomQuotaResult;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/CustomQuotaResult;
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
    .line 305
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/CustomQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/CustomQuotaResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/dropbox/core/v2/team/CustomQuotaResult$1;->$SwitchMap$com$dropbox$core$v2$team$CustomQuotaResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->tag()Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 313
    const-string v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 314
    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->access$000(Lcom/dropbox/core/v2/team/CustomQuotaResult;)Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserCustomQuotaResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 315
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 320
    const-string v0, "invalid_user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 321
    const-string v0, "invalid_user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->access$100(Lcom/dropbox/core/v2/team/CustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 310
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
    .line 305
    check-cast p1, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/CustomQuotaResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
