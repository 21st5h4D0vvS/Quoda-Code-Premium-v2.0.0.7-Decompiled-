.class public Lorg/jcodings/unicode/UnicodeProperties;
.super Ljava/lang/Object;
.source "UnicodeProperties.java"


# static fields
.field static final CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    const/16 v0, 0x272

    new-array v0, v0, [Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const/4 v1, 0x0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "newline"

    const-string v4, "CR_NEWLINE"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "alpha"

    const-string v4, "CR_Alpha"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "blank"

    const-string v4, "CR_Blank"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cntrl"

    const-string v4, "CR_Cntrl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "digit"

    const-string v4, "CR_Digit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "graph"

    const-string v4, "CR_Graph"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lower"

    const-string v4, "CR_Lower"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "print"

    const-string v4, "CR_Print"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "punct"

    const-string v4, "CR_Punct"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "space"

    const-string v4, "CR_Space"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "upper"

    const-string v4, "CR_Upper"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xdigit"

    const-string v4, "CR_XDigit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "word"

    const-string v4, "CR_Word"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "alnum"

    const-string v4, "CR_Alnum"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ascii"

    const-string v4, "CR_ASCII"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "any"

    const-string v4, "CR_Any"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "assigned"

    const-string v4, "CR_Assigned"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "c"

    const-string v4, "CR_C"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "other"

    const-string v4, "CR_C"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cc"

    const-string v4, "CR_Cntrl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "control"

    const-string v4, "CR_Cntrl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cf"

    const-string v4, "CR_Cf"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "format"

    const-string v4, "CR_Cf"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cn"

    const-string v4, "CR_Cn"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "unassigned"

    const-string v4, "CR_Cn"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "co"

    const-string v4, "CR_Co"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "privateuse"

    const-string v4, "CR_Co"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cs"

    const-string v4, "CR_Cs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "surrogate"

    const-string v4, "CR_Cs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "l"

    const-string v4, "CR_L"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "letter"

    const-string v4, "CR_L"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lc"

    const-string v4, "CR_LC"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "casedletter"

    const-string v4, "CR_LC"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ll"

    const-string v4, "CR_Ll"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lowercaseletter"

    const-string v4, "CR_Ll"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lm"

    const-string v4, "CR_Lm"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "modifierletter"

    const-string v4, "CR_Lm"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lo"

    const-string v4, "CR_Lo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otherletter"

    const-string v4, "CR_Lo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lt"

    const-string v4, "CR_Lt"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "titlecaseletter"

    const-string v4, "CR_Lt"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lu"

    const-string v4, "CR_Lu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "uppercaseletter"

    const-string v4, "CR_Lu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "m"

    const-string v4, "CR_M"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mark"

    const-string v4, "CR_M"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "combiningmark"

    const-string v4, "CR_M"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mc"

    const-string v4, "CR_Mc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "spacingmark"

    const-string v4, "CR_Mc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "me"

    const-string v4, "CR_Me"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "enclosingmark"

    const-string v4, "CR_Me"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mn"

    const-string v4, "CR_Mn"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "nonspacingmark"

    const-string v4, "CR_Mn"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "n"

    const-string v4, "CR_N"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "number"

    const-string v4, "CR_N"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "nd"

    const-string v4, "CR_Digit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "decimalnumber"

    const-string v4, "CR_Digit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "nl"

    const-string v4, "CR_Nl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "letternumber"

    const-string v4, "CR_Nl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "no"

    const-string v4, "CR_No"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "othernumber"

    const-string v4, "CR_No"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "p"

    const-string v4, "CR_Punct"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "punctuation"

    const-string v4, "CR_Punct"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "pc"

    const-string v4, "CR_Pc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "connectorpunctuation"

    const-string v4, "CR_Pc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "pd"

    const-string v4, "CR_Pd"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "dashpunctuation"

    const-string v4, "CR_Pd"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "pe"

    const-string v4, "CR_Pe"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "closepunctuation"

    const-string v4, "CR_Pe"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "pf"

    const-string v4, "CR_Pf"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "finalpunctuation"

    const-string v4, "CR_Pf"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "pi"

    const-string v4, "CR_Pi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "initialpunctuation"

    const-string v4, "CR_Pi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "po"

    const-string v4, "CR_Po"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otherpunctuation"

    const-string v4, "CR_Po"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ps"

    const-string v4, "CR_Ps"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "openpunctuation"

    const-string v4, "CR_Ps"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "s"

    const-string v4, "CR_S"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "symbol"

    const-string v4, "CR_S"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sc"

    const-string v4, "CR_Sc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "currencysymbol"

    const-string v4, "CR_Sc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sk"

    const-string v4, "CR_Sk"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "modifiersymbol"

    const-string v4, "CR_Sk"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sm"

    const-string v4, "CR_Sm"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mathsymbol"

    const-string v4, "CR_Sm"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "so"

    const-string v4, "CR_So"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "othersymbol"

    const-string v4, "CR_So"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "z"

    const-string v4, "CR_Z"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "separator"

    const-string v4, "CR_Z"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "zl"

    const-string v4, "CR_Zl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lineseparator"

    const-string v4, "CR_Zl"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "zp"

    const-string v4, "CR_Zp"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "paragraphseparator"

    const-string v4, "CR_Zp"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "zs"

    const-string v4, "CR_Zs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "spaceseparator"

    const-string v4, "CR_Zs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "math"

    const-string v4, "CR_Math"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "alphabetic"

    const-string v4, "CR_Alpha"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lowercase"

    const-string v4, "CR_Lower"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "uppercase"

    const-string v4, "CR_Upper"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cased"

    const-string v4, "CR_Cased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "caseignorable"

    const-string v4, "CR_Case_Ignorable"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ci"

    const-string v4, "CR_Case_Ignorable"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "changeswhenlowercased"

    const-string v4, "CR_Changes_When_Lowercased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cwl"

    const-string v4, "CR_Changes_When_Lowercased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "changeswhenuppercased"

    const-string v4, "CR_Changes_When_Uppercased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cwu"

    const-string v4, "CR_Changes_When_Uppercased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "changeswhentitlecased"

    const-string v4, "CR_Changes_When_Titlecased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cwt"

    const-string v4, "CR_Changes_When_Titlecased"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "changeswhencasefolded"

    const-string v4, "CR_Changes_When_Casefolded"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cwcf"

    const-string v4, "CR_Changes_When_Casefolded"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "changeswhencasemapped"

    const-string v4, "CR_Changes_When_Casemapped"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cwcm"

    const-string v4, "CR_Changes_When_Casemapped"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idstart"

    const-string v4, "CR_ID_Start"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ids"

    const-string v4, "CR_ID_Start"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idcontinue"

    const-string v4, "CR_ID_Continue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idc"

    const-string v4, "CR_ID_Continue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xidstart"

    const-string v4, "CR_XID_Start"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xids"

    const-string v4, "CR_XID_Start"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xidcontinue"

    const-string v4, "CR_XID_Continue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xidc"

    const-string v4, "CR_XID_Continue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "defaultignorablecodepoint"

    const-string v4, "CR_Default_Ignorable_Code_Point"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "di"

    const-string v4, "CR_Default_Ignorable_Code_Point"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "graphemeextend"

    const-string v4, "CR_Grapheme_Extend"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "grext"

    const-string v4, "CR_Grapheme_Extend"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "graphemebase"

    const-string v4, "CR_Grapheme_Base"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "grbase"

    const-string v4, "CR_Grapheme_Base"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "graphemelink"

    const-string v4, "CR_Grapheme_Link"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "grlink"

    const-string v4, "CR_Grapheme_Link"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "common"

    const-string v4, "CR_Common"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "zyyy"

    const-string v4, "CR_Common"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "latin"

    const-string v4, "CR_Latin"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "latn"

    const-string v4, "CR_Latin"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "greek"

    const-string v4, "CR_Greek"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "grek"

    const-string v4, "CR_Greek"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cyrillic"

    const-string v4, "CR_Cyrillic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cyrl"

    const-string v4, "CR_Cyrillic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "armenian"

    const-string v4, "CR_Armenian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "armn"

    const-string v4, "CR_Armenian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hebrew"

    const-string v4, "CR_Hebrew"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hebr"

    const-string v4, "CR_Hebrew"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "arabic"

    const-string v4, "CR_Arabic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "arab"

    const-string v4, "CR_Arabic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "syriac"

    const-string v4, "CR_Syriac"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "syrc"

    const-string v4, "CR_Syriac"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "thaana"

    const-string v4, "CR_Thaana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "thaa"

    const-string v4, "CR_Thaana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "devanagari"

    const-string v4, "CR_Devanagari"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "deva"

    const-string v4, "CR_Devanagari"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bengali"

    const-string v4, "CR_Bengali"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "beng"

    const-string v4, "CR_Bengali"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "gurmukhi"

    const-string v4, "CR_Gurmukhi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "guru"

    const-string v4, "CR_Gurmukhi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "gujarati"

    const-string v4, "CR_Gujarati"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "gujr"

    const-string v4, "CR_Gujarati"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oriya"

    const-string v4, "CR_Oriya"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "orya"

    const-string v4, "CR_Oriya"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tamil"

    const-string v4, "CR_Tamil"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "taml"

    const-string v4, "CR_Tamil"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "telugu"

    const-string v4, "CR_Telugu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "telu"

    const-string v4, "CR_Telugu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kannada"

    const-string v4, "CR_Kannada"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "knda"

    const-string v4, "CR_Kannada"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "malayalam"

    const-string v4, "CR_Malayalam"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mlym"

    const-string v4, "CR_Malayalam"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sinhala"

    const-string v4, "CR_Sinhala"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sinh"

    const-string v4, "CR_Sinhala"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "thai"

    const-string v4, "CR_Thai"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lao"

    const-string v4, "CR_Lao"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "laoo"

    const-string v4, "CR_Lao"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tibetan"

    const-string v4, "CR_Tibetan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tibt"

    const-string v4, "CR_Tibetan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "myanmar"

    const-string v4, "CR_Myanmar"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mymr"

    const-string v4, "CR_Myanmar"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "georgian"

    const-string v4, "CR_Georgian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "geor"

    const-string v4, "CR_Georgian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hangul"

    const-string v4, "CR_Hangul"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hang"

    const-string v4, "CR_Hangul"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ethiopic"

    const-string v4, "CR_Ethiopic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ethi"

    const-string v4, "CR_Ethiopic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cherokee"

    const-string v4, "CR_Cherokee"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cher"

    const-string v4, "CR_Cherokee"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "canadianaboriginal"

    const-string v4, "CR_Canadian_Aboriginal"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cans"

    const-string v4, "CR_Canadian_Aboriginal"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ogham"

    const-string v4, "CR_Ogham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ogam"

    const-string v4, "CR_Ogham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "runic"

    const-string v4, "CR_Runic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "runr"

    const-string v4, "CR_Runic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "khmer"

    const-string v4, "CR_Khmer"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "khmr"

    const-string v4, "CR_Khmer"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mongolian"

    const-string v4, "CR_Mongolian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mong"

    const-string v4, "CR_Mongolian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hiragana"

    const-string v4, "CR_Hiragana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hira"

    const-string v4, "CR_Hiragana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "katakana"

    const-string v4, "CR_Katakana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kana"

    const-string v4, "CR_Katakana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bopomofo"

    const-string v4, "CR_Bopomofo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bopo"

    const-string v4, "CR_Bopomofo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "han"

    const-string v4, "CR_Han"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hani"

    const-string v4, "CR_Han"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "yi"

    const-string v4, "CR_Yi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "yiii"

    const-string v4, "CR_Yi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "olditalic"

    const-string v4, "CR_Old_Italic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ital"

    const-string v4, "CR_Old_Italic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "gothic"

    const-string v4, "CR_Gothic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "goth"

    const-string v4, "CR_Gothic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "deseret"

    const-string v4, "CR_Deseret"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "dsrt"

    const-string v4, "CR_Deseret"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inherited"

    const-string v4, "CR_Inherited"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "zinh"

    const-string v4, "CR_Inherited"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "qaai"

    const-string v4, "CR_Inherited"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tagalog"

    const-string v4, "CR_Tagalog"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tglg"

    const-string v4, "CR_Tagalog"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hanunoo"

    const-string v4, "CR_Hanunoo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hano"

    const-string v4, "CR_Hanunoo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "buhid"

    const-string v4, "CR_Buhid"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "buhd"

    const-string v4, "CR_Buhid"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tagbanwa"

    const-string v4, "CR_Tagbanwa"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tagb"

    const-string v4, "CR_Tagbanwa"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "limbu"

    const-string v4, "CR_Limbu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "limb"

    const-string v4, "CR_Limbu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "taile"

    const-string v4, "CR_Tai_Le"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tale"

    const-string v4, "CR_Tai_Le"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "linearb"

    const-string v4, "CR_Linear_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "linb"

    const-string v4, "CR_Linear_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ugaritic"

    const-string v4, "CR_Ugaritic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ugar"

    const-string v4, "CR_Ugaritic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "shavian"

    const-string v4, "CR_Shavian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "shaw"

    const-string v4, "CR_Shavian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "osmanya"

    const-string v4, "CR_Osmanya"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "osma"

    const-string v4, "CR_Osmanya"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cypriot"

    const-string v4, "CR_Cypriot"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cprt"

    const-string v4, "CR_Cypriot"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "braille"

    const-string v4, "CR_Braille"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "brai"

    const-string v4, "CR_Braille"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "buginese"

    const-string v4, "CR_Buginese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bugi"

    const-string v4, "CR_Buginese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "coptic"

    const-string v4, "CR_Coptic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "copt"

    const-string v4, "CR_Coptic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "qaac"

    const-string v4, "CR_Coptic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "newtailue"

    const-string v4, "CR_New_Tai_Lue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "talu"

    const-string v4, "CR_New_Tai_Lue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "glagolitic"

    const-string v4, "CR_Glagolitic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "glag"

    const-string v4, "CR_Glagolitic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tifinagh"

    const-string v4, "CR_Tifinagh"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tfng"

    const-string v4, "CR_Tifinagh"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sylotinagri"

    const-string v4, "CR_Syloti_Nagri"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sylo"

    const-string v4, "CR_Syloti_Nagri"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oldpersian"

    const-string v4, "CR_Old_Persian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xpeo"

    const-string v4, "CR_Old_Persian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kharoshthi"

    const-string v4, "CR_Kharoshthi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "khar"

    const-string v4, "CR_Kharoshthi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "balinese"

    const-string v4, "CR_Balinese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bali"

    const-string v4, "CR_Balinese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cuneiform"

    const-string v4, "CR_Cuneiform"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "xsux"

    const-string v4, "CR_Cuneiform"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "phoenician"

    const-string v4, "CR_Phoenician"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "phnx"

    const-string v4, "CR_Phoenician"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "phagspa"

    const-string v4, "CR_Phags_Pa"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "phag"

    const-string v4, "CR_Phags_Pa"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "nko"

    const-string v4, "CR_Nko"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "nkoo"

    const-string v4, "CR_Nko"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sundanese"

    const-string v4, "CR_Sundanese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sund"

    const-string v4, "CR_Sundanese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lepcha"

    const-string v4, "CR_Lepcha"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lepc"

    const-string v4, "CR_Lepcha"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "olchiki"

    const-string v4, "CR_Ol_Chiki"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "olck"

    const-string v4, "CR_Ol_Chiki"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "vai"

    const-string v4, "CR_Vai"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "vaii"

    const-string v4, "CR_Vai"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "saurashtra"

    const-string v4, "CR_Saurashtra"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "saur"

    const-string v4, "CR_Saurashtra"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kayahli"

    const-string v4, "CR_Kayah_Li"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kali"

    const-string v4, "CR_Kayah_Li"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "rejang"

    const-string v4, "CR_Rejang"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "rjng"

    const-string v4, "CR_Rejang"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lycian"

    const-string v4, "CR_Lycian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lyci"

    const-string v4, "CR_Lycian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "carian"

    const-string v4, "CR_Carian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cari"

    const-string v4, "CR_Carian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lydian"

    const-string v4, "CR_Lydian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lydi"

    const-string v4, "CR_Lydian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cham"

    const-string v4, "CR_Cham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "taitham"

    const-string v4, "CR_Tai_Tham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lana"

    const-string v4, "CR_Tai_Tham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "taiviet"

    const-string v4, "CR_Tai_Viet"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "tavt"

    const-string v4, "CR_Tai_Viet"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "avestan"

    const-string v4, "CR_Avestan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "avst"

    const-string v4, "CR_Avestan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "egyptianhieroglyphs"

    const-string v4, "CR_Egyptian_Hieroglyphs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "egyp"

    const-string v4, "CR_Egyptian_Hieroglyphs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "samaritan"

    const-string v4, "CR_Samaritan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "samr"

    const-string v4, "CR_Samaritan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "lisu"

    const-string v4, "CR_Lisu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bamum"

    const-string v4, "CR_Bamum"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bamu"

    const-string v4, "CR_Bamum"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "javanese"

    const-string v4, "CR_Javanese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "java"

    const-string v4, "CR_Javanese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "meeteimayek"

    const-string v4, "CR_Meetei_Mayek"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mtei"

    const-string v4, "CR_Meetei_Mayek"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "imperialaramaic"

    const-string v4, "CR_Imperial_Aramaic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "armi"

    const-string v4, "CR_Imperial_Aramaic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oldsoutharabian"

    const-string v4, "CR_Old_South_Arabian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sarb"

    const-string v4, "CR_Old_South_Arabian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inscriptionalparthian"

    const-string v4, "CR_Inscriptional_Parthian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "prti"

    const-string v4, "CR_Inscriptional_Parthian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inscriptionalpahlavi"

    const-string v4, "CR_Inscriptional_Pahlavi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "phli"

    const-string v4, "CR_Inscriptional_Pahlavi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oldturkic"

    const-string v4, "CR_Old_Turkic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "orkh"

    const-string v4, "CR_Old_Turkic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kaithi"

    const-string v4, "CR_Kaithi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "kthi"

    const-string v4, "CR_Kaithi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "batak"

    const-string v4, "CR_Batak"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "batk"

    const-string v4, "CR_Batak"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "brahmi"

    const-string v4, "CR_Brahmi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "brah"

    const-string v4, "CR_Brahmi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mandaic"

    const-string v4, "CR_Mandaic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mand"

    const-string v4, "CR_Mandaic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "chakma"

    const-string v4, "CR_Chakma"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "cakm"

    const-string v4, "CR_Chakma"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "meroiticcursive"

    const-string v4, "CR_Meroitic_Cursive"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "merc"

    const-string v4, "CR_Meroitic_Cursive"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "meroitichieroglyphs"

    const-string v4, "CR_Meroitic_Hieroglyphs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "mero"

    const-string v4, "CR_Meroitic_Hieroglyphs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "miao"

    const-string v4, "CR_Miao"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "plrd"

    const-string v4, "CR_Miao"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sharada"

    const-string v4, "CR_Sharada"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "shrd"

    const-string v4, "CR_Sharada"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sorasompeng"

    const-string v4, "CR_Sora_Sompeng"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sora"

    const-string v4, "CR_Sora_Sompeng"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "takri"

    const-string v4, "CR_Takri"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "takr"

    const-string v4, "CR_Takri"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "whitespace"

    const-string v4, "CR_Space"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "wspace"

    const-string v4, "CR_Space"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bidicontrol"

    const-string v4, "CR_Bidi_Control"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "bidic"

    const-string v4, "CR_Bidi_Control"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "joincontrol"

    const-string v4, "CR_Join_Control"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "joinc"

    const-string v4, "CR_Join_Control"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "dash"

    const-string v4, "CR_Dash"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hyphen"

    const-string v4, "CR_Hyphen"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "quotationmark"

    const-string v4, "CR_Quotation_Mark"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "qmark"

    const-string v4, "CR_Quotation_Mark"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "terminalpunctuation"

    const-string v4, "CR_Terminal_Punctuation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "term"

    const-string v4, "CR_Terminal_Punctuation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "othermath"

    const-string v4, "CR_Other_Math"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "omath"

    const-string v4, "CR_Other_Math"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hexdigit"

    const-string v4, "CR_Hex_Digit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "hex"

    const-string v4, "CR_Hex_Digit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "asciihexdigit"

    const-string v4, "CR_XDigit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ahex"

    const-string v4, "CR_XDigit"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otheralphabetic"

    const-string v4, "CR_Other_Alphabetic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oalpha"

    const-string v4, "CR_Other_Alphabetic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ideographic"

    const-string v4, "CR_Ideographic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ideo"

    const-string v4, "CR_Ideographic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "diacritic"

    const-string v4, "CR_Diacritic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "dia"

    const-string v4, "CR_Diacritic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "extender"

    const-string v4, "CR_Extender"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ext"

    const-string v4, "CR_Extender"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otherlowercase"

    const-string v4, "CR_Other_Lowercase"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "olower"

    const-string v4, "CR_Other_Lowercase"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otheruppercase"

    const-string v4, "CR_Other_Uppercase"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oupper"

    const-string v4, "CR_Other_Uppercase"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "noncharactercodepoint"

    const-string v4, "CR_Noncharacter_Code_Point"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "nchar"

    const-string v4, "CR_Noncharacter_Code_Point"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "othergraphemeextend"

    const-string v4, "CR_Other_Grapheme_Extend"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ogrext"

    const-string v4, "CR_Other_Grapheme_Extend"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idsbinaryoperator"

    const-string v4, "CR_IDS_Binary_Operator"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idsb"

    const-string v4, "CR_IDS_Binary_Operator"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idstrinaryoperator"

    const-string v4, "CR_IDS_Trinary_Operator"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "idst"

    const-string v4, "CR_IDS_Trinary_Operator"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "radical"

    const-string v4, "CR_Radical"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "unifiedideograph"

    const-string v4, "CR_Unified_Ideograph"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "uideo"

    const-string v4, "CR_Unified_Ideograph"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otherdefaultignorablecodepoint"

    const-string v4, "CR_Other_Default_Ignorable_Code_Point"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "odi"

    const-string v4, "CR_Other_Default_Ignorable_Code_Point"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "deprecated"

    const-string v4, "CR_Deprecated"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "dep"

    const-string v4, "CR_Deprecated"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "softdotted"

    const-string v4, "CR_Soft_Dotted"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sd"

    const-string v4, "CR_Soft_Dotted"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "logicalorderexception"

    const-string v4, "CR_Logical_Order_Exception"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "loe"

    const-string v4, "CR_Logical_Order_Exception"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otheridstart"

    const-string v4, "CR_Other_ID_Start"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oids"

    const-string v4, "CR_Other_ID_Start"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "otheridcontinue"

    const-string v4, "CR_Other_ID_Continue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "oidc"

    const-string v4, "CR_Other_ID_Continue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "sterm"

    const-string v4, "CR_STerm"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "variationselector"

    const-string v4, "CR_Variation_Selector"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "vs"

    const-string v4, "CR_Variation_Selector"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "patternwhitespace"

    const-string v4, "CR_Pattern_White_Space"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "patws"

    const-string v4, "CR_Pattern_White_Space"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "patternsyntax"

    const-string v4, "CR_Pattern_Syntax"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "patsyn"

    const-string v4, "CR_Pattern_Syntax"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "unknown"

    const-string v4, "CR_Unknown"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "zzzz"

    const-string v4, "CR_Unknown"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=1.1"

    const-string v4, "CR_Age_1_1"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=2.0"

    const-string v4, "CR_Age_2_0"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=2.1"

    const-string v4, "CR_Age_2_1"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=3.0"

    const-string v4, "CR_Age_3_0"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=3.1"

    const-string v4, "CR_Age_3_1"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=3.2"

    const-string v4, "CR_Age_3_2"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=4.0"

    const-string v4, "CR_Age_4_0"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=4.1"

    const-string v4, "CR_Age_4_1"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=5.0"

    const-string v4, "CR_Age_5_0"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=5.1"

    const-string v4, "CR_Age_5_1"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=5.2"

    const-string v4, "CR_Age_5_2"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=6.0"

    const-string v4, "CR_Age_6_0"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "age=6.1"

    const-string v4, "CR_Age_6_1"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbasiclatin"

    const-string v4, "CR_ASCII"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlatin1supplement"

    const-string v4, "CR_In_Latin_1_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x197

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlatinextendeda"

    const-string v4, "CR_In_Latin_Extended_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlatinextendedb"

    const-string v4, "CR_In_Latin_Extended_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x199

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inipaextensions"

    const-string v4, "CR_In_IPA_Extensions"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inspacingmodifierletters"

    const-string v4, "CR_In_Spacing_Modifier_Letters"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incombiningdiacriticalmarks"

    const-string v4, "CR_In_Combining_Diacritical_Marks"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingreekandcoptic"

    const-string v4, "CR_In_Greek_and_Coptic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incyrillic"

    const-string v4, "CR_In_Cyrillic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incyrillicsupplement"

    const-string v4, "CR_In_Cyrillic_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarmenian"

    const-string v4, "CR_In_Armenian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhebrew"

    const-string v4, "CR_In_Hebrew"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarabic"

    const-string v4, "CR_In_Arabic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insyriac"

    const-string v4, "CR_In_Syriac"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarabicsupplement"

    const-string v4, "CR_In_Arabic_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inthaana"

    const-string v4, "CR_In_Thaana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "innko"

    const-string v4, "CR_In_NKo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insamaritan"

    const-string v4, "CR_In_Samaritan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmandaic"

    const-string v4, "CR_In_Mandaic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarabicextendeda"

    const-string v4, "CR_In_Arabic_Extended_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "indevanagari"

    const-string v4, "CR_In_Devanagari"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbengali"

    const-string v4, "CR_In_Bengali"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingurmukhi"

    const-string v4, "CR_In_Gurmukhi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingujarati"

    const-string v4, "CR_In_Gujarati"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inoriya"

    const-string v4, "CR_In_Oriya"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intamil"

    const-string v4, "CR_In_Tamil"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intelugu"

    const-string v4, "CR_In_Telugu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkannada"

    const-string v4, "CR_In_Kannada"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmalayalam"

    const-string v4, "CR_In_Malayalam"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insinhala"

    const-string v4, "CR_In_Sinhala"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inthai"

    const-string v4, "CR_In_Thai"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlao"

    const-string v4, "CR_In_Lao"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intibetan"

    const-string v4, "CR_In_Tibetan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmyanmar"

    const-string v4, "CR_In_Myanmar"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingeorgian"

    const-string v4, "CR_In_Georgian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhanguljamo"

    const-string v4, "CR_In_Hangul_Jamo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inethiopic"

    const-string v4, "CR_In_Ethiopic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inethiopicsupplement"

    const-string v4, "CR_In_Ethiopic_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incherokee"

    const-string v4, "CR_In_Cherokee"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inunifiedcanadianaboriginalsyllabics"

    const-string v4, "CR_In_Unified_Canadian_Aboriginal_Syllabics"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inogham"

    const-string v4, "CR_In_Ogham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inrunic"

    const-string v4, "CR_In_Runic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intagalog"

    const-string v4, "CR_In_Tagalog"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhanunoo"

    const-string v4, "CR_In_Hanunoo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbuhid"

    const-string v4, "CR_In_Buhid"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intagbanwa"

    const-string v4, "CR_In_Tagbanwa"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkhmer"

    const-string v4, "CR_In_Khmer"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmongolian"

    const-string v4, "CR_In_Mongolian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inunifiedcanadianaboriginalsyllabicsextended"

    const-string v4, "CR_In_Unified_Canadian_Aboriginal_Syllabics_Extended"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlimbu"

    const-string v4, "CR_In_Limbu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intaile"

    const-string v4, "CR_In_Tai_Le"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "innewtailue"

    const-string v4, "CR_In_New_Tai_Lue"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkhmersymbols"

    const-string v4, "CR_In_Khmer_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbuginese"

    const-string v4, "CR_In_Buginese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intaitham"

    const-string v4, "CR_In_Tai_Tham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbalinese"

    const-string v4, "CR_In_Balinese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insundanese"

    const-string v4, "CR_In_Sundanese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbatak"

    const-string v4, "CR_In_Batak"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlepcha"

    const-string v4, "CR_In_Lepcha"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inolchiki"

    const-string v4, "CR_Ol_Chiki"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insundanesesupplement"

    const-string v4, "CR_In_Sundanese_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "invedicextensions"

    const-string v4, "CR_In_Vedic_Extensions"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inphoneticextensions"

    const-string v4, "CR_In_Phonetic_Extensions"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inphoneticextensionssupplement"

    const-string v4, "CR_In_Phonetic_Extensions_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incombiningdiacriticalmarkssupplement"

    const-string v4, "CR_In_Combining_Diacritical_Marks_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlatinextendedadditional"

    const-string v4, "CR_In_Latin_Extended_Additional"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingreekextended"

    const-string v4, "CR_In_Greek_Extended"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingeneralpunctuation"

    const-string v4, "CR_In_General_Punctuation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insuperscriptsandsubscripts"

    const-string v4, "CR_In_Superscripts_and_Subscripts"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incurrencysymbols"

    const-string v4, "CR_In_Currency_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incombiningdiacriticalmarksforsymbols"

    const-string v4, "CR_In_Combining_Diacritical_Marks_for_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inletterlikesymbols"

    const-string v4, "CR_In_Letterlike_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "innumberforms"

    const-string v4, "CR_In_Number_Forms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarrows"

    const-string v4, "CR_In_Arrows"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmathematicaloperators"

    const-string v4, "CR_In_Mathematical_Operators"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiscellaneoustechnical"

    const-string v4, "CR_In_Miscellaneous_Technical"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incontrolpictures"

    const-string v4, "CR_In_Control_Pictures"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inopticalcharacterrecognition"

    const-string v4, "CR_In_Optical_Character_Recognition"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inenclosedalphanumerics"

    const-string v4, "CR_In_Enclosed_Alphanumerics"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inboxdrawing"

    const-string v4, "CR_In_Box_Drawing"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inblockelements"

    const-string v4, "CR_In_Block_Elements"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingeometricshapes"

    const-string v4, "CR_In_Geometric_Shapes"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiscellaneoussymbols"

    const-string v4, "CR_In_Miscellaneous_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "indingbats"

    const-string v4, "CR_In_Dingbats"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiscellaneousmathematicalsymbolsa"

    const-string v4, "CR_In_Miscellaneous_Mathematical_Symbols_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insupplementalarrowsa"

    const-string v4, "CR_In_Supplemental_Arrows_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbraillepatterns"

    const-string v4, "CR_Braille"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insupplementalarrowsb"

    const-string v4, "CR_In_Supplemental_Arrows_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiscellaneousmathematicalsymbolsb"

    const-string v4, "CR_In_Miscellaneous_Mathematical_Symbols_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insupplementalmathematicaloperators"

    const-string v4, "CR_In_Supplemental_Mathematical_Operators"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiscellaneoussymbolsandarrows"

    const-string v4, "CR_In_Miscellaneous_Symbols_and_Arrows"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inglagolitic"

    const-string v4, "CR_In_Glagolitic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlatinextendedc"

    const-string v4, "CR_In_Latin_Extended_C"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incoptic"

    const-string v4, "CR_In_Coptic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingeorgiansupplement"

    const-string v4, "CR_In_Georgian_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intifinagh"

    const-string v4, "CR_In_Tifinagh"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inethiopicextended"

    const-string v4, "CR_In_Ethiopic_Extended"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incyrillicextendeda"

    const-string v4, "CR_In_Cyrillic_Extended_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insupplementalpunctuation"

    const-string v4, "CR_In_Supplemental_Punctuation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkradicalssupplement"

    const-string v4, "CR_In_CJK_Radicals_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkangxiradicals"

    const-string v4, "CR_In_Kangxi_Radicals"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inideographicdescriptioncharacters"

    const-string v4, "CR_In_Ideographic_Description_Characters"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjksymbolsandpunctuation"

    const-string v4, "CR_In_CJK_Symbols_and_Punctuation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhiragana"

    const-string v4, "CR_In_Hiragana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkatakana"

    const-string v4, "CR_In_Katakana"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbopomofo"

    const-string v4, "CR_In_Bopomofo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhangulcompatibilityjamo"

    const-string v4, "CR_In_Hangul_Compatibility_Jamo"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkanbun"

    const-string v4, "CR_In_Kanbun"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x201

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbopomofoextended"

    const-string v4, "CR_In_Bopomofo_Extended"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x202

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkstrokes"

    const-string v4, "CR_In_CJK_Strokes"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x203

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkatakanaphoneticextensions"

    const-string v4, "CR_In_Katakana_Phonetic_Extensions"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x204

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inenclosedcjklettersandmonths"

    const-string v4, "CR_In_Enclosed_CJK_Letters_and_Months"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x205

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkcompatibility"

    const-string v4, "CR_In_CJK_Compatibility"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x206

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkunifiedideographsextensiona"

    const-string v4, "CR_In_CJK_Unified_Ideographs_Extension_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x207

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inyijinghexagramsymbols"

    const-string v4, "CR_In_Yijing_Hexagram_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x208

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkunifiedideographs"

    const-string v4, "CR_In_CJK_Unified_Ideographs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x209

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inyisyllables"

    const-string v4, "CR_In_Yi_Syllables"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inyiradicals"

    const-string v4, "CR_In_Yi_Radicals"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlisu"

    const-string v4, "CR_Lisu"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "invai"

    const-string v4, "CR_In_Vai"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incyrillicextendedb"

    const-string v4, "CR_In_Cyrillic_Extended_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbamum"

    const-string v4, "CR_In_Bamum"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmodifiertoneletters"

    const-string v4, "CR_In_Modifier_Tone_Letters"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x210

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlatinextendedd"

    const-string v4, "CR_In_Latin_Extended_D"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x211

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insylotinagri"

    const-string v4, "CR_In_Syloti_Nagri"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x212

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incommonindicnumberforms"

    const-string v4, "CR_In_Common_Indic_Number_Forms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x213

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inphagspa"

    const-string v4, "CR_In_Phags_pa"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x214

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insaurashtra"

    const-string v4, "CR_In_Saurashtra"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x215

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "indevanagariextended"

    const-string v4, "CR_In_Devanagari_Extended"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x216

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkayahli"

    const-string v4, "CR_Kayah_Li"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x217

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inrejang"

    const-string v4, "CR_In_Rejang"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x218

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhanguljamoextendeda"

    const-string v4, "CR_In_Hangul_Jamo_Extended_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x219

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "injavanese"

    const-string v4, "CR_In_Javanese"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incham"

    const-string v4, "CR_In_Cham"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmyanmarextendeda"

    const-string v4, "CR_In_Myanmar_Extended_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intaiviet"

    const-string v4, "CR_In_Tai_Viet"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmeeteimayekextensions"

    const-string v4, "CR_In_Meetei_Mayek_Extensions"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inethiopicextendeda"

    const-string v4, "CR_In_Ethiopic_Extended_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmeeteimayek"

    const-string v4, "CR_In_Meetei_Mayek"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x220

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhangulsyllables"

    const-string v4, "CR_In_Hangul_Syllables"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x221

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhanguljamoextendedb"

    const-string v4, "CR_In_Hangul_Jamo_Extended_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x222

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhighsurrogates"

    const-string v4, "CR_In_High_Surrogates"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x223

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhighprivateusesurrogates"

    const-string v4, "CR_In_High_Private_Use_Surrogates"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x224

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlowsurrogates"

    const-string v4, "CR_In_Low_Surrogates"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x225

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inprivateusearea"

    const-string v4, "CR_In_Private_Use_Area"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x226

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkcompatibilityideographs"

    const-string v4, "CR_In_CJK_Compatibility_Ideographs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x227

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inalphabeticpresentationforms"

    const-string v4, "CR_In_Alphabetic_Presentation_Forms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x228

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarabicpresentationformsa"

    const-string v4, "CR_In_Arabic_Presentation_Forms_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x229

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "invariationselectors"

    const-string v4, "CR_In_Variation_Selectors"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inverticalforms"

    const-string v4, "CR_In_Vertical_Forms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incombininghalfmarks"

    const-string v4, "CR_In_Combining_Half_Marks"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkcompatibilityforms"

    const-string v4, "CR_In_CJK_Compatibility_Forms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insmallformvariants"

    const-string v4, "CR_In_Small_Form_Variants"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarabicpresentationformsb"

    const-string v4, "CR_In_Arabic_Presentation_Forms_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inhalfwidthandfullwidthforms"

    const-string v4, "CR_In_Halfwidth_and_Fullwidth_Forms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x230

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inspecials"

    const-string v4, "CR_In_Specials"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x231

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlinearbsyllabary"

    const-string v4, "CR_In_Linear_B_Syllabary"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x232

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlinearbideograms"

    const-string v4, "CR_In_Linear_B_Ideograms"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x233

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inaegeannumbers"

    const-string v4, "CR_In_Aegean_Numbers"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x234

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inancientgreeknumbers"

    const-string v4, "CR_In_Ancient_Greek_Numbers"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x235

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inancientsymbols"

    const-string v4, "CR_In_Ancient_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x236

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inphaistosdisc"

    const-string v4, "CR_In_Phaistos_Disc"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x237

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlycian"

    const-string v4, "CR_In_Lycian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x238

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incarian"

    const-string v4, "CR_In_Carian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x239

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inolditalic"

    const-string v4, "CR_In_Old_Italic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ingothic"

    const-string v4, "CR_In_Gothic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inugaritic"

    const-string v4, "CR_In_Ugaritic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inoldpersian"

    const-string v4, "CR_In_Old_Persian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "indeseret"

    const-string v4, "CR_Deseret"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inshavian"

    const-string v4, "CR_Shavian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inosmanya"

    const-string v4, "CR_In_Osmanya"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x240

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incypriotsyllabary"

    const-string v4, "CR_In_Cypriot_Syllabary"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x241

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inimperialaramaic"

    const-string v4, "CR_In_Imperial_Aramaic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x242

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inphoenician"

    const-string v4, "CR_In_Phoenician"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x243

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inlydian"

    const-string v4, "CR_In_Lydian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x244

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmeroitichieroglyphs"

    const-string v4, "CR_Meroitic_Hieroglyphs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x245

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmeroiticcursive"

    const-string v4, "CR_In_Meroitic_Cursive"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x246

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkharoshthi"

    const-string v4, "CR_In_Kharoshthi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x247

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inoldsoutharabian"

    const-string v4, "CR_Old_South_Arabian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x248

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inavestan"

    const-string v4, "CR_In_Avestan"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x249

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ininscriptionalparthian"

    const-string v4, "CR_In_Inscriptional_Parthian"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "ininscriptionalpahlavi"

    const-string v4, "CR_In_Inscriptional_Pahlavi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inoldturkic"

    const-string v4, "CR_In_Old_Turkic"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inruminumeralsymbols"

    const-string v4, "CR_In_Rumi_Numeral_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbrahmi"

    const-string v4, "CR_In_Brahmi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkaithi"

    const-string v4, "CR_In_Kaithi"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insorasompeng"

    const-string v4, "CR_In_Sora_Sompeng"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x250

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inchakma"

    const-string v4, "CR_In_Chakma"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x251

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insharada"

    const-string v4, "CR_In_Sharada"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x252

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intakri"

    const-string v4, "CR_In_Takri"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x253

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incuneiform"

    const-string v4, "CR_In_Cuneiform"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x254

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incuneiformnumbersandpunctuation"

    const-string v4, "CR_In_Cuneiform_Numbers_and_Punctuation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x255

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inegyptianhieroglyphs"

    const-string v4, "CR_In_Egyptian_Hieroglyphs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x256

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbamumsupplement"

    const-string v4, "CR_In_Bamum_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x257

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiao"

    const-string v4, "CR_In_Miao"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x258

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inkanasupplement"

    const-string v4, "CR_In_Kana_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x259

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inbyzantinemusicalsymbols"

    const-string v4, "CR_In_Byzantine_Musical_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmusicalsymbols"

    const-string v4, "CR_In_Musical_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inancientgreekmusicalnotation"

    const-string v4, "CR_In_Ancient_Greek_Musical_Notation"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intaixuanjingsymbols"

    const-string v4, "CR_In_Tai_Xuan_Jing_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incountingrodnumerals"

    const-string v4, "CR_In_Counting_Rod_Numerals"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmathematicalalphanumericsymbols"

    const-string v4, "CR_In_Mathematical_Alphanumeric_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inarabicmathematicalalphabeticsymbols"

    const-string v4, "CR_In_Arabic_Mathematical_Alphabetic_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x260

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmahjongtiles"

    const-string v4, "CR_In_Mahjong_Tiles"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x261

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "indominotiles"

    const-string v4, "CR_In_Domino_Tiles"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x262

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inplayingcards"

    const-string v4, "CR_In_Playing_Cards"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x263

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inenclosedalphanumericsupplement"

    const-string v4, "CR_In_Enclosed_Alphanumeric_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x264

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inenclosedideographicsupplement"

    const-string v4, "CR_In_Enclosed_Ideographic_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x265

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inmiscellaneoussymbolsandpictographs"

    const-string v4, "CR_In_Miscellaneous_Symbols_And_Pictographs"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x266

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inemoticons"

    const-string v4, "CR_In_Emoticons"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x267

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intransportandmapsymbols"

    const-string v4, "CR_In_Transport_And_Map_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x268

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "inalchemicalsymbols"

    const-string v4, "CR_In_Alchemical_Symbols"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x269

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkunifiedideographsextensionb"

    const-string v4, "CR_In_CJK_Unified_Ideographs_Extension_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkunifiedideographsextensionc"

    const-string v4, "CR_In_CJK_Unified_Ideographs_Extension_C"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkunifiedideographsextensiond"

    const-string v4, "CR_In_CJK_Unified_Ideographs_Extension_D"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "incjkcompatibilityideographssupplement"

    const-string v4, "CR_In_CJK_Compatibility_Ideographs_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "intags"

    const-string v4, "CR_In_Tags"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "invariationselectorssupplement"

    const-string v4, "CR_In_Variation_Selectors_Supplement"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insupplementaryprivateuseareaa"

    const-string v4, "CR_In_Supplementary_Private_Use_Area_A"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x270

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "insupplementaryprivateuseareab"

    const-string v4, "CR_In_Supplementary_Private_Use_Area_B"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x271

    new-instance v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    const-string v3, "innoblock"

    const-string v4, "CR_In_No_Block"

    invoke-direct {v2, v3, v4}, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    check-cast v0, [Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    sput-object v0, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
