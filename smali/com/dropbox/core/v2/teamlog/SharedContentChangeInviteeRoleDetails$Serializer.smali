.class Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedContentChangeInviteeRoleDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v8, 0x0

    .line 266
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 267
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 268
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 270
    :cond_0
    if-nez v8, :cond_9

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "f_targetAssetIndex":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 273
    .local v4, "f_originalFolderName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 274
    .local v5, "f_newSharingPermission":Ljava/lang/String;
    const/4 v6, 0x0

    .line 275
    .local v6, "f_previousSharingPermission":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 278
    const-string v2, "target_asset_index"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_targetAssetIndex":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0    # "f_targetAssetIndex":Ljava/lang/Long;
    goto :goto_0

    .line 281
    :cond_1
    const-string v2, "original_folder_name"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_originalFolderName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_originalFolderName":Ljava/lang/String;
    goto :goto_0

    .line 284
    :cond_2
    const-string v2, "new_sharing_permission"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_newSharingPermission":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_newSharingPermission":Ljava/lang/String;
    goto :goto_0

    .line 287
    :cond_3
    const-string v2, "previous_sharing_permission"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_previousSharingPermission":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_previousSharingPermission":Ljava/lang/String;
    goto :goto_0

    .line 291
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 294
    .end local v7    # "field":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 295
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v3, "Required field \"target_asset_index\" missing."

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_6
    if-nez v4, :cond_7

    .line 298
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v3, "Required field \"original_folder_name\" missing."

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_7
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v1, "value":Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
    if-nez p2, :cond_8

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    :cond_8
    return-object v1

    .line 303
    .end local v0    # "f_targetAssetIndex":Ljava/lang/Long;
    .end local v1    # "value":Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
    .end local v4    # "f_originalFolderName":Ljava/lang/String;
    .end local v5    # "f_newSharingPermission":Ljava/lang/String;
    .end local v6    # "f_previousSharingPermission":Ljava/lang/String;
    :cond_9
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p3, :cond_0

    .line 243
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 245
    :cond_0
    const-string v0, "target_asset_index"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->targetAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 247
    const-string v0, "original_folder_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->originalFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 249
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newSharingPermission:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "new_sharing_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newSharingPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 253
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "previous_sharing_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 257
    :cond_2
    if-nez p3, :cond_3

    .line 258
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 260
    :cond_3
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 237
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
