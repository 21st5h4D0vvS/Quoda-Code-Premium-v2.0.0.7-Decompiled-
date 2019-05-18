.class public final Lorg/joni/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Lorg/joni/constants/SyntaxProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joni/Syntax$MetaCharTable;
    }
.end annotation


# static fields
.field public static final ASIS:Lorg/joni/Syntax;

.field public static final DEFAULT:Lorg/joni/Syntax;

.field public static final ECMAScript:Lorg/joni/Syntax;

.field public static final Emacs:Lorg/joni/Syntax;

.field public static final GnuRegex:Lorg/joni/Syntax;

.field public static final Grep:Lorg/joni/Syntax;

.field public static final Java:Lorg/joni/Syntax;

.field public static final Perl:Lorg/joni/Syntax;

.field public static final PerlNG:Lorg/joni/Syntax;

.field public static final PosixBasic:Lorg/joni/Syntax;

.field public static final PosixExtended:Lorg/joni/Syntax;

.field public static final RUBY:Lorg/joni/Syntax;


# instance fields
.field private final behavior:I

.field public final metaCharTable:Lorg/joni/Syntax$MetaCharTable;

.field private final op:I

.field private final op2:I

.field public final options:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const v13, -0x7f5ffff5

    const v12, 0x7ff7d556

    const/16 v11, 0x8

    const/16 v1, 0x5c

    const/4 v2, 0x0

    .line 358
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0xb3bda

    const v8, -0x7c5ffc25

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v12

    move v5, v7

    move v6, v8

    move v7, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->RUBY:Lorg/joni/Syntax;

    .line 397
    sget-object v0, Lorg/joni/Syntax;->RUBY:Lorg/joni/Syntax;

    sput-object v0, Lorg/joni/Syntax;->DEFAULT:Lorg/joni/Syntax;

    .line 399
    new-instance v9, Lorg/joni/Syntax;

    const/high16 v7, 0x100000

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v2

    move v5, v7

    move v6, v2

    move v7, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->ASIS:Lorg/joni/Syntax;

    .line 418
    new-instance v9, Lorg/joni/Syntax;

    const v8, 0x5832206

    const/16 v7, 0xc

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v8

    move v5, v2

    move v6, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->PosixBasic:Lorg/joni/Syntax;

    .line 438
    new-instance v9, Lorg/joni/Syntax;

    const v8, 0x5831556

    const v10, -0x7f7ffff9

    const/16 v7, 0xc

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v8

    move v5, v2

    move v6, v10

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->PosixExtended:Lorg/joni/Syntax;

    .line 462
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x4832a56

    const v8, 0x8000

    const/high16 v10, 0x400000

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->Emacs:Lorg/joni/Syntax;

    .line 486
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x19f2aa6

    const/high16 v8, 0x500000

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v7

    move v5, v2

    move v6, v8

    move v7, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->Grep:Lorg/joni/Syntax;

    .line 511
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x1ffd556

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v7

    move v5, v2

    move v6, v13

    move v7, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->GnuRegex:Lorg/joni/Syntax;

    .line 528
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x3ff7d556

    const v8, 0x16077

    const v10, -0x7f5fffb5

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v11

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->Java:Lorg/joni/Syntax;

    .line 554
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x30007

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v12

    move v5, v7

    move v6, v13

    move v7, v11

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->Perl:Lorg/joni/Syntax;

    .line 580
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x30387

    const v8, -0x7f5ffe75

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v12

    move v5, v7

    move v6, v8

    move v7, v11

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->PerlNG:Lorg/joni/Syntax;

    .line 611
    new-instance v9, Lorg/joni/Syntax;

    const v7, 0x3ff7d556

    const v8, 0x236007

    const v10, -0x7f5fffb5

    new-instance v0, Lorg/joni/Syntax$MetaCharTable;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/joni/Syntax$MetaCharTable;-><init>(IIIIII)V

    move-object v3, v9

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lorg/joni/Syntax;-><init>(IIIILorg/joni/Syntax$MetaCharTable;)V

    sput-object v9, Lorg/joni/Syntax;->ECMAScript:Lorg/joni/Syntax;

    return-void
.end method

