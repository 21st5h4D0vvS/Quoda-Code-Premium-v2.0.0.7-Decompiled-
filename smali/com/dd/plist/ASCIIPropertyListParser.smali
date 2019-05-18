.class public Lcom/dd/plist/ASCIIPropertyListParser;
.super Ljava/lang/Object;
.source "ASCIIPropertyListParser.java"


# static fields
.field public static final ARRAY_BEGIN_TOKEN:C = '('

.field public static final ARRAY_END_TOKEN:C = ')'

.field public static final ARRAY_ITEM_DELIMITER_TOKEN:C = ','

.field public static final COMMENT_BEGIN_TOKEN:C = '/'

.field public static final DATA_BEGIN_TOKEN:C = '<'

.field public static final DATA_END_TOKEN:C = '>'

.field public static final DATA_GSBOOL_BEGIN_TOKEN:C = 'B'

.field public static final DATA_GSBOOL_FALSE_TOKEN:C = 'N'

.field public static final DATA_GSBOOL_TRUE_TOKEN:C = 'Y'

.field public static final DATA_GSDATE_BEGIN_TOKEN:C = 'D'

.field public static final DATA_GSINT_BEGIN_TOKEN:C = 'I'

.field public static final DATA_GSOBJECT_BEGIN_TOKEN:C = '*'

.field public static final DATA_GSREAL_BEGIN_TOKEN:C = 'R'

.field public static final DATE_APPLE_DATE_TIME_DELIMITER:C = 'T'

.field public static final DATE_APPLE_END_TOKEN:C = 'Z'

.field public static final DATE_DATE_FIELD_DELIMITER:C = '-'

.field public static final DATE_GS_DATE_TIME_DELIMITER:C = ' '

.field public static final DATE_TIME_FIELD_DELIMITER:C = ':'

.field public static final DICTIONARY_ASSIGN_TOKEN:C = '='

.field public static final DICTIONARY_BEGIN_TOKEN:C = '{'

.field public static final DICTIONARY_END_TOKEN:C = '}'

.field public static final DICTIONARY_ITEM_DELIMITER_TOKEN:C = ';'

.field public static final MULTILINE_COMMENT_END_TOKEN:C = '/'

.field public static final MULTILINE_COMMENT_SECOND_TOKEN:C = '*'

.field public static final QUOTEDSTRING_BEGIN_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_END_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_ESCAPE_TOKEN:C = '\\'

.field public static final SINGLELINE_COMMENT_SECOND_TOKEN:C = '/'

.field public static final WHITESPACE_CARRIAGE_RETURN:C = '\r'

.field public static final WHITESPACE_NEWLINE:C = '\n'

.field public static final WHITESPACE_SPACE:C = ' '

.field public static final WHITESPACE_TAB:C = '\t'

