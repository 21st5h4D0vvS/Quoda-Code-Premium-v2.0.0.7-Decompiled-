.class public interface abstract Lorg/joni/exception/ErrorMessages;
.super Ljava/lang/Object;
.source "ErrorMessages.java"

# interfaces
.implements Lorg/jcodings/exception/ErrorMessages;


# static fields
.field public static final ERR_CHAR_CLASS_VALUE_AT_END_OF_RANGE:Ljava/lang/String; = "char-class value at end of range"

.field public static final ERR_CHAR_CLASS_VALUE_AT_START_OF_RANGE:Ljava/lang/String; = "char-class value at start of range"

.field public static final ERR_CONTROL_CODE_SYNTAX:Ljava/lang/String; = "invalid control-code syntax"

.field public static final ERR_DEFAULT_ENCODING_IS_NOT_SETTED:Ljava/lang/String; = "default multibyte-encoding is not setted"

.field public static final ERR_EMPTY_CHAR_CLASS:Ljava/lang/String; = "empty char-class"

.field public static final ERR_EMPTY_GROUP_NAME:Ljava/lang/String; = "group name is empty"

.field public static final ERR_EMPTY_RANGE_IN_CHAR_CLASS:Ljava/lang/String; = "empty range in char class"

.field public static final ERR_END_PATTERN_AT_CONTROL:Ljava/lang/String; = "end pattern at control"

.field public static final ERR_END_PATTERN_AT_ESCAPE:Ljava/lang/String; = "end pattern at escape"

.field public static final ERR_END_PATTERN_AT_LEFT_BRACE:Ljava/lang/String; = "end pattern at left brace"

.field public static final ERR_END_PATTERN_AT_LEFT_BRACKET:Ljava/lang/String; = "end pattern at left bracket"

.field public static final ERR_END_PATTERN_AT_META:Ljava/lang/String; = "end pattern at meta"

.field public static final ERR_END_PATTERN_IN_GROUP:Ljava/lang/String; = "end pattern in group"

.field public static final ERR_END_PATTERN_WITH_UNMATCHED_PARENTHESIS:Ljava/lang/String; = "end pattern with unmatched parenthesis"

.field public static final ERR_GROUP_NUMBER_OVER_FOR_CAPTURE_HISTORY:Ljava/lang/String; = "group number is too big for capture history"

.field public static final ERR_INVALID_ARGUMENT:Ljava/lang/String; = "invalid argument"

.field public static final ERR_INVALID_BACKREF:Ljava/lang/String; = "invalid backref number/name"

.field public static final ERR_INVALID_CHAR_IN_GROUP_NAME:Ljava/lang/String; = "invalid char in group name <%n>"

.field public static final ERR_INVALID_COMBINATION_OF_OPTIONS:Ljava/lang/String; = "invalid combination of options"

.field public static final ERR_INVALID_GROUP_NAME:Ljava/lang/String; = "invalid group name <%n>"

.field public static final ERR_INVALID_LOOK_BEHIND_PATTERN:Ljava/lang/String; = "invalid pattern in look-behind"

.field public static final ERR_INVALID_POSIX_BRACKET_TYPE:Ljava/lang/String; = "invalid POSIX bracket type"

.field public static final ERR_INVALID_REPEAT_RANGE_PATTERN:Ljava/lang/String; = "invalid repeat range {lower,upper}"

.field public static final ERR_INVALID_WIDE_CHAR_VALUE:Ljava/lang/String; = "invalid wide-char value"

.field public static final ERR_MATCH_STACK_LIMIT_OVER:Ljava/lang/String; = "match-stack limit over"

.field public static final ERR_MEMORY:Ljava/lang/String; = "fail to memory allocation"

.field public static final ERR_META_CODE_SYNTAX:Ljava/lang/String; = "invalid meta-code syntax"

.field public static final ERR_MISMATCH_CODE_LENGTH_IN_CLASS_RANGE:Ljava/lang/String; = "mismatch multibyte code length in char-class range"

.field public static final ERR_MULTIPLEX_DEFINED_NAME:Ljava/lang/String; = "multiplex defined name <%n>"

