.class Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberSpaceLimitsChangeStatusDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;
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
    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 139
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 140
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_0
    if-nez v3, :cond_7

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "f_previousValue":Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
    const/4 v0, 0x0

    .line 145
    .local v0, "f_newValue":Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 148
    const-string v5, "previous_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    sget-object v5, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_1
    const-string v5, "new_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    sget-object v5, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 158
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 159
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"previous_value\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 161
    :cond_4
    if-nez v0, :cond_5

    .line 162
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"new_value\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    invoke-direct {v4, v1, v0}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;)V

    .line 169
    .local v4, "value":Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;
    if-nez p2, :cond_6

    .line 170
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 172
    :cond_6
    return-object v4

    .line 167
    .end local v0    # "f_newValue":Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
    .end local v1    # "f_previousValue":Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
    .end local v4    # "value":Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;
    :cond_7
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
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p3, :cond_0

    .line 123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 125
    :cond_0
    const-string v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 127
    const-string v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 129
    if-nez p3, :cond_1

    .line 130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 132
    :cond_1
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
    .line 117
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
