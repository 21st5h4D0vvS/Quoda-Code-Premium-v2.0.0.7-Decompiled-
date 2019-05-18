.class Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AccountCaptureChangeAvailabilityDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 156
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 157
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 159
    :cond_0
    if-nez v3, :cond_6

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "f_newValue":Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;
    const/4 v1, 0x0

    .line 162
    .local v1, "f_previousValue":Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 165
    const-string v5, "new_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    sget-object v5, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    const-string v5, "previous_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    sget-object v5, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_previousValue":Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;
    check-cast v1, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;

    .restart local v1    # "f_previousValue":Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;
    goto :goto_0

    .line 172
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 175
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 176
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"new_value\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;-><init>(Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;)V

    .line 183
    .local v4, "value":Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;
    if-nez p2, :cond_5

    .line 184
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 186
    :cond_5
    return-object v4

    .line 181
    .end local v0    # "f_newValue":Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;
    .end local v1    # "f_previousValue":Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;
    .end local v4    # "value":Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;
    :cond_6
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p3, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 140
    :cond_0
    const-string v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 142
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AccountCaptureAvailability;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 146
    :cond_1
    if-nez p3, :cond_2

    .line 147
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 149
    :cond_2
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
    .line 132
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