.field public static final ERR_MULTIPLEX_DEFINITION_NAME_CALL:Ljava/lang/String; = "multiplex definition name <%n> call"

.field public static final ERR_NESTED_REPEAT_NOT_ALLOWED:Ljava/lang/String; = "nested repeat is not allowed"

.field public static final ERR_NESTED_REPEAT_OPERATOR:Ljava/lang/String; = "nested repeat operator"

.field public static final ERR_NEVER_ENDING_RECURSION:Ljava/lang/String; = "never ending recursion"

.field public static final ERR_NOT_SUPPORTED_ENCODING_COMBINATION:Ljava/lang/String; = "not supported encoding combination"

.field public static final ERR_NUMBERED_BACKREF_OR_CALL_NOT_ALLOWED:Ljava/lang/String; = "numbered backref/call is not allowed. (use name)"

.field public static final ERR_OVER_THREAD_PASS_LIMIT_COUNT:Ljava/lang/String; = "over thread pass limit count"

.field public static final ERR_PARSER_BUG:Ljava/lang/String; = "internal parser error (bug)"

.field public static final ERR_PREMATURE_END_OF_CHAR_CLASS:Ljava/lang/String; = "premature end of char-class"

.field public static final ERR_SPECIFIED_ENCODING_CANT_CONVERT_TO_WIDE_CHAR:Ljava/lang/String; = "can\'t convert to wide-char on specified multibyte-encoding"

.field public static final ERR_STACK_BUG:Ljava/lang/String; = "stack error (bug)"

.field public static final ERR_TARGET_OF_REPEAT_OPERATOR_INVALID:Ljava/lang/String; = "target of repeat operator is invalid"

.field public static final ERR_TARGET_OF_REPEAT_OPERATOR_NOT_SPECIFIED:Ljava/lang/String; = "target of repeat operator is not specified"

.field public static final ERR_TOO_BIG_BACKREF_NUMBER:Ljava/lang/String; = "too big backref number"

.field public static final ERR_TOO_BIG_NUMBER:Ljava/lang/String; = "too big number"

.field public static final ERR_TOO_BIG_NUMBER_FOR_REPEAT_RANGE:Ljava/lang/String; = "too big number for repeat range"

.field public static final ERR_TOO_BIG_SB_CHAR_VALUE:Ljava/lang/String; = "too big singlebyte char value"

.field public static final ERR_TOO_MANY_MULTI_BYTE_RANGES:Ljava/lang/String; = "too many multibyte code ranges are specified"

.field public static final ERR_TOO_SHORT_MULTI_BYTE_STRING:Ljava/lang/String; = "too short multibyte code string"

.field public static final ERR_TYPE_BUG:Ljava/lang/String; = "undefined type (bug)"

.field public static final ERR_UNDEFINED_BYTECODE:Ljava/lang/String; = "undefined bytecode (bug)"

.field public static final ERR_UNDEFINED_GROUP_OPTION:Ljava/lang/String; = "undefined group option"

.field public static final ERR_UNDEFINED_GROUP_REFERENCE:Ljava/lang/String; = "undefined group <%n> reference"

.field public static final ERR_UNDEFINED_NAME_REFERENCE:Ljava/lang/String; = "undefined name <%n> reference"

.field public static final ERR_UNEXPECTED_BYTECODE:Ljava/lang/String; = "unexpected bytecode (bug)"

.field public static final ERR_UNMATCHED_CLOSE_PARENTHESIS:Ljava/lang/String; = "unmatched close parenthesis"

.field public static final ERR_UNMATCHED_RANGE_SPECIFIER_IN_CHAR_CLASS:Ljava/lang/String; = "unmatched range specifier in char-class"

.field public static final ERR_UPPER_SMALLER_THAN_LOWER_IN_REPEAT_RANGE:Ljava/lang/String; = "upper is smaller than lower in repeat range"

.field public static final MISMATCH:Ljava/lang/String; = "mismatch"

.field public static final NO_SUPPORT_CONFIG:Ljava/lang/String; = "no support in this configuration"