.field private static asciiEncoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private data:[B

.field private index:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method private constructor <init>([B)V
    .locals 0
    .param p1, "propertyListContent"    # [B

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    .line 155
    return-void
.end method

.method private accept(C)Z
    .locals 2
    .param p1, "acceptableSymbol"    # C

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs accept([C)Z
    .locals 7
    .param p1, "acceptableSymbols"    # [C

    .prologue
    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, "symbolPresent":Z
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 181
    .local v1, "c":C
    iget-object v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v6, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v5, v5, v6

    if-ne v5, v1, :cond_0

    .line 182
    const/4 v4, 0x1

    .line 180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "c":C
    :cond_1
    return v4
.end method

.method private varargs acceptSequence([C)Z
    .locals 3
    .param p1, "sequence"    # [C

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 168
    :goto_1
    return v1

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private expect(C)V
    .locals 4
    .param p1, "expectedSymbol"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 224
    :cond_0
    return-void
.end method

.method private varargs expect([C)V
    .locals 5
    .param p1, "expectedSymbols"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-char v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "excString":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but found \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v2, Ljava/text/ParseException;

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v2, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 213
    .end local v0    # "excString":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 1
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    const v1, 0x7fffffff

    invoke-static {p0, v1}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 76
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v1

    return-object v1
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/dd/plist/ASCIIPropertyListParser;

    invoke-direct {v0, p0}, Lcom/dd/plist/ASCIIPropertyListParser;-><init>([B)V

    .line 89
    .local v0, "parser":Lcom/dd/plist/ASCIIPropertyListParser;
    invoke-virtual {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse()Lcom/dd/plist/NSObject;

    move-result-object v1

    return-object v1
.end method

.method private parseArray()Lcom/dd/plist/NSArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x29

    .line 397
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 398
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 399
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 400
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/dd/plist/NSObject;>;"
    :goto_0
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 403
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 408
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    goto :goto_0

    .line 411
    :cond_0
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 412
    new-instance v2, Lcom/dd/plist/NSArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/dd/plist/NSObject;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/dd/plist/NSObject;

    invoke-direct {v2, v1}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    return-object v2
.end method

.method private parseData()Lcom/dd/plist/NSObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x3e

    .line 459
    const/4 v8, 0x0

    .line 461
    .local v8, "obj":Lcom/dd/plist/NSObject;
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 462
    const/16 v9, 0x2a

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 463
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 464
    const/4 v9, 0x4

    new-array v9, v9, [C

    fill-array-data v9, :array_0

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 465
    const/16 v9, 0x42

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 468
    new-array v9, v11, [C

    fill-array-data v9, :array_1

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 469
    const/16 v9, 0x59

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 470
    new-instance v8, Lcom/dd/plist/NSNumber;

    .end local v8    # "obj":Lcom/dd/plist/NSObject;
    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    .line 475
    .restart local v8    # "obj":Lcom/dd/plist/NSObject;
    :goto_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 486
    :cond_0
    :goto_1
    invoke-direct {p0, v10}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 504
    :goto_2
    return-object v8

    .line 472
    :cond_1
    new-instance v8, Lcom/dd/plist/NSNumber;

    .end local v8    # "obj":Lcom/dd/plist/NSObject;
    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    .restart local v8    # "obj":Lcom/dd/plist/NSObject;
    goto :goto_0

    .line 476
    :cond_2
    const/16 v9, 0x44

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 478
    invoke-direct {p0, v10}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "dateString":Ljava/lang/String;
    new-instance v8, Lcom/dd/plist/NSDate;

    .end local v8    # "obj":Lcom/dd/plist/NSObject;
    invoke-direct {v8, v4}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v8    # "obj":Lcom/dd/plist/NSObject;
    goto :goto_1

    .end local v4    # "dateString":Ljava/lang/String;
    :cond_3
    new-array v9, v11, [C

    fill-array-data v9, :array_2

    invoke-direct {p0, v9}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 482
    invoke-direct {p0, v10}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "numberString":Ljava/lang/String;
    new-instance v8, Lcom/dd/plist/NSNumber;

    .end local v8    # "obj":Lcom/dd/plist/NSObject;
    invoke-direct {v8, v7}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    .restart local v8    # "obj":Lcom/dd/plist/NSObject;
    goto :goto_1

    .line 488
    .end local v7    # "numberString":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v10}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "dataString":Ljava/lang/String;
    const-string v9, "\\s+"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v6, v9, 0x2

    .line 492
    .local v6, "numBytes":I
    new-array v2, v6, [B

    .line 493
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v9, v2

    if-ge v5, v9, :cond_5

    .line 494
    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "byteString":Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 496
    .local v1, "byteValue":I
    int-to-byte v9, v1

    aput-byte v9, v2, v5

    .line 493
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 498
    .end local v0    # "byteString":Ljava/lang/String;
    .end local v1    # "byteValue":I
    :cond_5
    new-instance v8, Lcom/dd/plist/NSData;

    .end local v8    # "obj":Lcom/dd/plist/NSObject;
    invoke-direct {v8, v2}, Lcom/dd/plist/NSData;-><init>([B)V

    .line 501
    .restart local v8    # "obj":Lcom/dd/plist/NSObject;
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_2

    .line 464
    :array_0
    .array-data 2
        0x42s
        0x44s
        0x49s
        0x52s
    .end array-data

    .line 468
    :array_1
    .array-data 2
        0x59s
        0x4es
    .end array-data

    .line 480
    :array_2
    .array-data 2
        0x49s
        0x52s
    .end array-data
.end method

.method private parseDictionary()Lcom/dd/plist/NSDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 424
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 425
    new-instance v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 426
    .local v0, "dict":Lcom/dd/plist/NSDictionary;
    :goto_0
    const/16 v3, 0x7d

    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 429
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "keyString":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 437
    const/16 v3, 0x3d

    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 438
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 440
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 441
    .local v2, "object":Lcom/dd/plist/NSObject;
    invoke-virtual {v0, v1, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 442
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 443
    const/16 v3, 0x3b

    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 444
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    goto :goto_0

    .line 432
    .end local v1    # "keyString":Ljava/lang/String;
    .end local v2    # "object":Lcom/dd/plist/NSObject;
    :cond_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "keyString":Ljava/lang/String;
    goto :goto_1

    .line 447
    .end local v1    # "keyString":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 448
    return-object v0
.end method

.method private static parseEscapedSequence(Ljava/text/StringCharacterIterator;)Ljava/lang/String;
    .locals 12
    .param p0, "iterator"    # Ljava/text/StringCharacterIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 637
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    .line 638
    .local v3, "c":C
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_0

    .line 639
    new-instance v6, Ljava/lang/String;

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 668
    :goto_0
    return-object v6

    .line 640
    :cond_0
    const/16 v6, 0x22

    if-ne v3, v6, :cond_1

    .line 641
    new-instance v6, Ljava/lang/String;

    new-array v7, v8, [B

    fill-array-data v7, :array_1

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_1
    const/16 v6, 0x62

    if-ne v3, v6, :cond_2

    .line 643
    new-instance v6, Ljava/lang/String;

    new-array v7, v8, [B

    fill-array-data v7, :array_2

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_2
    const/16 v6, 0x6e

    if-ne v3, v6, :cond_3

    .line 645
    new-instance v6, Ljava/lang/String;

    new-array v7, v8, [B

    fill-array-data v7, :array_3

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_3
    const/16 v6, 0x72

    if-ne v3, v6, :cond_4

    .line 647
    new-instance v6, Ljava/lang/String;

    new-array v7, v8, [B

    fill-array-data v7, :array_4

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_4
    const/16 v6, 0x74

    if-ne v3, v6, :cond_5

    .line 649
    new-instance v6, Ljava/lang/String;

    new-array v7, v8, [B

    fill-array-data v7, :array_5

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_5
    const/16 v6, 0x55

    if-eq v3, v6, :cond_6

    const/16 v6, 0x75

    if-ne v3, v6, :cond_7

    .line 652
    :cond_6
    const-string v1, ""

    .line 653
    .local v1, "byte1":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    const-string v2, ""

    .line 656
    .local v2, "byte2":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 658
    new-array v5, v8, [B

    invoke-static {v1, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v9

    invoke-static {v2, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v10

    .line 659
    .local v5, "stringBytes":[B
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 662
    .end local v1    # "byte1":Ljava/lang/String;
    .end local v2    # "byte2":Ljava/lang/String;
    .end local v5    # "stringBytes":[B
    :cond_7
    const-string v4, ""

    .line 663
    .local v4, "num":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    const/16 v6, 0x8

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 667
    .local v0, "asciiCode":I
    new-array v5, v8, [B

    aput-byte v9, v5, v9

    int-to-byte v6, v0

    aput-byte v6, v5, v10

    .line 668
    .restart local v5    # "stringBytes":[B
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 639
    nop

    :array_0
    .array-data 1
        0x0t
        0x5ct
    .end array-data

    .line 641
    nop

    :array_1
    .array-data 1
        0x0t
        0x22t
    .end array-data

    .line 643
    nop

    :array_2
    .array-data 1
        0x0t
        0x8t
    .end array-data

    .line 645
    nop

    :array_3
    .array-data 1
        0x0t
        0xat
    .end array-data

    .line 647
    nop

    :array_4
    .array-data 1
        0x0t
        0xdt
    .end array-data

    .line 649
    nop

    :array_5
    .array-data 1
        0x0t
        0x9t
    .end array-data
.end method

.method private parseNumerical()Lcom/dd/plist/NSObject;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 513
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "numericalString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 518
    new-instance v2, Lcom/dd/plist/NSDate;

    invoke-direct {v2, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    .line 524
    :goto_0
    return-object v2

    .line 521
    :cond_0
    new-instance v2, Lcom/dd/plist/NSNumber;

    invoke-direct {v2, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/dd/plist/NSString;

    invoke-direct {v2, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseObject()Lcom/dd/plist/NSObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 371
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v4, v4, v5

    const/16 v5, 0x2f

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v4, v4, v5

    const/16 v5, 0x3a

    if-ge v4, v5, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseNumerical()Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 346
    :sswitch_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseArray()Lcom/dd/plist/NSArray;

    move-result-object v0

    goto :goto_0

    .line 349
    :sswitch_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseDictionary()Lcom/dd/plist/NSDictionary;

    move-result-object v0

    goto :goto_0

    .line 352
    :sswitch_2
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseData()Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 355
    :sswitch_3
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "quotedString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 359
    :try_start_0
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "date":Lcom/dd/plist/NSDate;
    goto :goto_0

    .line 361
    .end local v0    # "date":Lcom/dd/plist/NSDate;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v3    # "quotedString":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "parsedString":Ljava/lang/String;
    const-string v4, "YES"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 379
    :cond_2
    const-string v4, "NO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 382
    :cond_3
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v2}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x28 -> :sswitch_0
        0x3c -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private parseQuotedString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5c

    .line 549
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 550
    const-string v1, ""

    .line 551
    .local v1, "quotedString":Ljava/lang/String;
    const/4 v2, 0x1

    .line 552
    .local v2, "unescapedBackslash":Z
    :goto_0
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v4, v4, v5

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_3

    if-eqz v2, :cond_3

    .line 553
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v6, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-direct {p0, v7}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_2

    if-eqz v2, :cond_2

    .line 556
    const/4 v2, 0x0

    .line 560
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 558
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 564
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 569
    .local v3, "unescapedString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 570
    return-object v3

    .line 565
    .end local v3    # "unescapedString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "The quoted string could not be parsed."

    iget v6, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public static declared-synchronized parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 587
    const-class v13, Lcom/dd/plist/ASCIIPropertyListParser;

    monitor-enter v13

    :try_start_0
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 588
    .local v11, "strBytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    new-instance v8, Ljava/text/StringCharacterIterator;

    invoke-direct {v8, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 589
    .local v8, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v8}, Ljava/text/StringCharacterIterator;->current()C

    move-result v4

    .line 591
    .local v4, "c":C
    :goto_0
    invoke-virtual {v8}, Ljava/text/StringCharacterIterator;->getIndex()I

    move-result v12

    invoke-virtual {v8}, Ljava/text/StringCharacterIterator;->getEndIndex()I

    move-result v14

    if-ge v12, v14, :cond_1

    .line 592
    packed-switch v4, :pswitch_data_0

    .line 600
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    int-to-byte v12, v4

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_0
    invoke-virtual {v8}, Ljava/text/StringCharacterIterator;->next()C

    move-result v4

    goto :goto_0

    .line 594
    :pswitch_0
    invoke-static {v8}, Lcom/dd/plist/ASCIIPropertyListParser;->parseEscapedSequence(Ljava/text/StringCharacterIterator;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 595
    .local v2, "bts":[B
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_0

    aget-byte v1, v0, v7

    .line 596
    .local v1, "b":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 607
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "bts":[B
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v3, v12, [B

    .line 608
    .local v3, "bytArr":[B
    const/4 v6, 0x0

    .line 609
    .local v6, "i":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 610
    .local v1, "b":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    aput-byte v12, v3, v6

    .line 611
    add-int/lit8 v6, v6, 0x1

    .line 612
    goto :goto_2

    .line 614
    .end local v1    # "b":Ljava/lang/Byte;
    :cond_2
    new-instance v10, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v10, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 615
    .local v10, "result":Ljava/lang/String;
    invoke-static {v10}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 619
    .local v5, "charBuf":Ljava/nio/CharBuffer;
    sget-object v12, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v12, :cond_3

    .line 620
    const-string v12, "ASCII"

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v12

    sput-object v12, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 621
    :cond_3
    sget-object v12, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v12, v5}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 622
    sget-object v12, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v12, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 626
    .end local v10    # "result":Ljava/lang/String;
    :cond_4
    monitor-exit v13

    return-object v10

    .line 587
    .end local v3    # "bytArr":[B
    .end local v4    # "c":C
    .end local v5    # "charBuf":Ljava/nio/CharBuffer;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iterator":Ljava/text/StringCharacterIterator;
    .end local v11    # "strBytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 592
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private parseString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    const/16 v1, 0x8

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil([C)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "parsedString":Ljava/lang/String;
    return-object v0

    .line 535
    :array_0
    .array-data 2
        0x20s
        0x9s
        0xas
        0xds
        0x2cs
        0x3bs
        0x3ds
        0x29s
    .end array-data
.end method

.method private read(C)V
    .locals 1
    .param p1, "symbol"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->expect(C)V

    .line 234
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 235
    return-void
.end method

.method private readInputUntil(C)Ljava/lang/String;
    .locals 4
    .param p1, "symbol"    # C

    .prologue
    .line 310
    const-string v0, ""

    .line 311
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 315
    :cond_0
    return-object v0
.end method

.method private varargs readInputUntil([C)Ljava/lang/String;
    .locals 4
    .param p1, "symbols"    # [C

    .prologue
    .line 295
    const-string v0, ""

    .line 296
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 300
    :cond_0
    return-object v0
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 242
    return-void
.end method

.method private skip(I)V
    .locals 1
    .param p1, "numSymbols"    # I

    .prologue
    .line 250
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 251
    return-void
.end method

.method private skipWhitespacesAndComments()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "commentSkipped":Z
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 267
    :cond_1
    new-array v1, v2, [C

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->acceptSequence([C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    .line 269
    new-array v1, v2, [C

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil([C)Ljava/lang/String;

    .line 270
    const/4 v0, 0x1

    .line 285
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 286
    return-void

    .line 273
    :cond_3
    new-array v1, v2, [C

    fill-array-data v1, :array_3

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->acceptSequence([C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    .line 276
    :goto_2
    new-array v1, v2, [C

    fill-array-data v1, :array_4

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->acceptSequence([C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    .line 282
    const/4 v0, 0x1

    goto :goto_1

    .line 280
    :cond_4
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_2

    .line 262
    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
        0x9s
    .end array-data

    .line 267
    :array_1
    .array-data 2
        0x2fs
        0x2fs
    .end array-data

    .line 269
    :array_2
    .array-data 2
        0xds
        0xas
    .end array-data

    .line 273
    :array_3
    .array-data 2
        0x2fs
        0x2as
    .end array-data

    .line 276
    :array_4
    .array-data 2
        0x2as
        0x2fs
    .end array-data
.end method


# virtual methods
.method public parse()Lcom/dd/plist/NSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v1, 0x0

    iput v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 327
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 328
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Reached end of input unexpectedly."

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 328
    nop

    :array_0
    .array-data 2
        0x7bs
        0x28s
        0x2fs
    .end array-data
.end method