.method public constructor <init>(IIIILorg/joni/Syntax$MetaCharTable;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "op2"    # I
    .param p3, "behavior"    # I
    .param p4, "options"    # I
    .param p5, "metaCharTable"    # Lorg/joni/Syntax$MetaCharTable;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/joni/Syntax;->op:I

    .line 35
    iput p2, p0, Lorg/joni/Syntax;->op2:I

    .line 36
    iput p3, p0, Lorg/joni/Syntax;->behavior:I

    .line 37
    iput p4, p0, Lorg/joni/Syntax;->options:I

    .line 38
    iput-object p5, p0, Lorg/joni/Syntax;->metaCharTable:Lorg/joni/Syntax$MetaCharTable;

    .line 39
    return-void
.end method


# virtual methods
.method public allowDoubleRangeOpInCC()Z
    .locals 1

    .prologue
    .line 347
    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public allowEmptyRangeInCC()Z
    .locals 1

    .prologue
    .line 343
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public allowIntervalLowAbbrev()Z
    .locals 1

    .prologue
    .line 310
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public allowInvalidInterval()Z
    .locals 1

    .prologue
    .line 306
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public allowMultiplexDefinitionName()Z
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public allowUnmatchedCloseSubexp()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public backSlashEscapeInCC()Z
    .locals 1

    .prologue
    .line 339
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public captureOnlyNamedGroup()Z
    .locals 1

    .prologue
    .line 322
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public contextIndepRepeatOps()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public contextInvalidRepeatOps()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public differentLengthAltLookBehind()Z
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public fixedIntervalIsGreedyOnly()Z
    .locals 1

    .prologue
    .line 330
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method protected isBehavior(I)Z
    .locals 1
    .param p1, "bvm"    # I

    .prologue
    .line 290
    iget v0, p0, Lorg/joni/Syntax;->behavior:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOp(I)Z
    .locals 1
    .param p1, "opm"    # I

    .prologue
    .line 65
    iget v0, p0, Lorg/joni/Syntax;->op:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOp2(I)Z
    .locals 1
    .param p1, "opm"    # I

    .prologue
    .line 198
    iget v0, p0, Lorg/joni/Syntax;->op2:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notNewlineInNegativeCC()Z
    .locals 1

    .prologue
    .line 335
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public op2AtMarkCaptureHistory()Z
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2CClassSetOp()Z
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscCapitalCBarControl()Z
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscCapitalMBarMeta()Z
    .locals 1

    .prologue
    .line 250
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscCapitalQQuote()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscGSubexpCall()Z
    .locals 1

    .prologue
    .line 238
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscGnuBufAnchor()Z
    .locals 1

    .prologue
    .line 262
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscHXDigit()Z
    .locals 1

    .prologue
    .line 274
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscKNamedBackref()Z
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscPBraceCharProperty()Z
    .locals 1

    .prologue
    .line 266
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscPBraceCircumflexNot()Z
    .locals 1

    .prologue
    .line 270
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscUHex4()Z
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2EscVVtab()Z
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2IneffectiveEscape()Z
    .locals 1

    .prologue
    .line 278
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2OptionECMAScript()Z
    .locals 1

    .prologue
    .line 282
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2OptionPerl()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2OptionRuby()Z
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2PlusPossessiveInterval()Z
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2PlusPossessiveRepeat()Z
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2QMarkGroupEffect()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public op2QMarkLtNamedGroup()Z
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp2(I)Z

    move-result v0

    return v0
.end method

.method public opAsteriskZeroInf()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opBraceInterval()Z
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opBracketCC()Z
    .locals 1

    .prologue
    .line 137
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opDecimalBackref()Z
    .locals 1

    .prologue
    .line 133
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opDotAnyChar()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscAZBufAnchor()Z
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscAsteriskZeroInf()Z
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscBWordBound()Z
    .locals 1

    .prologue
    .line 149
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscBraceInterval()Z
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscCControl()Z
    .locals 1

    .prologue
    .line 177
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscCapitalGBeginAnchor()Z
    .locals 1

    .prologue
    .line 129
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscControlChars()Z
    .locals 1

    .prologue
    .line 173
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscDDigit()Z
    .locals 1

    .prologue
    .line 157
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscLParenSubexp()Z
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscLtGtWordBeginEnd()Z
    .locals 1

    .prologue
    .line 145
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscOctal3()Z
    .locals 1

    .prologue
    .line 181
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscPlusOneInf()Z
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscQMarkZeroOne()Z
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscSWhiteSpace()Z
    .locals 1

    .prologue
    .line 153
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscVBarAlt()Z
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscWWord()Z
    .locals 1

    .prologue
    .line 141
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscXBraceHex8()Z
    .locals 1

    .prologue
    .line 189
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opEscXHex2()Z
    .locals 1

    .prologue
    .line 185
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opLParenSubexp()Z
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opLineAnchor()Z
    .locals 1

    .prologue
    .line 161
    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opPlusOneInf()Z
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opPosixBracket()Z
    .locals 1

    .prologue
    .line 165
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opQMarkNonGreedy()Z
    .locals 1

    .prologue
    .line 169
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opQMarkZeroOne()Z
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opVBarAlt()Z
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public opVariableMetaCharacters()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isOp(I)Z

    move-result v0

    return v0
.end method

.method public strictCheckBackref()Z
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public warnCCOpNotEscaped()Z
    .locals 1

    .prologue
    .line 351
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method

.method public warnReduntantNestedRepeat()Z
    .locals 1

    .prologue
    .line 355
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lorg/joni/Syntax;->isBehavior(I)Z

    move-result v0

    return v0
.end method
