.class public interface abstract Lorg/joni/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Lorg/jcodings/Config;


# static fields
.field public static final CASE_FOLD_IS_APPLIED_INSIDE_NEGATIVE_CCLASS:Z = true

.field public static final CHAR_TABLE_SIZE:I = 0x100

.field public static final CHECK_BUFF_MAX_SIZE:I = 0x4000

.field public static final CHECK_STRING_THRESHOLD_LEN:I = 0x7

.field public static final DEBUG:Z = false

.field public static final DEBUG_ALL:Z = false

.field public static final DEBUG_ASM:Z = false

.field public static final DEBUG_ASM_EXEC:Z = false

.field public static final DEBUG_COMPILE:Z = false

.field public static final DEBUG_COMPILE_BYTE_CODE_INFO:Z = false

.field public static final DEBUG_MATCH:Z = false

.field public static final DEBUG_PARSE_TREE:Z = false

.field public static final DEBUG_PARSE_TREE_RAW:Z = false

.field public static final DEBUG_SEARCH:Z = false

.field public static final DEFAULT_MATCH_STACK_LIMIT_SIZE:I = 0x0

.field public static final DONT_OPTIMIZE:Z = false

.field public static final INIT_MATCH_STACK_SIZE:I = 0x40

.field public static final MAX_BACKREF_NUM:I = 0x64

.field public static final MAX_CAPTURE_HISTORY_GROUP:I = 0x1f

.field public static final MAX_MULTI_BYTE_RANGES_NUM:I = 0x2710

.field public static final MAX_REPEAT_NUM:I = 0x2710

.field public static final NON_UNICODE_SDW:Z = true

.field public static final NREGION:I = 0xa

.field public static final NUMBER_OF_POOLED_STACKS:I = 0x4

.field public static final USE_BACKREF_WITH_LEVEL:Z = true

.field public static final USE_CAPTURE_HISTORY:Z = false

.field public static final USE_COMBINATION_EXPLOSION_CHECK:Z = false

.field public static final USE_FIND_LONGEST_SEARCH_ALL_OF_RANGE:Z = false

.field public static final USE_MATCH_RANGE_MUST_BE_INSIDE_OF_SPECIFIED_RANGE:Z = true

.field public static final USE_MONOMANIAC_CHECK_CAPTURES_IN_ENDLESS_REPEAT:Z = true

.field public static final USE_NAMED_GROUP:Z = true

.field public static final USE_NEWLINE_AT_END_OF_STRING_HAS_EMPTY_LINE:Z = true

.field public static final USE_OP_PUSH_OR_JUMP_EXACT:Z = true

.field public static final USE_PARSE_TREE_NODE_RECYCLE:Z = true

.field public static final USE_POSIX_API_REGION_OPTION:Z = false

.field public static final USE_QTFR_PEEK_NEXT:Z = true

.field public static final USE_SHARED_CCLASS_TABLE:Z = false

.field public static final USE_STRING_TEMPLATES:Z = true

.field public static final USE_SUBEXP_CALL:Z = true

.field public static final USE_VARIABLE_META_CHARS:Z = true

.field public static final USE_WARN:Z = true

.field public static final USE_WARNING_REDUNDANT_NESTED_REPEAT_OPERATOR:Z = false

.field public static final USE_WORD_BEGIN_END:Z = true

.field public static final err:Ljava/io/PrintStream;

.field public static final log:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lorg/joni/Config;->log:Ljava/io/PrintStream;

    .line 80
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lorg/joni/Config;->err:Ljava/io/PrintStream;

    return-void
.end method
