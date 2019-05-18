.class Lorg/joni/Parser;
.super Lorg/joni/Lexer;
.source "Parser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BRACKET_END:[B

.field private static final POSIX_BRACKET_CHECK_LIMIT_LENGTH:I = 0x14

.field private static final POSIX_BRACKET_NAME_MIN_LEN:I = 0x4


# instance fields
.field protected final regex:Lorg/joni/Regex;

.field protected returnCode:I

.field protected root:Lorg/joni/ast/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/joni/Parser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/joni/Parser;->$assertionsDisabled:Z

    .line 71
    const-string v0, ":]"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/joni/Parser;->BRACKET_END:[B

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joni/ScanEnvironment;[BII)V
    .locals 1
    .param p1, "env"    # Lorg/joni/ScanEnvironment;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joni/Lexer;-><init>(Lorg/joni/ScanEnvironment;[BII)V

    .line 59
    iget-object v0, p1, Lorg/joni/ScanEnvironment;->reg:Lorg/joni/Regex;

    iput-object v0, p0, Lorg/joni/Parser;->regex:Lorg/joni/Regex;

    .line 60
    return-void
.end method

.method private codeExistCheck(IZ)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "ignoreEscaped"    # Z

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/joni/Parser;->mark()V

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "inEsc":Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/joni/Parser;->left()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lorg/joni/Parser;->fetch()V

    .line 137
    iget v1, p0, Lorg/joni/Parser;->c:I

    if-ne v1, p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lorg/joni/Parser;->restore()V

    .line 139
    const/4 v1, 0x1

    .line 146
    :goto_1
    return v1

    .line 141
    :cond_2
    iget v1, p0, Lorg/joni/Parser;->c:I

    iget-object v2, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    iget-object v2, v2, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v2, v2, Lorg/joni/Syntax$MetaCharTable;->esc:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0}, Lorg/joni/Parser;->restore()V

    .line 146
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findStrPosition([IIIILorg/jcodings/Ptr;)I
    .locals 6
    .param p1, "s"    # [I
    .param p2, "n"    # I
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "nextChar"    # Lorg/jcodings/Ptr;

    .prologue
    .line 624
    move v1, p3

    .line 625
    .local v1, "p":I
    const/4 v0, 0x0

    .line 626
    .local v0, "i":I
    :goto_0
    if-ge v1, p4, :cond_4

    .line 627
    iget-object v4, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/Parser;->bytes:[B

    invoke-virtual {v4, v5, v1, p4}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v3

    .line 628
    .local v3, "x":I
    iget-object v4, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/Parser;->bytes:[B

    invoke-virtual {v4, v5, v1, p4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v4

    add-int v2, v1, v4

    .line 629
    .local v2, "q":I
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ne v3, v4, :cond_3

    .line 630
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p2, :cond_0

    if-ge v2, p4, :cond_0

    .line 631
    iget-object v4, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/Parser;->bytes:[B

    invoke-virtual {v4, v5, v2, p4}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v3

    .line 632
    aget v4, p1, v0

    if-eq v3, v4, :cond_2

    .line 635
    :cond_0
    if-lt v0, p2, :cond_3

    .line 636
    iget-object v4, p0, Lorg/joni/Parser;->bytes:[B

    iget v5, p5, Lorg/jcodings/Ptr;->p:I

    aget-byte v4, v4, v5

    if-eqz v4, :cond_1

    iput v2, p5, Lorg/jcodings/Ptr;->p:I

    .line 642
    .end local v1    # "p":I
    .end local v2    # "q":I
    .end local v3    # "x":I
    :cond_1
    :goto_2
    return v1

    .line 633
    .restart local v1    # "p":I
    .restart local v2    # "q":I
    .restart local v3    # "x":I
    :cond_2
    iget-object v4, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    iget-object v5, p0, Lorg/joni/Parser;->bytes:[B

    invoke-virtual {v4, v5, v2, p4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v4

    add-int/2addr v2, v4

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_3
    move v1, v2

    goto :goto_0

    .line 642
    .end local v2    # "q":I
    .end local v3    # "x":I
    :cond_4
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private parseBranch(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;
    .locals 6
    .param p1, "term"    # Lorg/joni/constants/TokenType;

    .prologue
    const/4 v5, 0x0

    .line 953
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v0

    .line 955
    .local v0, "node":Lorg/joni/ast/Node;
    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v4, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v4, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    if-ne v3, v4, :cond_2

    :cond_0
    move-object v2, v0

    .line 973
    :cond_1
    return-object v2

    .line 958
    :cond_2
    invoke-static {v0, v5}, Lorg/joni/ast/ConsAltNode;->newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v2

    .line 959
    .local v2, "top":Lorg/joni/ast/ConsAltNode;
    move-object v1, v2

    .line 961
    .local v1, "t":Lorg/joni/ast/ConsAltNode;
    :goto_0
    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v4, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v4, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    if-eq v3, v4, :cond_1

    .line 962
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Lorg/joni/ast/Node;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    move-object v3, v0

    .line 964
    check-cast v3, Lorg/joni/ast/ConsAltNode;

    invoke-virtual {v1, v3}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    :goto_1
    move-object v3, v0

    .line 965
    check-cast v3, Lorg/joni/ast/ConsAltNode;

    iget-object v3, v3, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v3, :cond_3

    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .end local v0    # "node":Lorg/joni/ast/Node;
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    .restart local v0    # "node":Lorg/joni/ast/Node;
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 967
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    goto :goto_0

    .line 969
    :cond_4
    invoke-static {v0, v5}, Lorg/joni/ast/ConsAltNode;->newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    .line 970
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    goto :goto_0
.end method

.method private parseCharClass()Lorg/joni/ast/CClassNode;
    .locals 22

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CHAR:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getC()I

    move-result v19

    const/16 v20, 0x5e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/joni/Token;->escaped:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 154
    const/4 v15, 0x1

    .line 155
    .local v15, "neg":Z
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    .line 160
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v19

    if-nez v19, :cond_1

    .line 161
    const/16 v19, 0x5d

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/joni/Parser;->codeExistCheck(IZ)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "empty char-class"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CHAR:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    .line 166
    :cond_1
    new-instance v10, Lorg/joni/ast/CClassNode;

    invoke-direct {v10}, Lorg/joni/ast/CClassNode;-><init>()V

    .line 167
    .local v10, "cc":Lorg/joni/ast/CClassNode;
    const/16 v16, 0x0

    .line 168
    .local v16, "prevCC":Lorg/joni/ast/CClassNode;
    const/16 v18, 0x0

    .line 170
    .local v18, "workCC":Lorg/joni/ast/CClassNode;
    new-instance v7, Lorg/joni/ast/CClassNode$CCStateArg;

    invoke-direct {v7}, Lorg/joni/ast/CClassNode$CCStateArg;-><init>()V

    .line 172
    .local v7, "arg":Lorg/joni/ast/CClassNode$CCStateArg;
    const/4 v6, 0x0

    .line 173
    .local v6, "andStart":Z
    sget-object v19, Lorg/joni/constants/CCSTATE;->START:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    .line 175
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1d

    .line 176
    const/4 v12, 0x0

    .line 178
    .local v12, "fetched":Z
    sget-object v19, Lorg/joni/Parser$1;->$SwitchMap$org$joni$constants$TokenType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/joni/constants/TokenType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 344
    :goto_2
    const-string v19, "internal parser error (bug)"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->newInternalException(Ljava/lang/String;)V

    .line 347
    :goto_3
    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    goto :goto_1

    .line 157
    .end local v6    # "andStart":Z
    .end local v7    # "arg":Lorg/joni/ast/CClassNode$CCStateArg;
    .end local v10    # "cc":Lorg/joni/ast/CClassNode;
    .end local v12    # "fetched":Z
    .end local v15    # "neg":Z
    .end local v16    # "prevCC":Lorg/joni/ast/CClassNode;
    .end local v18    # "workCC":Lorg/joni/ast/CClassNode;
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "neg":Z
    goto/16 :goto_0

    .line 190
    .restart local v6    # "andStart":Z
    .restart local v7    # "arg":Lorg/joni/ast/CClassNode$CCStateArg;
    .restart local v10    # "cc":Lorg/joni/ast/CClassNode;
    .restart local v12    # "fetched":Z
    .restart local v16    # "prevCC":Lorg/joni/ast/CClassNode;
    .restart local v18    # "workCC":Lorg/joni/ast/CClassNode;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getCode()I

    move-result v19

    const/16 v20, 0x100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/joni/Token;->getC()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lorg/jcodings/Encoding;->codeToMbcLength(I)I

    move-result v14

    .local v14, "len":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_5

    .line 191
    .end local v14    # "len":I
    :cond_4
    sget-object v19, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    .line 196
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getC()I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 197
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassValEntry2(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto :goto_3

    .line 193
    .restart local v14    # "len":I
    :cond_5
    sget-object v19, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    goto :goto_4

    .line 202
    .end local v14    # "len":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v19

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/joni/Token;->base:I

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 203
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 204
    .local v9, "buf":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Parser;->p:I

    move/from16 v17, v0

    .line 205
    .local v17, "psave":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Lorg/joni/Token;->base:I

    .line 206
    .local v8, "base":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/joni/Token;->getC()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v9, v19

    .line 208
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jcodings/Encoding;->maxLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    .line 209
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/joni/Token;->base:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v8, :cond_a

    .line 211
    :cond_6
    const/4 v12, 0x1

    .line 216
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jcodings/Encoding;->minLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_8

    const-string v19, "too short multibyte code string"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->newValueException(Ljava/lang/String;)V

    .line 218
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1, v13}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v14

    .line 219
    .restart local v14    # "len":I
    if-ge v13, v14, :cond_b

    .line 220
    const-string v19, "too short multibyte code string"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->newValueException(Ljava/lang/String;)V

    .line 226
    :cond_9
    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_d

    .line 227
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 228
    sget-object v19, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    .line 237
    .end local v8    # "base":I
    .end local v9    # "buf":[B
    .end local v13    # "i":I
    .end local v14    # "len":I
    .end local v17    # "psave":I
    :goto_7
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassValEntry2(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 214
    .restart local v8    # "base":I
    .restart local v9    # "buf":[B
    .restart local v13    # "i":I
    .restart local v17    # "psave":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getC()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v9, v13

    .line 208
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 221
    .restart local v14    # "len":I
    :cond_b
    if-le v13, v14, :cond_9

    .line 222
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/joni/Parser;->p:I

    .line 223
    const/4 v13, 0x1

    :goto_8
    if-ge v13, v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 224
    :cond_c
    const/4 v12, 0x0

    goto :goto_6

    .line 230
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 231
    sget-object v19, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    goto :goto_7

    .line 234
    .end local v8    # "base":I
    .end local v9    # "buf":[B
    .end local v13    # "i":I
    .end local v14    # "len":I
    .end local v17    # "psave":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getC()I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 235
    sget-object v19, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    goto :goto_7

    .line 242
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getCode()I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 243
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassValEntry(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 248
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/joni/Parser;->parsePosixBracket(Lorg/joni/ast/CClassNode;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/joni/Token;->backP:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/joni/Parser;->p:I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getC()I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 252
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 253
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassValEntry(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 256
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v7, v0}, Lorg/joni/ast/CClassNode;->nextStateClass(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V

    goto/16 :goto_3

    .line 260
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getPropCType()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/joni/Token;->getPropNot()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    invoke-virtual {v10, v0, v1, v2, v3}, Lorg/joni/ast/CClassNode;->addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v7, v0}, Lorg/joni/ast/CClassNode;->nextStateClass(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V

    goto/16 :goto_3

    .line 265
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchCharPropertyToCType()I

    move-result v11

    .line 266
    .local v11, "ctype":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getPropNot()Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-virtual {v10, v11, v0, v1, v2}, Lorg/joni/ast/CClassNode;->addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v7, v0}, Lorg/joni/ast/CClassNode;->nextStateClass(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V

    goto/16 :goto_3

    .line 271
    .end local v11    # "ctype":I
    :pswitch_6
    iget-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 272
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    .line 273
    const/4 v12, 0x1

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 275
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassRangeEndVal(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 277
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_AND:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassRangeEndVal(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 282
    :cond_11
    sget-object v19, Lorg/joni/constants/CCSTATE;->RANGE:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    goto/16 :goto_3

    .line 283
    :cond_12
    iget-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/CCSTATE;->START:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Token;->getC()I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 285
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 286
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    .line 287
    const/4 v12, 0x1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_RANGE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_13

    if-eqz v6, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 289
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassValEntry(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 291
    :cond_15
    iget-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/CCSTATE;->RANGE:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassSbChar(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 296
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchTokenInCC()Lorg/joni/constants/TokenType;

    .line 297
    const/4 v12, 0x1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_CLOSE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 299
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassRangeEndVal(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 301
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/TokenType;->CC_AND:Lorg/joni/constants/TokenType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassRangeEndVal(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 307
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Syntax;->allowDoubleRangeOpInCC()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Lorg/joni/ScanEnvironment;->ccEscWarn(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lorg/joni/Parser;->parseCharClassSbChar(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    goto/16 :goto_3

    .line 312
    :cond_19
    const-string v19, "unmatched range specifier in char-class"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 317
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lorg/joni/Parser;->parseCharClass()Lorg/joni/ast/CClassNode;

    move-result-object v5

    .line 318
    .local v5, "acc":Lorg/joni/ast/CClassNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v5, v0}, Lorg/joni/ast/CClassNode;->or(Lorg/joni/ast/CClassNode;Lorg/jcodings/Encoding;)V

    goto/16 :goto_3

    .line 322
    .end local v5    # "acc":Lorg/joni/ast/CClassNode;
    :pswitch_8
    iget-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 323
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 324
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v7, v0}, Lorg/joni/ast/CClassNode;->nextStateValue(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V

    .line 328
    :cond_1a
    const/4 v6, 0x1

    .line 329
    sget-object v19, Lorg/joni/constants/CCSTATE;->START:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    .line 330
    if-eqz v16, :cond_1b

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lorg/joni/ast/CClassNode;->and(Lorg/joni/ast/CClassNode;Lorg/jcodings/Encoding;)V

    .line 337
    :goto_9
    invoke-virtual {v10}, Lorg/joni/ast/CClassNode;->clear()V

    goto/16 :goto_3

    .line 333
    :cond_1b
    move-object/from16 v16, v10

    .line 334
    if-nez v18, :cond_1c

    new-instance v18, Lorg/joni/ast/CClassNode;

    .end local v18    # "workCC":Lorg/joni/ast/CClassNode;
    invoke-direct/range {v18 .. v18}, Lorg/joni/ast/CClassNode;-><init>()V

    .line 335
    .restart local v18    # "workCC":Lorg/joni/ast/CClassNode;
    :cond_1c
    move-object/from16 v10, v18

    goto :goto_9

    .line 341
    :pswitch_9
    const-string v19, "premature end of char-class"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 351
    .end local v12    # "fetched":Z
    :cond_1d
    iget-object v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->state:Lorg/joni/constants/CCSTATE;

    move-object/from16 v19, v0

    sget-object v20, Lorg/joni/constants/CCSTATE;->VALUE:Lorg/joni/constants/CCSTATE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 352
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 353
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v7, v0}, Lorg/joni/ast/CClassNode;->nextStateValue(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V

    .line 357
    :cond_1e
    if-eqz v16, :cond_1f

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lorg/joni/ast/CClassNode;->and(Lorg/joni/ast/CClassNode;Lorg/jcodings/Encoding;)V

    .line 359
    move-object/from16 v10, v16

    .line 362
    :cond_1f
    if-eqz v15, :cond_21

    .line 363
    invoke-virtual {v10}, Lorg/joni/ast/CClassNode;->setNot()V

    .line 368
    :goto_a
    invoke-virtual {v10}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joni/Syntax;->notNewlineInNegativeCC()Z

    move-result v19

    if-eqz v19, :cond_20

    .line 369
    invoke-virtual {v10}, Lorg/joni/ast/CClassNode;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_20

    .line 370
    const/16 v4, 0xa

    .line 371
    .local v4, "NEW_LINE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Lorg/jcodings/Encoding;->isNewLine(I)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v19, v0

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Lorg/jcodings/Encoding;->codeToMbcLength(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 373
    iget-object v0, v10, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Lorg/joni/BitSet;->set(I)V

    .line 381
    .end local v4    # "NEW_LINE":I
    :cond_20
    :goto_b
    return-object v10

    .line 365
    :cond_21
    invoke-virtual {v10}, Lorg/joni/ast/CClassNode;->clearNot()V

    goto :goto_a

    .line 375
    .restart local v4    # "NEW_LINE":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v19, v0

    const/16 v20, 0xa

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lorg/joni/ast/CClassNode;->addCodeRange(Lorg/joni/ScanEnvironment;II)V

    goto :goto_b

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private parseCharClassRangeEndVal(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V
    .locals 1
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;
    .param p2, "arg"    # Lorg/joni/ast/CClassNode$CCStateArg;

    .prologue
    .line 392
    const/16 v0, 0x2d

    iput v0, p2, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p2, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 394
    invoke-direct {p0, p1, p2}, Lorg/joni/Parser;->parseCharClassValEntry(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    .line 395
    return-void
.end method

.method private parseCharClassSbChar(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V
    .locals 1
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;
    .param p2, "arg"    # Lorg/joni/ast/CClassNode$CCStateArg;

    .prologue
    .line 385
    sget-object v0, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    iput-object v0, p2, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    .line 386
    iget-object v0, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v0}, Lorg/joni/Token;->getC()I

    move-result v0

    iput v0, p2, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p2, Lorg/joni/ast/CClassNode$CCStateArg;->vIsRaw:Z

    .line 388
    invoke-direct {p0, p1, p2}, Lorg/joni/Parser;->parseCharClassValEntry2(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    .line 389
    return-void
.end method

.method private parseCharClassValEntry(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V
    .locals 3
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;
    .param p2, "arg"    # Lorg/joni/ast/CClassNode$CCStateArg;

    .prologue
    .line 398
    iget-object v1, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    iget v2, p2, Lorg/joni/ast/CClassNode$CCStateArg;->v:I

    invoke-virtual {v1, v2}, Lorg/jcodings/Encoding;->codeToMbcLength(I)I

    move-result v0

    .line 399
    .local v0, "len":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v1, Lorg/joni/constants/CCVALTYPE;->SB:Lorg/joni/constants/CCVALTYPE;

    :goto_0
    iput-object v1, p2, Lorg/joni/ast/CClassNode$CCStateArg;->inType:Lorg/joni/constants/CCVALTYPE;

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/joni/Parser;->parseCharClassValEntry2(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V

    .line 401
    return-void

    .line 399
    :cond_0
    sget-object v1, Lorg/joni/constants/CCVALTYPE;->CODE_POINT:Lorg/joni/constants/CCVALTYPE;

    goto :goto_0
.end method

.method private parseCharClassValEntry2(Lorg/joni/ast/CClassNode;Lorg/joni/ast/CClassNode$CCStateArg;)V
    .locals 1
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;
    .param p2, "arg"    # Lorg/joni/ast/CClassNode$CCStateArg;

    .prologue
    .line 404
    iget-object v0, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {p1, p2, v0}, Lorg/joni/ast/CClassNode;->nextStateValue(Lorg/joni/ast/CClassNode$CCStateArg;Lorg/joni/ScanEnvironment;)V

    .line 405
    return-void
.end method

.method private parseCharProperty()Lorg/joni/ast/CClassNode;
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchCharPropertyToCType()I

    move-result v0

    .line 122
    .local v0, "ctype":I
    new-instance v1, Lorg/joni/ast/CClassNode;

    invoke-direct {v1}, Lorg/joni/ast/CClassNode;-><init>()V

    .line 123
    .local v1, "n":Lorg/joni/ast/CClassNode;
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v1, v0, v2, v3, p0}, Lorg/joni/ast/CClassNode;->addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V

    .line 124
    iget-object v2, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropNot()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/joni/ast/CClassNode;->setNot()V

    .line 125
    :cond_0
    return-object v1
.end method

.method private parseEnclose(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;
    .locals 12
    .param p1, "term"    # Lorg/joni/constants/TokenType;

    .prologue
    .line 408
    const/4 v4, 0x0

    .line 410
    .local v4, "node":Lorg/joni/ast/Node;
    invoke-virtual {p0}, Lorg/joni/Parser;->left()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "end pattern with unmatched parenthesis"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v7, v10, Lorg/joni/ScanEnvironment;->option:I

    .line 414
    .local v7, "option":I
    const/16 v10, 0x3f

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->peekIs(I)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2QMarkGroupEffect()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 415
    invoke-virtual {p0}, Lorg/joni/Parser;->inc()V

    .line 416
    invoke-virtual {p0}, Lorg/joni/Parser;->left()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "end pattern in group"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 418
    :cond_1
    const/4 v2, 0x0

    .line 420
    .local v2, "listCapture":Z
    invoke-virtual {p0}, Lorg/joni/Parser;->fetch()V

    .line 421
    iget v10, p0, Lorg/joni/Parser;->c:I

    sparse-switch v10, :sswitch_data_0

    .line 563
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 579
    .end local v2    # "listCapture":Z
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 580
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v9

    .line 582
    .local v9, "target":Lorg/joni/ast/Node;
    invoke-virtual {v4}, Lorg/joni/ast/Node;->getType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_16

    move-object v0, v4

    .line 583
    check-cast v0, Lorg/joni/ast/AnchorNode;

    .line 584
    .local v0, "an":Lorg/joni/ast/AnchorNode;
    invoke-virtual {v0, v9}, Lorg/joni/ast/AnchorNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 585
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v0, Lorg/joni/ast/AnchorNode;->type:I

    const/16 v11, 0x800

    if-ne v10, v11, :cond_3

    .line 586
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v10, v0}, Lorg/joni/ScanEnvironment;->popPrecReadNotNode(Lorg/joni/ast/Node;)V

    .line 599
    .end local v0    # "an":Lorg/joni/ast/AnchorNode;
    :cond_3
    :goto_1
    const/4 v10, 0x0

    iput v10, p0, Lorg/joni/Parser;->returnCode:I

    move-object v5, v4

    .line 600
    .end local v4    # "node":Lorg/joni/ast/Node;
    .end local v9    # "target":Lorg/joni/ast/Node;
    .local v5, "node":Lorg/joni/ast/Node;
    :goto_2
    return-object v5

    .line 423
    .end local v5    # "node":Lorg/joni/ast/Node;
    .restart local v2    # "listCapture":Z
    .restart local v4    # "node":Lorg/joni/ast/Node;
    :sswitch_0
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 424
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v4

    .line 425
    const/4 v10, 0x1

    iput v10, p0, Lorg/joni/Parser;->returnCode:I

    move-object v5, v4

    .line 426
    .end local v4    # "node":Lorg/joni/ast/Node;
    .restart local v5    # "node":Lorg/joni/ast/Node;
    goto :goto_2

    .line 428
    .end local v5    # "node":Lorg/joni/ast/Node;
    .restart local v4    # "node":Lorg/joni/ast/Node;
    :sswitch_1
    new-instance v4, Lorg/joni/ast/AnchorNode;

    .end local v4    # "node":Lorg/joni/ast/Node;
    const/16 v10, 0x400

    invoke-direct {v4, v10}, Lorg/joni/ast/AnchorNode;-><init>(I)V

    .line 429
    .restart local v4    # "node":Lorg/joni/ast/Node;
    goto :goto_0

    .line 431
    :sswitch_2
    new-instance v4, Lorg/joni/ast/AnchorNode;

    .end local v4    # "node":Lorg/joni/ast/Node;
    const/16 v10, 0x800

    invoke-direct {v4, v10}, Lorg/joni/ast/AnchorNode;-><init>(I)V

    .line 432
    .restart local v4    # "node":Lorg/joni/ast/Node;
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 433
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v10, v4}, Lorg/joni/ScanEnvironment;->pushPrecReadNotNode(Lorg/joni/ast/Node;)V

    goto :goto_0

    .line 437
    :sswitch_3
    new-instance v4, Lorg/joni/ast/EncloseNode;

    .end local v4    # "node":Lorg/joni/ast/Node;
    const/4 v10, 0x4

    invoke-direct {v4, v10}, Lorg/joni/ast/EncloseNode;-><init>(I)V

    .line 438
    .restart local v4    # "node":Lorg/joni/ast/Node;
    goto :goto_0

    .line 441
    :sswitch_4
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2QMarkLtNamedGroup()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 442
    const/4 v2, 0x0

    .line 443
    invoke-direct {p0, v2}, Lorg/joni/Parser;->parseEncloseNamedGroup2(Z)Lorg/joni/ast/Node;

    move-result-object v4

    .line 444
    goto :goto_0

    .line 446
    :cond_4
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :sswitch_5
    invoke-virtual {p0}, Lorg/joni/Parser;->fetch()V

    .line 452
    iget v10, p0, Lorg/joni/Parser;->c:I

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_5

    .line 453
    new-instance v4, Lorg/joni/ast/AnchorNode;

    .end local v4    # "node":Lorg/joni/ast/Node;
    const/16 v10, 0x1000

    invoke-direct {v4, v10}, Lorg/joni/ast/AnchorNode;-><init>(I)V

    .restart local v4    # "node":Lorg/joni/ast/Node;
    goto :goto_0

    .line 454
    :cond_5
    iget v10, p0, Lorg/joni/Parser;->c:I

    const/16 v11, 0x21

    if-ne v10, v11, :cond_6

    .line 455
    new-instance v4, Lorg/joni/ast/AnchorNode;

    .end local v4    # "node":Lorg/joni/ast/Node;
    const/16 v10, 0x2000

    invoke-direct {v4, v10}, Lorg/joni/ast/AnchorNode;-><init>(I)V

    .restart local v4    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_0

    .line 458
    :cond_6
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2QMarkLtNamedGroup()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 459
    invoke-virtual {p0}, Lorg/joni/Parser;->unfetch()V

    .line 460
    const/16 v10, 0x3c

    iput v10, p0, Lorg/joni/Parser;->c:I

    .line 462
    const/4 v2, 0x0

    .line 463
    invoke-direct {p0, v2}, Lorg/joni/Parser;->parseEncloseNamedGroup2(Z)Lorg/joni/ast/Node;

    move-result-object v4

    .line 464
    goto/16 :goto_0

    .line 466
    :cond_7
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :sswitch_6
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2AtMarkCaptureHistory()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 477
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2QMarkLtNamedGroup()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 478
    invoke-virtual {p0}, Lorg/joni/Parser;->fetch()V

    .line 479
    iget v10, p0, Lorg/joni/Parser;->c:I

    const/16 v11, 0x3c

    if-eq v10, v11, :cond_8

    iget v10, p0, Lorg/joni/Parser;->c:I

    const/16 v11, 0x27

    if-ne v10, v11, :cond_9

    .line 480
    :cond_8
    const/4 v2, 0x1

    .line 481
    invoke-direct {p0, v2}, Lorg/joni/Parser;->parseEncloseNamedGroup2(Z)Lorg/joni/ast/Node;

    move-result-object v4

    .line 483
    :cond_9
    invoke-virtual {p0}, Lorg/joni/Parser;->unfetch()V

    .line 486
    :cond_a
    new-instance v1, Lorg/joni/ast/EncloseNode;

    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v10, v10, Lorg/joni/ScanEnvironment;->option:I

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lorg/joni/ast/EncloseNode;-><init>(IZ)V

    .line 487
    .local v1, "en":Lorg/joni/ast/EncloseNode;
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v10}, Lorg/joni/ScanEnvironment;->addMemEntry()I

    move-result v6

    .line 488
    .local v6, "num":I
    const/16 v10, 0x20

    if-lt v6, v10, :cond_b

    const-string v10, "group number is too big for capture history"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newValueException(Ljava/lang/String;)V

    .line 489
    :cond_b
    iput v6, v1, Lorg/joni/ast/EncloseNode;->regNum:I

    .line 490
    move-object v4, v1

    .line 491
    goto/16 :goto_0

    .line 492
    .end local v1    # "en":Lorg/joni/ast/EncloseNode;
    .end local v6    # "num":I
    :cond_c
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :sswitch_7
    const/4 v3, 0x0

    .line 504
    .local v3, "neg":Z
    :goto_3
    iget v10, p0, Lorg/joni/Parser;->c:I

    sparse-switch v10, :sswitch_data_1

    .line 538
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 541
    :goto_4
    :sswitch_8
    iget v10, p0, Lorg/joni/Parser;->c:I

    const/16 v11, 0x29

    if-ne v10, v11, :cond_11

    .line 542
    new-instance v1, Lorg/joni/ast/EncloseNode;

    const/4 v10, 0x0

    invoke-direct {v1, v7, v10}, Lorg/joni/ast/EncloseNode;-><init>(II)V

    .line 543
    .restart local v1    # "en":Lorg/joni/ast/EncloseNode;
    move-object v4, v1

    .line 544
    const/4 v10, 0x2

    iput v10, p0, Lorg/joni/Parser;->returnCode:I

    move-object v5, v4

    .line 545
    .end local v4    # "node":Lorg/joni/ast/Node;
    .restart local v5    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_2

    .line 509
    .end local v1    # "en":Lorg/joni/ast/EncloseNode;
    .end local v5    # "node":Lorg/joni/ast/Node;
    .restart local v4    # "node":Lorg/joni/ast/Node;
    :sswitch_9
    const/4 v3, 0x1

    .line 510
    goto :goto_4

    .line 512
    :sswitch_a
    const/4 v10, 0x2

    invoke-static {v7, v10, v3}, Lorg/joni/BitStatus;->bsOnOff(IIZ)I

    move-result v7

    .line 513
    goto :goto_4

    .line 515
    :sswitch_b
    const/4 v10, 0x1

    invoke-static {v7, v10, v3}, Lorg/joni/BitStatus;->bsOnOff(IIZ)I

    move-result v7

    .line 516
    goto :goto_4

    .line 518
    :sswitch_c
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionPerl()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 519
    const/4 v10, 0x4

    invoke-static {v7, v10, v3}, Lorg/joni/BitStatus;->bsOnOff(IIZ)I

    move-result v7

    goto :goto_4

    .line 521
    :cond_d
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto :goto_4

    .line 525
    :sswitch_d
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionPerl()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 526
    const/16 v11, 0x8

    if-nez v3, :cond_e

    const/4 v10, 0x1

    :goto_5
    invoke-static {v7, v11, v10}, Lorg/joni/BitStatus;->bsOnOff(IIZ)I

    move-result v7

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    goto :goto_5

    .line 527
    :cond_f
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionRuby()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 528
    const/4 v10, 0x4

    invoke-static {v7, v10, v3}, Lorg/joni/BitStatus;->bsOnOff(IIZ)I

    move-result v7

    goto :goto_4

    .line 530
    :cond_10
    const-string v10, "undefined group option"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto :goto_4

    .line 546
    :cond_11
    iget v10, p0, Lorg/joni/Parser;->c:I

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_12

    .line 547
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v8, v10, Lorg/joni/ScanEnvironment;->option:I

    .line 548
    .local v8, "prev":I
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iput v7, v10, Lorg/joni/ScanEnvironment;->option:I

    .line 549
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 550
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v9

    .line 551
    .restart local v9    # "target":Lorg/joni/ast/Node;
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iput v8, v10, Lorg/joni/ScanEnvironment;->option:I

    .line 552
    new-instance v1, Lorg/joni/ast/EncloseNode;

    const/4 v10, 0x0

    invoke-direct {v1, v7, v10}, Lorg/joni/ast/EncloseNode;-><init>(II)V

    .line 553
    .restart local v1    # "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v1, v9}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 554
    move-object v4, v1

    .line 555
    const/4 v10, 0x0

    iput v10, p0, Lorg/joni/Parser;->returnCode:I

    move-object v5, v4

    .line 556
    .end local v4    # "node":Lorg/joni/ast/Node;
    .restart local v5    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_2

    .line 558
    .end local v1    # "en":Lorg/joni/ast/EncloseNode;
    .end local v5    # "node":Lorg/joni/ast/Node;
    .end local v8    # "prev":I
    .end local v9    # "target":Lorg/joni/ast/Node;
    .restart local v4    # "node":Lorg/joni/ast/Node;
    :cond_12
    invoke-virtual {p0}, Lorg/joni/Parser;->left()Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "end pattern in group"

    invoke-virtual {p0, v10}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 559
    :cond_13
    invoke-virtual {p0}, Lorg/joni/Parser;->fetch()V

    goto/16 :goto_3

    .line 567
    .end local v2    # "listCapture":Z
    .end local v3    # "neg":Z
    :cond_14
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v10, v10, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v10}, Lorg/joni/Option;->isDontCaptureGroup(I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 568
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 569
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v4

    .line 570
    const/4 v10, 0x1

    iput v10, p0, Lorg/joni/Parser;->returnCode:I

    move-object v5, v4

    .line 571
    .end local v4    # "node":Lorg/joni/ast/Node;
    .restart local v5    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_2

    .line 573
    .end local v5    # "node":Lorg/joni/ast/Node;
    .restart local v4    # "node":Lorg/joni/ast/Node;
    :cond_15
    new-instance v1, Lorg/joni/ast/EncloseNode;

    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v10, v10, Lorg/joni/ScanEnvironment;->option:I

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lorg/joni/ast/EncloseNode;-><init>(IZ)V

    .line 574
    .restart local v1    # "en":Lorg/joni/ast/EncloseNode;
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v10}, Lorg/joni/ScanEnvironment;->addMemEntry()I

    move-result v6

    .line 575
    .restart local v6    # "num":I
    iput v6, v1, Lorg/joni/ast/EncloseNode;->regNum:I

    .line 576
    move-object v4, v1

    goto/16 :goto_0

    .end local v1    # "en":Lorg/joni/ast/EncloseNode;
    .end local v6    # "num":I
    .restart local v9    # "target":Lorg/joni/ast/Node;
    :cond_16
    move-object v1, v4

    .line 589
    check-cast v1, Lorg/joni/ast/EncloseNode;

    .line 590
    .restart local v1    # "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v1, v9}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 591
    iget v10, v1, Lorg/joni/ast/EncloseNode;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 592
    iget-object v10, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v10}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 593
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v10}, Lorg/joni/ScanEnvironment;->currentPrecReadNotNode()Lorg/joni/ast/Node;

    move-result-object v10

    iput-object v10, v1, Lorg/joni/ast/EncloseNode;->containingAnchor:Lorg/joni/ast/Node;

    .line 596
    :cond_17
    iget-object v10, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v11, v1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-virtual {v10, v11, v4}, Lorg/joni/ScanEnvironment;->setMemNode(ILorg/joni/ast/Node;)V

    goto/16 :goto_1

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x27 -> :sswitch_4
        0x2d -> :sswitch_7
        0x3a -> :sswitch_0
        0x3c -> :sswitch_5
        0x3d -> :sswitch_1
        0x3e -> :sswitch_3
        0x40 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6d -> :sswitch_7
        0x73 -> :sswitch_7
        0x78 -> :sswitch_7
    .end sparse-switch

    .line 504
    :sswitch_data_1
    .sparse-switch
        0x29 -> :sswitch_8
        0x2d -> :sswitch_9
        0x3a -> :sswitch_8
        0x69 -> :sswitch_b
        0x6d -> :sswitch_d
        0x73 -> :sswitch_c
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method private parseEncloseNamedGroup2(Z)Lorg/joni/ast/Node;
    .locals 8
    .param p1, "listCapture"    # Z

    .prologue
    .line 604
    iget v2, p0, Lorg/joni/Parser;->p:I

    .line 605
    .local v2, "nm":I
    iget v0, p0, Lorg/joni/Parser;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/joni/Parser;->fetchName(IZ)I

    move-result v4

    .line 606
    .local v4, "num":I
    iget v3, p0, Lorg/joni/Parser;->value:I

    .line 607
    .local v3, "nameEnd":I
    iget-object v0, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-virtual {v0}, Lorg/joni/ScanEnvironment;->addMemEntry()I

    move-result v4

    .line 608
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    if-lt v4, v0, :cond_0

    const-string v0, "group number is too big for capture history"

    invoke-virtual {p0, v0}, Lorg/joni/Parser;->newValueException(Ljava/lang/String;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/joni/Parser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Parser;->bytes:[B

    iget-object v5, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual/range {v0 .. v5}, Lorg/joni/Regex;->nameAdd([BIIILorg/joni/Syntax;)V

    .line 611
    new-instance v6, Lorg/joni/ast/EncloseNode;

    iget-object v0, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v0, v0, Lorg/joni/ScanEnvironment;->option:I

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lorg/joni/ast/EncloseNode;-><init>(IZ)V

    .line 612
    .local v6, "en":Lorg/joni/ast/EncloseNode;
    iput v4, v6, Lorg/joni/ast/EncloseNode;->regNum:I

    .line 614
    move-object v7, v6

    .line 616
    .local v7, "node":Lorg/joni/ast/Node;
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget-object v1, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->captureHistory:I

    invoke-static {v1, v4}, Lorg/joni/BitStatus;->bsOnAtSimple(II)I

    move-result v1

    iput v1, v0, Lorg/joni/ScanEnvironment;->captureHistory:I

    .line 617
    :cond_1
    iget-object v0, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v0, Lorg/joni/ScanEnvironment;->numNamed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/joni/ScanEnvironment;->numNamed:I

    .line 618
    return-object v7
.end method

.method private parseExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;
    .locals 30
    .param p1, "term"    # Lorg/joni/constants/TokenType;

    .prologue
    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v2, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    sget-object v8, Lorg/joni/ast/StringNode;->EMPTY:Lorg/joni/ast/StringNode;

    .line 834
    :goto_0
    return-object v8

    .line 648
    :cond_0
    const/4 v8, 0x0

    .line 649
    .local v8, "node":Lorg/joni/ast/Node;
    const/16 v23, 0x0

    .line 651
    .local v23, "group":Z
    sget-object v2, Lorg/joni/Parser$1;->$SwitchMap$org$joni$constants$TokenType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v4, v4, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    invoke-virtual {v4}, Lorg/joni/constants/TokenType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 827
    :pswitch_0
    const-string v2, "internal parser error (bug)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newInternalException(Ljava/lang/String;)V

    .line 832
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 834
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lorg/joni/Parser;->parseExpRepeat(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v8

    goto :goto_0

    .line 654
    :pswitch_1
    sget-object v8, Lorg/joni/ast/StringNode;->EMPTY:Lorg/joni/ast/StringNode;

    goto :goto_0

    .line 657
    :pswitch_2
    sget-object v2, Lorg/joni/constants/TokenType;->SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/joni/Parser;->parseEnclose(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v8

    .line 658
    move-object/from16 v0, p0

    iget v2, v0, Lorg/joni/Parser;->returnCode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 659
    const/16 v23, 0x1

    goto :goto_1

    .line 660
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/joni/Parser;->returnCode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v0, v2, Lorg/joni/ScanEnvironment;->option:I

    move/from16 v25, v0

    .local v25, "prev":I
    move-object/from16 v20, v8

    .line 662
    check-cast v20, Lorg/joni/ast/EncloseNode;

    .line 663
    .local v20, "en":Lorg/joni/ast/EncloseNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v0, v20

    iget v4, v0, Lorg/joni/ast/EncloseNode;->option:I

    iput v4, v2, Lorg/joni/ScanEnvironment;->option:I

    .line 664
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 665
    invoke-direct/range {p0 .. p1}, Lorg/joni/Parser;->parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v29

    .line 666
    .local v29, "target":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move/from16 v0, v25

    iput v0, v2, Lorg/joni/ScanEnvironment;->option:I

    .line 667
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    goto :goto_0

    .line 672
    .end local v20    # "en":Lorg/joni/ast/EncloseNode;
    .end local v25    # "prev":I
    .end local v29    # "target":Lorg/joni/ast/Node;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->allowUnmatchedCloseSubexp()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "unmatched close parenthesis"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 673
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-boolean v2, v2, Lorg/joni/Token;->escaped:Z

    if-eqz v2, :cond_4

    .line 674
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/joni/Parser;->parseExpTkRawByte(Z)Lorg/joni/ast/Node;

    move-result-object v8

    goto/16 :goto_0

    .line 676
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/joni/Parser;->parseExpTkByte(Z)Lorg/joni/ast/Node;

    move-result-object v8

    goto/16 :goto_0

    .line 679
    :pswitch_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/joni/Parser;->parseExpTkByte(Z)Lorg/joni/ast/Node;

    move-result-object v8

    goto/16 :goto_0

    .line 682
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/joni/Parser;->parseExpTkRawByte(Z)Lorg/joni/ast/Node;

    move-result-object v8

    goto/16 :goto_0

    .line 684
    :pswitch_6
    const/4 v2, 0x7

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 685
    .local v17, "buf":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v4}, Lorg/joni/Token;->getCode()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0, v6}, Lorg/jcodings/Encoding;->codeToMbc(I[BI)I

    move-result v24

    .line 687
    .local v24, "num":I
    new-instance v8, Lorg/joni/ast/StringNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v8, v0, v2, v1}, Lorg/joni/ast/StringNode;-><init>([BII)V

    .line 688
    .restart local v8    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_1

    .line 691
    .end local v17    # "buf":[B
    .end local v24    # "num":I
    :pswitch_7
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    iget-object v4, v4, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    iget v4, v4, Lorg/joni/Syntax$MetaCharTable;->esc:I

    aput v4, v3, v2

    const/4 v2, 0x1

    const/16 v4, 0x45

    aput v4, v3, v2

    .line 692
    .local v3, "endOp":[I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Parser;->p:I

    .line 693
    .local v5, "qstart":I
    new-instance v7, Lorg/jcodings/Ptr;

    invoke-direct {v7}, Lorg/jcodings/Ptr;-><init>()V

    .line 694
    .local v7, "nextChar":Lorg/jcodings/Ptr;
    array-length v4, v3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/joni/Parser;->stop:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/joni/Parser;->findStrPosition([IIIILorg/jcodings/Ptr;)I

    move-result v26

    .line 695
    .local v26, "qend":I
    const/4 v2, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Parser;->stop:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v7, Lorg/jcodings/Ptr;->p:I

    .line 696
    :cond_5
    new-instance v8, Lorg/joni/ast/StringNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->bytes:[B

    move/from16 v0, v26

    invoke-direct {v8, v2, v5, v0}, Lorg/joni/ast/StringNode;-><init>([BII)V

    .line 697
    .restart local v8    # "node":Lorg/joni/ast/Node;
    iget v2, v7, Lorg/jcodings/Ptr;->p:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/joni/Parser;->p:I

    goto/16 :goto_1

    .line 701
    .end local v3    # "endOp":[I
    .end local v5    # "qstart":I
    .end local v7    # "nextChar":Lorg/jcodings/Ptr;
    .end local v26    # "qend":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropCType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 728
    const-string v2, "internal parser error (bug)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newInternalException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 706
    :sswitch_0
    new-instance v18, Lorg/joni/ast/CClassNode;

    invoke-direct/range {v18 .. v18}, Lorg/joni/ast/CClassNode;-><init>()V

    .line 707
    .local v18, "cc":Lorg/joni/ast/CClassNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropCType()I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v4, v6, v1}, Lorg/joni/ast/CClassNode;->addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropNot()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lorg/joni/ast/CClassNode;->setNot()V

    .line 709
    :cond_6
    move-object/from16 v8, v18

    .line 711
    goto/16 :goto_1

    .line 714
    .end local v18    # "cc":Lorg/joni/ast/CClassNode;
    :sswitch_1
    new-instance v8, Lorg/joni/ast/CTypeNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropCType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v4}, Lorg/joni/Token;->getPropNot()Z

    move-result v4

    invoke-direct {v8, v2, v4}, Lorg/joni/ast/CTypeNode;-><init>(IZ)V

    .line 715
    .restart local v8    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_1

    .line 721
    :sswitch_2
    new-instance v19, Lorg/joni/ast/CClassNode;

    invoke-direct/range {v19 .. v19}, Lorg/joni/ast/CClassNode;-><init>()V

    .line 722
    .local v19, "ccn":Lorg/joni/ast/CClassNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropCType()I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v4, v6, v1}, Lorg/joni/ast/CClassNode;->addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getPropNot()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v19 .. v19}, Lorg/joni/ast/CClassNode;->setNot()V

    .line 724
    :cond_7
    move-object/from16 v8, v19

    .line 725
    goto/16 :goto_1

    .line 734
    .end local v19    # "ccn":Lorg/joni/ast/CClassNode;
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lorg/joni/Parser;->parseCharProperty()Lorg/joni/ast/CClassNode;

    move-result-object v8

    .line 735
    goto/16 :goto_1

    .line 738
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lorg/joni/Parser;->parseCharClass()Lorg/joni/ast/CClassNode;

    move-result-object v18

    .line 739
    .restart local v18    # "cc":Lorg/joni/ast/CClassNode;
    move-object/from16 v8, v18

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v2, v2, Lorg/joni/ScanEnvironment;->option:I

    invoke-static {v2}, Lorg/joni/Option;->isIgnoreCase(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 741
    new-instance v16, Lorg/joni/ApplyCaseFoldArg;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lorg/joni/ApplyCaseFoldArg;-><init>(Lorg/joni/ScanEnvironment;Lorg/joni/ast/CClassNode;)V

    .line 742
    .local v16, "arg":Lorg/joni/ApplyCaseFoldArg;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v4, v4, Lorg/joni/ScanEnvironment;->caseFoldFlag:I

    sget-object v6, Lorg/joni/ApplyCaseFold;->INSTANCE:Lorg/joni/ApplyCaseFold;

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v6, v0}, Lorg/jcodings/Encoding;->applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V

    .line 744
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/joni/ApplyCaseFoldArg;->altRoot:Lorg/joni/ast/ConsAltNode;

    if-eqz v2, :cond_1

    .line 745
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/joni/ApplyCaseFoldArg;->altRoot:Lorg/joni/ast/ConsAltNode;

    invoke-static {v8, v2}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v8

    goto/16 :goto_1

    .line 751
    .end local v16    # "arg":Lorg/joni/ApplyCaseFoldArg;
    .end local v18    # "cc":Lorg/joni/ast/CClassNode;
    :pswitch_b
    new-instance v8, Lorg/joni/ast/AnyCharNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    invoke-direct {v8}, Lorg/joni/ast/AnyCharNode;-><init>()V

    .line 752
    .restart local v8    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_1

    .line 755
    :pswitch_c
    new-instance v8, Lorg/joni/ast/AnyCharNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    invoke-direct {v8}, Lorg/joni/ast/AnyCharNode;-><init>()V

    .line 756
    .restart local v8    # "node":Lorg/joni/ast/Node;
    new-instance v27, Lorg/joni/ast/QuantifierNode;

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v4, v6}, Lorg/joni/ast/QuantifierNode;-><init>(IIZ)V

    .line 757
    .local v27, "qn":Lorg/joni/ast/QuantifierNode;
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 758
    move-object/from16 v8, v27

    .line 759
    goto/16 :goto_1

    .line 762
    .end local v27    # "qn":Lorg/joni/ast/QuantifierNode;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefNum()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget-object v2, v2, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    if-eqz v2, :cond_b

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget-object v2, v2, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v4}, Lorg/joni/Token;->getBackrefRef1()I

    move-result v4

    aget-object v21, v2, v4

    check-cast v21, Lorg/joni/ast/EncloseNode;

    .line 764
    .local v21, "encloseNode":Lorg/joni/ast/EncloseNode;
    const/16 v28, 0x0

    .line 765
    .local v28, "shouldIgnore":Z
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/joni/ast/EncloseNode;->containingAnchor:Lorg/joni/ast/Node;

    if-eqz v2, :cond_8

    .line 766
    const/16 v28, 0x1

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget-object v4, v2, Lorg/joni/ScanEnvironment;->precReadNotNodes:[Lorg/joni/ast/Node;

    array-length v6, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_8

    aget-object v15, v4, v2

    .line 768
    .local v15, "anchorNode":Lorg/joni/ast/Node;
    move-object/from16 v0, v21

    iget-object v9, v0, Lorg/joni/ast/EncloseNode;->containingAnchor:Lorg/joni/ast/Node;

    if-ne v15, v9, :cond_9

    .line 769
    const/16 v28, 0x0

    .line 774
    .end local v15    # "anchorNode":Lorg/joni/ast/Node;
    :cond_8
    if-eqz v28, :cond_a

    .line 775
    sget-object v8, Lorg/joni/ast/StringNode;->EMPTY:Lorg/joni/ast/StringNode;

    goto/16 :goto_1

    .line 767
    .restart local v15    # "anchorNode":Lorg/joni/ast/Node;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 777
    .end local v15    # "anchorNode":Lorg/joni/ast/Node;
    :cond_a
    new-instance v8, Lorg/joni/ast/BackRefNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefNum()I

    move-result v9

    const/4 v2, 0x1

    new-array v10, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 778
    invoke-virtual {v4}, Lorg/joni/Token;->getBackrefRef1()I

    move-result v4

    aput v4, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 779
    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefByName()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 780
    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefExistLevel()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 781
    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefLevel()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-direct/range {v8 .. v14}, Lorg/joni/ast/BackRefNode;-><init>(I[IZZILorg/joni/ScanEnvironment;)V

    .restart local v8    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_1

    .line 785
    .end local v21    # "encloseNode":Lorg/joni/ast/EncloseNode;
    .end local v28    # "shouldIgnore":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefNum()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefRefs()[I

    move-result-object v10

    .line 786
    .local v10, "backRefs":[I
    :goto_3
    new-instance v8, Lorg/joni/ast/BackRefNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefNum()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 788
    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefByName()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 789
    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefExistLevel()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 790
    invoke-virtual {v2}, Lorg/joni/Token;->getBackrefLevel()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    invoke-direct/range {v8 .. v14}, Lorg/joni/ast/BackRefNode;-><init>(I[IZZILorg/joni/ScanEnvironment;)V

    .line 794
    .restart local v8    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_1

    .line 785
    .end local v10    # "backRefs":[I
    :cond_c
    const/4 v2, 0x1

    new-array v10, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v4}, Lorg/joni/Token;->getBackrefRef1()I

    move-result v4

    aput v4, v10, v2

    goto :goto_3

    .line 798
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getCallGNum()I

    move-result v22

    .line 800
    .local v22, "gNum":I
    if-gez v22, :cond_d

    .line 801
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/joni/Parser;->backrefRelToAbs(I)I

    move-result v22

    .line 802
    if-gtz v22, :cond_d

    const-string v2, "invalid backref number/name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newValueException(Ljava/lang/String;)V

    .line 804
    :cond_d
    new-instance v8, Lorg/joni/ast/CallNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->bytes:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v4}, Lorg/joni/Token;->getCallNameP()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v6}, Lorg/joni/Token;->getCallNameEnd()I

    move-result v6

    move/from16 v0, v22

    invoke-direct {v8, v2, v4, v6, v0}, Lorg/joni/ast/CallNode;-><init>([BIII)V

    .line 805
    .restart local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v4, v2, Lorg/joni/ScanEnvironment;->numCall:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lorg/joni/ScanEnvironment;->numCall:I

    goto/16 :goto_1

    .line 810
    .end local v22    # "gNum":I
    :pswitch_f
    new-instance v8, Lorg/joni/ast/AnchorNode;

    .end local v8    # "node":Lorg/joni/ast/Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getAnchor()I

    move-result v2

    invoke-direct {v8, v2}, Lorg/joni/ast/AnchorNode;-><init>(I)V

    .line 811
    .restart local v8    # "node":Lorg/joni/ast/Node;
    goto/16 :goto_1

    .line 815
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->contextIndepRepeatOps()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v2}, Lorg/joni/Syntax;->contextInvalidRepeatOps()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 817
    const-string v2, "target of repeat operator is not specified"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 819
    :cond_e
    sget-object v8, Lorg/joni/ast/StringNode;->EMPTY:Lorg/joni/ast/StringNode;

    goto/16 :goto_1

    .line 822
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/joni/Parser;->parseExpTkByte(Z)Lorg/joni/ast/Node;

    move-result-object v8

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 701
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x9 -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x104 -> :sswitch_0
        0x109 -> :sswitch_0
        0x10c -> :sswitch_0
    .end sparse-switch
.end method

.method private parseExpRepeat(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;
    .locals 13
    .param p1, "target"    # Lorg/joni/ast/Node;
    .param p2, "group"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 890
    :goto_0
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v2, Lorg/joni/constants/TokenType;->OP_REPEAT:Lorg/joni/constants/TokenType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v2, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    if-ne v1, v2, :cond_8

    .line 891
    :cond_0
    invoke-virtual {p1}, Lorg/joni/ast/Node;->isInvalidQuantifier()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "target of repeat operator is invalid"

    invoke-virtual {p0, v1}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 893
    :cond_1
    iget-object v1, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 894
    const-string v1, "nested repeat is not allowed"

    invoke-virtual {p0, v1}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 896
    :cond_2
    new-instance v0, Lorg/joni/ast/QuantifierNode;

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatLower()I

    move-result v2

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 897
    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatUpper()I

    move-result v3

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v4, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    if-ne v1, v4, :cond_6

    move v1, v11

    :goto_1
    invoke-direct {v0, v2, v3, v1}, Lorg/joni/ast/QuantifierNode;-><init>(IIZ)V

    .line 900
    .local v0, "qtfr":Lorg/joni/ast/QuantifierNode;
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatGreedy()Z

    move-result v1

    iput-boolean v1, v0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    .line 901
    iget-object v3, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget-object v4, p0, Lorg/joni/Parser;->bytes:[B

    invoke-virtual {p0}, Lorg/joni/Parser;->getBegin()I

    move-result v5

    invoke-virtual {p0}, Lorg/joni/Parser;->getEnd()I

    move-result v6

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/joni/ast/QuantifierNode;->setQuantifier(Lorg/joni/ast/Node;ZLorg/joni/ScanEnvironment;[BII)I

    move-result v9

    .line 902
    .local v9, "ret":I
    move-object v8, v0

    .line 904
    .local v8, "qn":Lorg/joni/ast/Node;
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatPossessive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    new-instance v7, Lorg/joni/ast/EncloseNode;

    const/4 v1, 0x4

    invoke-direct {v7, v1}, Lorg/joni/ast/EncloseNode;-><init>(I)V

    .line 906
    .local v7, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v7, v8}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 907
    move-object v8, v7

    .line 910
    .end local v7    # "en":Lorg/joni/ast/EncloseNode;
    :cond_3
    if-eqz v9, :cond_4

    iget-object v1, p0, Lorg/joni/Parser;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v1}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v9, v11, :cond_7

    .line 911
    :cond_4
    move-object p1, v8

    .line 919
    :cond_5
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    goto/16 :goto_0

    .line 897
    .end local v0    # "qtfr":Lorg/joni/ast/QuantifierNode;
    .end local v8    # "qn":Lorg/joni/ast/Node;
    .end local v9    # "ret":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 912
    .restart local v0    # "qtfr":Lorg/joni/ast/QuantifierNode;
    .restart local v8    # "qn":Lorg/joni/ast/Node;
    .restart local v9    # "ret":I
    :cond_7
    const/4 v1, 0x2

    if-ne v9, v1, :cond_5

    .line 913
    invoke-static {p1, v12}, Lorg/joni/ast/ConsAltNode;->newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object p1

    move-object v1, p1

    .line 914
    check-cast v1, Lorg/joni/ast/ConsAltNode;

    invoke-static {v8, v12}, Lorg/joni/ast/ConsAltNode;->newListNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v10

    .line 916
    .local v10, "tmp":Lorg/joni/ast/ConsAltNode;
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 917
    invoke-direct {p0, p1, v10, p2}, Lorg/joni/Parser;->parseExpRepeatForCar(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;Z)Lorg/joni/ast/Node;

    move-result-object v1

    .line 921
    .end local v0    # "qtfr":Lorg/joni/ast/QuantifierNode;
    .end local v8    # "qn":Lorg/joni/ast/Node;
    .end local v9    # "ret":I
    .end local v10    # "tmp":Lorg/joni/ast/ConsAltNode;
    :goto_2
    return-object v1

    :cond_8
    move-object v1, p1

    goto :goto_2
.end method

.method private parseExpRepeatForCar(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;Z)Lorg/joni/ast/Node;
    .locals 10
    .param p1, "top"    # Lorg/joni/ast/Node;
    .param p2, "target"    # Lorg/joni/ast/ConsAltNode;
    .param p3, "group"    # Z

    .prologue
    .line 925
    :goto_0
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v2, Lorg/joni/constants/TokenType;->OP_REPEAT:Lorg/joni/constants/TokenType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v2, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    if-ne v1, v2, :cond_6

    .line 926
    :cond_0
    iget-object v1, p2, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {v1}, Lorg/joni/ast/Node;->isInvalidQuantifier()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "target of repeat operator is invalid"

    invoke-virtual {p0, v1}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 928
    :cond_1
    new-instance v0, Lorg/joni/ast/QuantifierNode;

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatLower()I

    move-result v2

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    .line 929
    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatUpper()I

    move-result v3

    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v4, Lorg/joni/constants/TokenType;->INTERVAL:Lorg/joni/constants/TokenType;

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v0, v2, v3, v1}, Lorg/joni/ast/QuantifierNode;-><init>(IIZ)V

    .line 932
    .local v0, "qtfr":Lorg/joni/ast/QuantifierNode;
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatGreedy()Z

    move-result v1

    iput-boolean v1, v0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    .line 933
    iget-object v1, p2, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    iget-object v3, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget-object v4, p0, Lorg/joni/Parser;->bytes:[B

    invoke-virtual {p0}, Lorg/joni/Parser;->getBegin()I

    move-result v5

    invoke-virtual {p0}, Lorg/joni/Parser;->getEnd()I

    move-result v6

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lorg/joni/ast/QuantifierNode;->setQuantifier(Lorg/joni/ast/Node;ZLorg/joni/ScanEnvironment;[BII)I

    move-result v9

    .line 934
    .local v9, "ret":I
    move-object v8, v0

    .line 936
    .local v8, "qn":Lorg/joni/ast/Node;
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v1}, Lorg/joni/Token;->getRepeatPossessive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 937
    new-instance v7, Lorg/joni/ast/EncloseNode;

    const/4 v1, 0x4

    invoke-direct {v7, v1}, Lorg/joni/ast/EncloseNode;-><init>(I)V

    .line 938
    .local v7, "en":Lorg/joni/ast/EncloseNode;
    invoke-virtual {v7, v8}, Lorg/joni/ast/EncloseNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 939
    move-object v8, v7

    .line 942
    .end local v7    # "en":Lorg/joni/ast/EncloseNode;
    :cond_2
    if-nez v9, :cond_5

    .line 943
    invoke-virtual {p2, v8}, Lorg/joni/ast/ConsAltNode;->setCar(Lorg/joni/ast/Node;)Lorg/joni/ast/Node;

    .line 947
    :cond_3
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    goto :goto_0

    .line 929
    .end local v0    # "qtfr":Lorg/joni/ast/QuantifierNode;
    .end local v8    # "qn":Lorg/joni/ast/Node;
    .end local v9    # "ret":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 944
    .restart local v0    # "qtfr":Lorg/joni/ast/QuantifierNode;
    .restart local v8    # "qn":Lorg/joni/ast/Node;
    .restart local v9    # "ret":I
    :cond_5
    const/4 v1, 0x2

    if-ne v9, v1, :cond_3

    .line 945
    sget-boolean v1, Lorg/joni/Parser;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 949
    .end local v0    # "qtfr":Lorg/joni/ast/QuantifierNode;
    .end local v8    # "qn":Lorg/joni/ast/Node;
    .end local v9    # "ret":I
    :cond_6
    return-object p1
.end method

.method private parseExpTkByte(Z)Lorg/joni/ast/Node;
    .locals 4
    .param p1, "group"    # Z

    .prologue
    .line 838
    new-instance v0, Lorg/joni/ast/StringNode;

    iget-object v1, p0, Lorg/joni/Parser;->bytes:[B

    iget-object v2, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget v2, v2, Lorg/joni/Token;->backP:I

    iget v3, p0, Lorg/joni/Parser;->p:I

    invoke-direct {v0, v1, v2, v3}, Lorg/joni/ast/StringNode;-><init>([BII)V

    .line 840
    .local v0, "node":Lorg/joni/ast/StringNode;
    :goto_0
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 841
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v1, v1, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v2, Lorg/joni/constants/TokenType;->STRING:Lorg/joni/constants/TokenType;

    if-eq v1, v2, :cond_0

    .line 850
    invoke-direct {p0, v0, p1}, Lorg/joni/Parser;->parseExpRepeat(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v1

    return-object v1

    .line 843
    :cond_0
    iget-object v1, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget v1, v1, Lorg/joni/Token;->backP:I

    iget v2, v0, Lorg/joni/ast/StringNode;->end:I

    if-ne v1, v2, :cond_1

    .line 844
    iget v1, p0, Lorg/joni/Parser;->p:I

    iput v1, v0, Lorg/joni/ast/StringNode;->end:I

    goto :goto_0

    .line 846
    :cond_1
    iget-object v1, p0, Lorg/joni/Parser;->bytes:[B

    iget-object v2, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget v2, v2, Lorg/joni/Token;->backP:I

    iget v3, p0, Lorg/joni/Parser;->p:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/joni/ast/StringNode;->cat([BII)V

    goto :goto_0
.end method

.method private parseExpTkRawByte(Z)Lorg/joni/ast/Node;
    .locals 6
    .param p1, "group"    # Z

    .prologue
    .line 859
    new-instance v1, Lorg/joni/ast/StringNode;

    iget-object v2, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getC()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {v1, v2}, Lorg/joni/ast/StringNode;-><init>(B)V

    .line 860
    .local v1, "node":Lorg/joni/ast/StringNode;
    invoke-virtual {v1}, Lorg/joni/ast/StringNode;->setRaw()V

    .line 862
    const/4 v0, 0x1

    .line 864
    .local v0, "len":I
    :goto_0
    iget-object v2, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->minLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 865
    iget-object v2, p0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    iget-object v3, v1, Lorg/joni/ast/StringNode;->bytes:[B

    iget v4, v1, Lorg/joni/ast/StringNode;->p:I

    iget v5, v1, Lorg/joni/ast/StringNode;->end:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 866
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 867
    invoke-virtual {v1}, Lorg/joni/ast/StringNode;->clearRaw()V

    .line 869
    invoke-direct {p0, v1, p1}, Lorg/joni/Parser;->parseExpRepeat(Lorg/joni/ast/Node;Z)Lorg/joni/ast/Node;

    move-result-object v2

    return-object v2

    .line 873
    :cond_0
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 874
    iget-object v2, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v2, v2, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v3, Lorg/joni/constants/TokenType;->RAW_BYTE:Lorg/joni/constants/TokenType;

    if-eq v2, v3, :cond_1

    .line 878
    const-string v2, "too short multibyte code string"

    invoke-virtual {p0, v2}, Lorg/joni/Parser;->newValueException(Ljava/lang/String;)V

    .line 884
    :cond_1
    iget-object v2, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    invoke-virtual {v2}, Lorg/joni/Token;->getC()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/joni/ast/StringNode;->cat(B)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parsePosixBracket(Lorg/joni/ast/CClassNode;)Z
    .locals 17
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->mark()V

    .line 76
    const/16 v2, 0x5e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->peekIs(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->inc()V

    .line 78
    const/4 v15, 0x1

    .line 82
    .local v15, "not":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Parser;->bytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/joni/Parser;->p:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Parser;->stop:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/jcodings/Encoding;->strLength([BII)I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_3

    .line 83
    sget-object v16, Lorg/jcodings/constants/PosixBracket;->PBSNamesLower:[[B

    .line 84
    .local v16, "pbs":[[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v14, v2, :cond_3

    .line 85
    aget-object v6, v16, v14

    .line 87
    .local v6, "name":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Parser;->bytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/joni/Parser;->p:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Parser;->stop:I

    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual/range {v2 .. v8}, Lorg/jcodings/Encoding;->strNCmp([BII[BII)I

    move-result v2

    if-nez v2, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Parser;->bytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/joni/Parser;->p:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Parser;->stop:I

    array-length v7, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Lorg/jcodings/Encoding;->step([BIII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/joni/Parser;->p:I

    .line 89
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/joni/Parser;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/joni/Parser;->bytes:[B

    move-object/from16 v0, p0

    iget v9, v0, Lorg/joni/Parser;->p:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/joni/Parser;->stop:I

    sget-object v11, Lorg/joni/Parser;->BRACKET_END:[B

    const/4 v12, 0x0

    sget-object v2, Lorg/joni/Parser;->BRACKET_END:[B

    array-length v13, v2

    invoke-virtual/range {v7 .. v13}, Lorg/jcodings/Encoding;->strNCmp([BII[BII)I

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "invalid POSIX bracket type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 92
    :cond_0
    sget-object v2, Lorg/jcodings/constants/PosixBracket;->PBSValues:[I

    aget v2, v2, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v15, v3, v1}, Lorg/joni/ast/CClassNode;->addCType(IZLorg/joni/ScanEnvironment;Lorg/jcodings/IntHolder;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->inc()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->inc()V

    .line 95
    const/4 v2, 0x0

    .line 117
    .end local v6    # "name":[B
    .end local v16    # "pbs":[[B
    :goto_2
    return v2

    .line 80
    .end local v14    # "i":I
    .end local v15    # "not":Z
    :cond_1
    const/4 v15, 0x0

    .restart local v15    # "not":Z
    goto/16 :goto_0

    .line 84
    .restart local v6    # "name":[B
    .restart local v14    # "i":I
    .restart local v16    # "pbs":[[B
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 102
    .end local v6    # "name":[B
    .end local v14    # "i":I
    .end local v16    # "pbs":[[B
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/joni/Parser;->c:I

    .line 103
    const/4 v14, 0x0

    .line 104
    .restart local v14    # "i":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->left()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->peek()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/joni/Parser;->c:I

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/joni/Parser;->c:I

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_5

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->inc()V

    .line 106
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x14

    if-le v14, v2, :cond_4

    .line 109
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/joni/Parser;->c:I

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->left()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->inc()V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->left()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->fetch()V

    .line 113
    move-object/from16 v0, p0

    iget v2, v0, Lorg/joni/Parser;->c:I

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_6

    const-string v2, "invalid POSIX bracket type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 116
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/joni/Parser;->restore()V

    .line 117
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private parseRegexp()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 1011
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 1012
    sget-object v0, Lorg/joni/constants/TokenType;->EOT:Lorg/joni/constants/TokenType;

    invoke-direct {p0, v0}, Lorg/joni/Parser;->parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method private parseSubExp(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;
    .locals 6
    .param p1, "term"    # Lorg/joni/constants/TokenType;

    .prologue
    const/4 v3, 0x0

    .line 979
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseBranch(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v0

    .line 981
    .local v0, "node":Lorg/joni/ast/Node;
    iget-object v4, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v4, v4, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    if-ne v4, p1, :cond_1

    move-object v2, v0

    .line 998
    :cond_0
    :goto_0
    return-object v2

    .line 983
    :cond_1
    iget-object v4, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v4, v4, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v5, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    if-ne v4, v5, :cond_3

    .line 984
    invoke-static {v0, v3}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v2

    .line 985
    .local v2, "top":Lorg/joni/ast/ConsAltNode;
    move-object v1, v2

    .line 986
    .local v1, "t":Lorg/joni/ast/ConsAltNode;
    :goto_1
    iget-object v4, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v4, v4, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    sget-object v5, Lorg/joni/constants/TokenType;->ALT:Lorg/joni/constants/TokenType;

    if-ne v4, v5, :cond_2

    .line 987
    invoke-virtual {p0}, Lorg/joni/Parser;->fetchToken()Lorg/joni/constants/TokenType;

    .line 988
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseBranch(Lorg/joni/constants/TokenType;)Lorg/joni/ast/Node;

    move-result-object v0

    .line 990
    invoke-static {v0, v3}, Lorg/joni/ast/ConsAltNode;->newAltNode(Lorg/joni/ast/Node;Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/joni/ast/ConsAltNode;->setCdr(Lorg/joni/ast/ConsAltNode;)Lorg/joni/ast/ConsAltNode;

    .line 991
    iget-object v1, v1, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    goto :goto_1

    .line 994
    :cond_2
    iget-object v3, p0, Lorg/joni/Parser;->token:Lorg/joni/Token;

    iget-object v3, v3, Lorg/joni/Token;->type:Lorg/joni/constants/TokenType;

    if-eq v3, p1, :cond_0

    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseSubExpError(Lorg/joni/constants/TokenType;)V

    goto :goto_0

    .line 997
    .end local v1    # "t":Lorg/joni/ast/ConsAltNode;
    .end local v2    # "top":Lorg/joni/ast/ConsAltNode;
    :cond_3
    invoke-direct {p0, p1}, Lorg/joni/Parser;->parseSubExpError(Lorg/joni/constants/TokenType;)V

    move-object v2, v3

    .line 998
    goto :goto_0
.end method

.method private parseSubExpError(Lorg/joni/constants/TokenType;)V
    .locals 1
    .param p1, "term"    # Lorg/joni/constants/TokenType;

    .prologue
    .line 1003
    sget-object v0, Lorg/joni/constants/TokenType;->SUBEXP_CLOSE:Lorg/joni/constants/TokenType;

    if-ne p1, v0, :cond_0

    .line 1004
    const-string v0, "end pattern with unmatched parenthesis"

    invoke-virtual {p0, v0}, Lorg/joni/Parser;->newSyntaxException(Ljava/lang/String;)V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    const-string v0, "internal parser error (bug)"

    invoke-virtual {p0, v0}, Lorg/joni/Parser;->newInternalException(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final parse()Lorg/joni/ast/Node;
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/joni/Parser;->parseRegexp()Lorg/joni/ast/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/Parser;->root:Lorg/joni/ast/Node;

    .line 65
    iget-object v0, p0, Lorg/joni/Parser;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/Parser;->env:Lorg/joni/ScanEnvironment;

    iget v1, v1, Lorg/joni/ScanEnvironment;->numMem:I

    iput v1, v0, Lorg/joni/Regex;->numMem:I

    .line 66
    iget-object v0, p0, Lorg/joni/Parser;->root:Lorg/joni/ast/Node;

    return-object v0
.end method
