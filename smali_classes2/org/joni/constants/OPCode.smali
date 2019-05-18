.class public interface abstract Lorg/joni/constants/OPCode;
.super Ljava/lang/Object;
.source "OPCode.java"


# static fields
.field public static final ANYCHAR:I = 0x17

.field public static final ANYCHAR_ML:I = 0x18

.field public static final ANYCHAR_ML_SB:I = 0x59

.field public static final ANYCHAR_ML_STAR:I = 0x1a

.field public static final ANYCHAR_ML_STAR_PEEK_NEXT:I = 0x1c

.field public static final ANYCHAR_ML_STAR_PEEK_NEXT_SB:I = 0x5d

.field public static final ANYCHAR_ML_STAR_SB:I = 0x5b

.field public static final ANYCHAR_SB:I = 0x58

.field public static final ANYCHAR_STAR:I = 0x19

.field public static final ANYCHAR_STAR_PEEK_NEXT:I = 0x1b

.field public static final ANYCHAR_STAR_PEEK_NEXT_SB:I = 0x5c

.field public static final ANYCHAR_STAR_SB:I = 0x5a

.field public static final BACKREF1:I = 0x29

.field public static final BACKREF2:I = 0x2a

.field public static final BACKREFN:I = 0x2b

.field public static final BACKREFN_IC:I = 0x2c

.field public static final BACKREF_MULTI:I = 0x2d

.field public static final BACKREF_MULTI_IC:I = 0x2e

.field public static final BACKREF_WITH_LEVEL:I = 0x2f

.field public static final BEGIN_BUF:I = 0x23

.field public static final BEGIN_LINE:I = 0x25

.field public static final BEGIN_POSITION:I = 0x28

.field public static final CALL:I = 0x4f

.field public static final CCLASS:I = 0x10

.field public static final CCLASS_MB:I = 0x11

.field public static final CCLASS_MB_NOT:I = 0x14

.field public static final CCLASS_MIX:I = 0x12

.field public static final CCLASS_MIX_NOT:I = 0x15

.field public static final CCLASS_NODE:I = 0x16

.field public static final CCLASS_NOT:I = 0x13

.field public static final CCLASS_NOT_SB:I = 0x61

.field public static final CCLASS_SB:I = 0x60

.field public static final END:I = 0x1

.field public static final END_BUF:I = 0x24

.field public static final END_LINE:I = 0x26

.field public static final EXACT1:I = 0x2

.field public static final EXACT1_IC:I = 0xe

.field public static final EXACT1_IC_SB:I = 0x69

.field public static final EXACT2:I = 0x3

.field public static final EXACT3:I = 0x4

.field public static final EXACT4:I = 0x5

.field public static final EXACT5:I = 0x6

.field public static final EXACTMB2N:I = 0xb

.field public static final EXACTMB2N1:I = 0x8

.field public static final EXACTMB2N2:I = 0x9

.field public static final EXACTMB2N3:I = 0xa

.field public static final EXACTMB3N:I = 0xc

.field public static final EXACTMBN:I = 0xd

.field public static final EXACTN:I = 0x7

.field public static final EXACTN_IC:I = 0xf

.field public static final EXACTN_IC_SB:I = 0x6a

.field public static final FAIL:I = 0x36

.field public static final FAIL_LOOK_BEHIND_NOT:I = 0x4e

.field public static final FAIL_POS:I = 0x49

.field public static final FINISH:I = 0x0

.field public static final JUMP:I = 0x37

.field public static final LOOK_BEHIND:I = 0x4c

.field public static final LOOK_BEHIND_SB:I = 0x68

.field public static final MEMORY_END:I = 0x34

.field public static final MEMORY_END_PUSH:I = 0x32

.field public static final MEMORY_END_PUSH_REC:I = 0x33

.field public static final MEMORY_END_REC:I = 0x35

.field public static final MEMORY_START:I = 0x30

.field public static final MEMORY_START_PUSH:I = 0x31

.field public static final NOT_WORD:I = 0x1e

.field public static final NOT_WORD_BOUND:I = 0x20

.field public static final NOT_WORD_BOUND_SB:I = 0x65

.field public static final NOT_WORD_SB:I = 0x63

.field public static final NULL_CHECK_END:I = 0x43

.field public static final NULL_CHECK_END_MEMST:I = 0x44

.field public static final NULL_CHECK_END_MEMST_PUSH:I = 0x45

.field public static final NULL_CHECK_START:I = 0x42

.field public static final OpCodeArgTypes:[I

.field public static final OpCodeNames:[Ljava/lang/String;

.field public static final POP:I = 0x39

.field public static final POP_POS:I = 0x47

.field public static final POP_STOP_BT:I = 0x4b

.field public static final PUSH:I = 0x38

.field public static final PUSH_IF_PEEK_NEXT:I = 0x3b

.field public static final PUSH_LOOK_BEHIND_NOT:I = 0x4d

.field public static final PUSH_OR_JUMP_EXACT1:I = 0x3a

.field public static final PUSH_POS:I = 0x46

.field public static final PUSH_POS_NOT:I = 0x48

.field public static final PUSH_STOP_BT:I = 0x4a

.field public static final REPEAT:I = 0x3c

.field public static final REPEAT_INC:I = 0x3e

.field public static final REPEAT_INC_NG:I = 0x3f

.field public static final REPEAT_INC_NG_SG:I = 0x41

.field public static final REPEAT_INC_SG:I = 0x40

.field public static final REPEAT_NG:I = 0x3d

.field public static final RETURN:I = 0x50

.field public static final SEMI_END_BUF:I = 0x27

.field public static final SET_OPTION:I = 0x57

.field public static final SET_OPTION_PUSH:I = 0x56

.field public static final STATE_CHECK:I = 0x53

.field public static final STATE_CHECK_ANYCHAR_ML_STAR:I = 0x55

.field public static final STATE_CHECK_ANYCHAR_ML_STAR_SB:I = 0x5f

.field public static final STATE_CHECK_ANYCHAR_STAR:I = 0x54

.field public static final STATE_CHECK_ANYCHAR_STAR_SB:I = 0x5e

.field public static final STATE_CHECK_PUSH:I = 0x51

.field public static final STATE_CHECK_PUSH_OR_JUMP:I = 0x52

.field public static final WORD:I = 0x1d

.field public static final WORD_BEGIN:I = 0x21

.field public static final WORD_BEGIN_SB:I = 0x66

.field public static final WORD_BOUND:I = 0x1f

.field public static final WORD_BOUND_SB:I = 0x64

.field public static final WORD_END:I = 0x22

.field public static final WORD_END_SB:I = 0x67

.field public static final WORD_SB:I = 0x62


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    sput-object v0, Lorg/joni/constants/OPCode;->OpCodeNames:[Ljava/lang/String;

    .line 272
    sput-object v0, Lorg/joni/constants/OPCode;->OpCodeArgTypes:[I

    return-void
.end method
