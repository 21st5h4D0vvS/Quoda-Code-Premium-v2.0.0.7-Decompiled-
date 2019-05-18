.class Lcom/github/rjeschke/txtmark/HTML;
.super Ljava/lang/Object;


# static fields
.field private static final BLOCK_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

.field private static final ENTITY_CHARS:[C

.field private static final ENTITY_NAMES:[Ljava/lang/String;

.field private static final HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTML_ELEMENTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTML_UNSAFE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINK_PREFIX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINK_PREFIXES:[Ljava/lang/String;

.field private static final UNSAFE_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

.field private static final decodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final encodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v5, 0xfa

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "&Acirc;"

    aput-object v6, v5, v8

    const-string v6, "&acirc;"

    aput-object v6, v5, v9

    const-string v6, "&acute;"

    aput-object v6, v5, v10

    const-string v6, "&AElig;"

    aput-object v6, v5, v11

    const-string v6, "&aelig;"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "&Agrave;"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "&agrave;"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "&alefsym;"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "&Alpha;"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "&alpha;"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "&amp;"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "&and;"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "&ang;"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "&apos;"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "&Aring;"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "&aring;"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "&asymp;"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "&Atilde;"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "&atilde;"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "&Auml;"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "&auml;"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "&bdquo;"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "&Beta;"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "&beta;"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "&brvbar;"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "&bull;"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "&cap;"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "&Ccedil;"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "&ccedil;"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "&cedil;"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "&cent;"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, "&Chi;"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "&chi;"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "&circ;"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "&clubs;"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "&cong;"

    aput-object v7, v5, v6

    const/16 v6, 0x24

    const-string v7, "&copy;"

    aput-object v7, v5, v6

    const/16 v6, 0x25

    const-string v7, "&crarr;"

    aput-object v7, v5, v6

    const/16 v6, 0x26

    const-string v7, "&cup;"

    aput-object v7, v5, v6

    const/16 v6, 0x27

    const-string v7, "&curren;"

    aput-object v7, v5, v6

    const/16 v6, 0x28

    const-string v7, "&Dagger;"

    aput-object v7, v5, v6

    const/16 v6, 0x29

    const-string v7, "&dagger;"

    aput-object v7, v5, v6

    const/16 v6, 0x2a

    const-string v7, "&dArr;"

    aput-object v7, v5, v6

    const/16 v6, 0x2b

    const-string v7, "&darr;"

    aput-object v7, v5, v6

    const/16 v6, 0x2c

    const-string v7, "&deg;"

    aput-object v7, v5, v6

    const/16 v6, 0x2d

    const-string v7, "&Delta;"

    aput-object v7, v5, v6

    const/16 v6, 0x2e

    const-string v7, "&delta;"

    aput-object v7, v5, v6

    const/16 v6, 0x2f

    const-string v7, "&diams;"

    aput-object v7, v5, v6

    const/16 v6, 0x30

    const-string v7, "&divide;"

    aput-object v7, v5, v6

    const/16 v6, 0x31

    const-string v7, "&Eacute;"

    aput-object v7, v5, v6

    const/16 v6, 0x32

    const-string v7, "&eacute;"

    aput-object v7, v5, v6

    const/16 v6, 0x33

    const-string v7, "&Ecirc;"

    aput-object v7, v5, v6

    const/16 v6, 0x34

    const-string v7, "&ecirc;"

    aput-object v7, v5, v6

    const/16 v6, 0x35

    const-string v7, "&Egrave;"

    aput-object v7, v5, v6

    const/16 v6, 0x36

    const-string v7, "&egrave;"

    aput-object v7, v5, v6

    const/16 v6, 0x37

    const-string v7, "&empty;"

    aput-object v7, v5, v6

    const/16 v6, 0x38

    const-string v7, "&emsp;"

    aput-object v7, v5, v6

    const/16 v6, 0x39

    const-string v7, "&ensp;"

    aput-object v7, v5, v6

    const/16 v6, 0x3a

    const-string v7, "&Epsilon;"

    aput-object v7, v5, v6

    const/16 v6, 0x3b

    const-string v7, "&epsilon;"

    aput-object v7, v5, v6

    const/16 v6, 0x3c

    const-string v7, "&equiv;"

    aput-object v7, v5, v6

    const/16 v6, 0x3d

    const-string v7, "&Eta;"

    aput-object v7, v5, v6

    const/16 v6, 0x3e

    const-string v7, "&eta;"

    aput-object v7, v5, v6

    const/16 v6, 0x3f

    const-string v7, "&ETH;"

    aput-object v7, v5, v6

    const/16 v6, 0x40

    const-string v7, "&eth;"

    aput-object v7, v5, v6

    const/16 v6, 0x41

    const-string v7, "&Euml;"

    aput-object v7, v5, v6

    const/16 v6, 0x42

    const-string v7, "&euml;"

    aput-object v7, v5, v6

    const/16 v6, 0x43

    const-string v7, "&euro;"

    aput-object v7, v5, v6

    const/16 v6, 0x44

    const-string v7, "&exist;"

    aput-object v7, v5, v6

    const/16 v6, 0x45

    const-string v7, "&fnof;"

    aput-object v7, v5, v6

    const/16 v6, 0x46

    const-string v7, "&forall;"

    aput-object v7, v5, v6

    const/16 v6, 0x47

    const-string v7, "&frac12;"

    aput-object v7, v5, v6

    const/16 v6, 0x48

    const-string v7, "&frac14;"

    aput-object v7, v5, v6

    const/16 v6, 0x49

    const-string v7, "&frac34;"

    aput-object v7, v5, v6

    const/16 v6, 0x4a

    const-string v7, "&frasl;"

    aput-object v7, v5, v6

    const/16 v6, 0x4b

    const-string v7, "&Gamma;"

    aput-object v7, v5, v6

    const/16 v6, 0x4c

    const-string v7, "&gamma;"

    aput-object v7, v5, v6

    const/16 v6, 0x4d

    const-string v7, "&ge;"

    aput-object v7, v5, v6

    const/16 v6, 0x4e

    const-string v7, "&gt;"

    aput-object v7, v5, v6

    const/16 v6, 0x4f

    const-string v7, "&hArr;"

    aput-object v7, v5, v6

    const/16 v6, 0x50

    const-string v7, "&harr;"

    aput-object v7, v5, v6

    const/16 v6, 0x51

    const-string v7, "&hearts;"

    aput-object v7, v5, v6

    const/16 v6, 0x52

    const-string v7, "&hellip;"

    aput-object v7, v5, v6

    const/16 v6, 0x53

    const-string v7, "&Iacute;"

    aput-object v7, v5, v6

    const/16 v6, 0x54

    const-string v7, "&iacute;"

    aput-object v7, v5, v6

    const/16 v6, 0x55

    const-string v7, "&Icirc;"

    aput-object v7, v5, v6

    const/16 v6, 0x56

    const-string v7, "&icirc;"

    aput-object v7, v5, v6

    const/16 v6, 0x57

    const-string v7, "&iexcl;"

    aput-object v7, v5, v6

    const/16 v6, 0x58

    const-string v7, "&Igrave;"

    aput-object v7, v5, v6

    const/16 v6, 0x59

    const-string v7, "&igrave;"

    aput-object v7, v5, v6

    const/16 v6, 0x5a

    const-string v7, "&image;"

    aput-object v7, v5, v6

    const/16 v6, 0x5b

    const-string v7, "&infin;"

    aput-object v7, v5, v6

    const/16 v6, 0x5c

    const-string v7, "&int;"

    aput-object v7, v5, v6

    const/16 v6, 0x5d

    const-string v7, "&Iota;"

    aput-object v7, v5, v6

    const/16 v6, 0x5e

    const-string v7, "&iota;"

    aput-object v7, v5, v6

    const/16 v6, 0x5f

    const-string v7, "&iquest;"

    aput-object v7, v5, v6

    const/16 v6, 0x60

    const-string v7, "&isin;"

    aput-object v7, v5, v6

    const/16 v6, 0x61

    const-string v7, "&Iuml;"

    aput-object v7, v5, v6

    const/16 v6, 0x62

    const-string v7, "&iuml;"

    aput-object v7, v5, v6

    const/16 v6, 0x63

    const-string v7, "&Kappa;"

    aput-object v7, v5, v6

    const/16 v6, 0x64

    const-string v7, "&kappa;"

    aput-object v7, v5, v6

    const/16 v6, 0x65

    const-string v7, "&Lambda;"

    aput-object v7, v5, v6

    const/16 v6, 0x66

    const-string v7, "&lambda;"

    aput-object v7, v5, v6

    const/16 v6, 0x67

    const-string v7, "&lang;"

    aput-object v7, v5, v6

    const/16 v6, 0x68

    const-string v7, "&laquo;"

    aput-object v7, v5, v6

    const/16 v6, 0x69

    const-string v7, "&lArr;"

    aput-object v7, v5, v6

    const/16 v6, 0x6a

    const-string v7, "&larr;"

    aput-object v7, v5, v6

    const/16 v6, 0x6b

    const-string v7, "&lceil;"

    aput-object v7, v5, v6

    const/16 v6, 0x6c

    const-string v7, "&ldquo;"

    aput-object v7, v5, v6

    const/16 v6, 0x6d

    const-string v7, "&le;"

    aput-object v7, v5, v6

    const/16 v6, 0x6e

    const-string v7, "&lfloor;"

    aput-object v7, v5, v6

    const/16 v6, 0x6f

    const-string v7, "&lowast;"

    aput-object v7, v5, v6

    const/16 v6, 0x70

    const-string v7, "&loz;"

    aput-object v7, v5, v6

    const/16 v6, 0x71

    const-string v7, "&lrm;"

    aput-object v7, v5, v6

    const/16 v6, 0x72

    const-string v7, "&lsaquo;"

    aput-object v7, v5, v6

    const/16 v6, 0x73

    const-string v7, "&lsquo;"

    aput-object v7, v5, v6

    const/16 v6, 0x74

    const-string v7, "&lt;"

    aput-object v7, v5, v6

    const/16 v6, 0x75

    const-string v7, "&macr;"

    aput-object v7, v5, v6

    const/16 v6, 0x76

    const-string v7, "&mdash;"

    aput-object v7, v5, v6

    const/16 v6, 0x77

    const-string v7, "&micro;"

    aput-object v7, v5, v6

    const/16 v6, 0x78

    const-string v7, "&middot;"

    aput-object v7, v5, v6

    const/16 v6, 0x79

    const-string v7, "&minus;"

    aput-object v7, v5, v6

    const/16 v6, 0x7a

    const-string v7, "&Mu;"

    aput-object v7, v5, v6

    const/16 v6, 0x7b

    const-string v7, "&mu;"

    aput-object v7, v5, v6

    const/16 v6, 0x7c

    const-string v7, "&nabla;"

    aput-object v7, v5, v6

    const/16 v6, 0x7d

    const-string v7, "&nbsp;"

    aput-object v7, v5, v6

    const/16 v6, 0x7e

    const-string v7, "&ndash;"

    aput-object v7, v5, v6

    const/16 v6, 0x7f

    const-string v7, "&ne;"

    aput-object v7, v5, v6

    const/16 v6, 0x80

    const-string v7, "&ni;"

    aput-object v7, v5, v6

    const/16 v6, 0x81

    const-string v7, "&not;"

    aput-object v7, v5, v6

    const/16 v6, 0x82

    const-string v7, "&notin;"

    aput-object v7, v5, v6

    const/16 v6, 0x83

    const-string v7, "&nsub;"

    aput-object v7, v5, v6

    const/16 v6, 0x84

    const-string v7, "&Ntilde;"

    aput-object v7, v5, v6

    const/16 v6, 0x85

    const-string v7, "&ntilde;"

    aput-object v7, v5, v6

    const/16 v6, 0x86

    const-string v7, "&Nu;"

    aput-object v7, v5, v6

    const/16 v6, 0x87

    const-string v7, "&nu;"

    aput-object v7, v5, v6

    const/16 v6, 0x88

    const-string v7, "&Oacute;"

    aput-object v7, v5, v6

    const/16 v6, 0x89

    const-string v7, "&oacute;"

    aput-object v7, v5, v6

    const/16 v6, 0x8a

    const-string v7, "&Ocirc;"

    aput-object v7, v5, v6

    const/16 v6, 0x8b

    const-string v7, "&ocirc;"

    aput-object v7, v5, v6

    const/16 v6, 0x8c

    const-string v7, "&OElig;"

    aput-object v7, v5, v6

    const/16 v6, 0x8d

    const-string v7, "&oelig;"

    aput-object v7, v5, v6

    const/16 v6, 0x8e

    const-string v7, "&Ograve;"

    aput-object v7, v5, v6

    const/16 v6, 0x8f

    const-string v7, "&ograve;"

    aput-object v7, v5, v6

    const/16 v6, 0x90

    const-string v7, "&oline;"

    aput-object v7, v5, v6

    const/16 v6, 0x91

    const-string v7, "&Omega;"

    aput-object v7, v5, v6

    const/16 v6, 0x92

    const-string v7, "&omega;"

    aput-object v7, v5, v6

    const/16 v6, 0x93

    const-string v7, "&Omicron;"

    aput-object v7, v5, v6

    const/16 v6, 0x94

    const-string v7, "&omicron;"

    aput-object v7, v5, v6

    const/16 v6, 0x95

    const-string v7, "&oplus;"

    aput-object v7, v5, v6

    const/16 v6, 0x96

    const-string v7, "&or;"

    aput-object v7, v5, v6

    const/16 v6, 0x97

    const-string v7, "&ordf;"

    aput-object v7, v5, v6

    const/16 v6, 0x98

    const-string v7, "&ordm;"

    aput-object v7, v5, v6

    const/16 v6, 0x99

    const-string v7, "&Oslash;"

    aput-object v7, v5, v6

    const/16 v6, 0x9a

    const-string v7, "&oslash;"

    aput-object v7, v5, v6

    const/16 v6, 0x9b

    const-string v7, "&Otilde;"

    aput-object v7, v5, v6

    const/16 v6, 0x9c

    const-string v7, "&otilde;"

    aput-object v7, v5, v6

    const/16 v6, 0x9d

    const-string v7, "&otimes;"

    aput-object v7, v5, v6

    const/16 v6, 0x9e

    const-string v7, "&Ouml;"

    aput-object v7, v5, v6

    const/16 v6, 0x9f

    const-string v7, "&ouml;"

    aput-object v7, v5, v6

    const/16 v6, 0xa0

    const-string v7, "&para;"

    aput-object v7, v5, v6

    const/16 v6, 0xa1

    const-string v7, "&part;"

    aput-object v7, v5, v6

    const/16 v6, 0xa2

    const-string v7, "&permil;"

    aput-object v7, v5, v6

    const/16 v6, 0xa3

    const-string v7, "&perp;"

    aput-object v7, v5, v6

    const/16 v6, 0xa4

    const-string v7, "&Phi;"

    aput-object v7, v5, v6

    const/16 v6, 0xa5

    const-string v7, "&phi;"

    aput-object v7, v5, v6

    const/16 v6, 0xa6

    const-string v7, "&Pi;"

    aput-object v7, v5, v6

    const/16 v6, 0xa7

    const-string v7, "&pi;"

    aput-object v7, v5, v6

    const/16 v6, 0xa8

    const-string v7, "&piv;"

    aput-object v7, v5, v6

    const/16 v6, 0xa9

    const-string v7, "&plusmn;"

    aput-object v7, v5, v6

    const/16 v6, 0xaa

    const-string v7, "&pound;"

    aput-object v7, v5, v6

    const/16 v6, 0xab

    const-string v7, "&Prime;"

    aput-object v7, v5, v6

    const/16 v6, 0xac

    const-string v7, "&prime;"

    aput-object v7, v5, v6

    const/16 v6, 0xad

    const-string v7, "&prod;"

    aput-object v7, v5, v6

    const/16 v6, 0xae

    const-string v7, "&prop;"

    aput-object v7, v5, v6

    const/16 v6, 0xaf

    const-string v7, "&Psi;"

    aput-object v7, v5, v6

    const/16 v6, 0xb0

    const-string v7, "&psi;"

    aput-object v7, v5, v6

    const/16 v6, 0xb1

    const-string v7, "&quot;"

    aput-object v7, v5, v6

    const/16 v6, 0xb2

    const-string v7, "&radic;"

    aput-object v7, v5, v6

    const/16 v6, 0xb3

    const-string v7, "&rang;"

    aput-object v7, v5, v6

    const/16 v6, 0xb4

    const-string v7, "&raquo;"

    aput-object v7, v5, v6

    const/16 v6, 0xb5

    const-string v7, "&rArr;"

    aput-object v7, v5, v6

    const/16 v6, 0xb6

    const-string v7, "&rarr;"

    aput-object v7, v5, v6

    const/16 v6, 0xb7

    const-string v7, "&rceil;"

    aput-object v7, v5, v6

    const/16 v6, 0xb8

    const-string v7, "&rdquo;"

    aput-object v7, v5, v6

    const/16 v6, 0xb9

    const-string v7, "&real;"

    aput-object v7, v5, v6

    const/16 v6, 0xba

    const-string v7, "&reg;"

    aput-object v7, v5, v6

    const/16 v6, 0xbb

    const-string v7, "&rfloor;"

    aput-object v7, v5, v6

    const/16 v6, 0xbc

    const-string v7, "&Rho;"

    aput-object v7, v5, v6

    const/16 v6, 0xbd

    const-string v7, "&rho;"

    aput-object v7, v5, v6

    const/16 v6, 0xbe

    const-string v7, "&rlm;"

    aput-object v7, v5, v6

    const/16 v6, 0xbf

    const-string v7, "&rsaquo;"

    aput-object v7, v5, v6

    const/16 v6, 0xc0

    const-string v7, "&rsquo;"

    aput-object v7, v5, v6

    const/16 v6, 0xc1

    const-string v7, "&sbquo;"

    aput-object v7, v5, v6

    const/16 v6, 0xc2

    const-string v7, "&Scaron;"

    aput-object v7, v5, v6

    const/16 v6, 0xc3

    const-string v7, "&scaron;"

    aput-object v7, v5, v6

    const/16 v6, 0xc4

    const-string v7, "&sdot;"

    aput-object v7, v5, v6

    const/16 v6, 0xc5

    const-string v7, "&sect;"

    aput-object v7, v5, v6

    const/16 v6, 0xc6

    const-string v7, "&shy;"

    aput-object v7, v5, v6

    const/16 v6, 0xc7

    const-string v7, "&Sigma;"

    aput-object v7, v5, v6

    const/16 v6, 0xc8

    const-string v7, "&sigma;"

    aput-object v7, v5, v6

    const/16 v6, 0xc9

    const-string v7, "&sigmaf;"

    aput-object v7, v5, v6

    const/16 v6, 0xca

    const-string v7, "&sim;"

    aput-object v7, v5, v6

    const/16 v6, 0xcb

    const-string v7, "&spades;"

    aput-object v7, v5, v6

    const/16 v6, 0xcc

    const-string v7, "&sub;"

    aput-object v7, v5, v6

    const/16 v6, 0xcd

    const-string v7, "&sube;"

    aput-object v7, v5, v6

    const/16 v6, 0xce

    const-string v7, "&sum;"

    aput-object v7, v5, v6

    const/16 v6, 0xcf

    const-string v7, "&sup;"

    aput-object v7, v5, v6

    const/16 v6, 0xd0

    const-string v7, "&sup1;"

    aput-object v7, v5, v6

    const/16 v6, 0xd1

    const-string v7, "&sup2;"

    aput-object v7, v5, v6

    const/16 v6, 0xd2

    const-string v7, "&sup3;"

    aput-object v7, v5, v6

    const/16 v6, 0xd3

    const-string v7, "&supe;"

    aput-object v7, v5, v6

    const/16 v6, 0xd4

    const-string v7, "&szlig;"

    aput-object v7, v5, v6

    const/16 v6, 0xd5

    const-string v7, "&Tau;"

    aput-object v7, v5, v6

    const/16 v6, 0xd6

    const-string v7, "&tau;"

    aput-object v7, v5, v6

    const/16 v6, 0xd7

    const-string v7, "&there4;"

    aput-object v7, v5, v6

    const/16 v6, 0xd8

    const-string v7, "&Theta;"

    aput-object v7, v5, v6

    const/16 v6, 0xd9

    const-string v7, "&theta;"

    aput-object v7, v5, v6

    const/16 v6, 0xda

    const-string v7, "&thetasym;"

    aput-object v7, v5, v6

    const/16 v6, 0xdb

    const-string v7, "&thinsp;"

    aput-object v7, v5, v6

    const/16 v6, 0xdc

    const-string v7, "&thorn;"

    aput-object v7, v5, v6

    const/16 v6, 0xdd

    const-string v7, "&tilde;"

    aput-object v7, v5, v6

    const/16 v6, 0xde

    const-string v7, "&times;"

    aput-object v7, v5, v6

    const/16 v6, 0xdf

    const-string v7, "&trade;"

    aput-object v7, v5, v6

    const/16 v6, 0xe0

    const-string v7, "&Uacute;"

    aput-object v7, v5, v6

    const/16 v6, 0xe1

    const-string v7, "&uacute;"

    aput-object v7, v5, v6

    const/16 v6, 0xe2

    const-string v7, "&uArr;"

    aput-object v7, v5, v6

    const/16 v6, 0xe3

    const-string v7, "&uarr;"

    aput-object v7, v5, v6

    const/16 v6, 0xe4

    const-string v7, "&Ucirc;"

    aput-object v7, v5, v6

    const/16 v6, 0xe5

    const-string v7, "&ucirc;"

    aput-object v7, v5, v6

    const/16 v6, 0xe6

    const-string v7, "&Ugrave;"

    aput-object v7, v5, v6

    const/16 v6, 0xe7

    const-string v7, "&ugrave;"

    aput-object v7, v5, v6

    const/16 v6, 0xe8

    const-string v7, "&uml;"

    aput-object v7, v5, v6

    const/16 v6, 0xe9

    const-string v7, "&upsih;"

    aput-object v7, v5, v6

    const/16 v6, 0xea

    const-string v7, "&Upsilon;"

    aput-object v7, v5, v6

    const/16 v6, 0xeb

    const-string v7, "&upsilon;"

    aput-object v7, v5, v6

    const/16 v6, 0xec

    const-string v7, "&Uuml;"

    aput-object v7, v5, v6

    const/16 v6, 0xed

    const-string v7, "&uuml;"

    aput-object v7, v5, v6

    const/16 v6, 0xee

    const-string v7, "&weierp;"

    aput-object v7, v5, v6

    const/16 v6, 0xef

    const-string v7, "&Xi;"

    aput-object v7, v5, v6

    const/16 v6, 0xf0

    const-string v7, "&xi;"

    aput-object v7, v5, v6

    const/16 v6, 0xf1

    const-string v7, "&Yacute;"

    aput-object v7, v5, v6

    const/16 v6, 0xf2

    const-string v7, "&yacute;"

    aput-object v7, v5, v6

    const/16 v6, 0xf3

    const-string v7, "&yen;"

    aput-object v7, v5, v6

    const/16 v6, 0xf4

    const-string v7, "&Yuml;"

    aput-object v7, v5, v6

    const/16 v6, 0xf5

    const-string v7, "&yuml;"

    aput-object v7, v5, v6

    const/16 v6, 0xf6

    const-string v7, "&Zeta;"

    aput-object v7, v5, v6

    const/16 v6, 0xf7

    const-string v7, "&zeta;"

    aput-object v7, v5, v6

    const/16 v6, 0xf8

    const-string v7, "&zwj;"

    aput-object v7, v5, v6

    const/16 v6, 0xf9

    const-string v7, "&zwnj;"

    aput-object v7, v5, v6

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    const/4 v13, 0x4

    const/16 v5, 0xfa

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_CHARS:[C

    const/4 v13, 0x2

    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "http"

    aput-object v6, v5, v8

    const-string v6, "https"

    aput-object v6, v5, v9

    const-string v6, "ftp"

    aput-object v6, v5, v10

    const-string v6, "ftps"

    aput-object v6, v5, v11

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIXES:[Ljava/lang/String;

    const/4 v13, 0x4

    const/16 v5, 0x15

    new-array v5, v5, [Lcom/github/rjeschke/txtmark/HTMLElement;

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->address:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v8

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->blockquote:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v9

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->del:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v10

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->div:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v11

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->dl:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->fieldset:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->form:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->h1:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->h2:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->h3:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->h4:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0xb

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->h5:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0xc

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->h6:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0xd

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->hr:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0xe

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->ins:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0xf

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->noscript:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x10

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->ol:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x11

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->p:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x12

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->pre:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x13

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->table:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x14

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->ul:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->BLOCK_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    const/4 v13, 0x6

    const/16 v5, 0x9

    new-array v5, v5, [Lcom/github/rjeschke/txtmark/HTMLElement;

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->applet:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v8

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->head:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v9

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->html:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v10

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->body:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v11

    sget-object v6, Lcom/github/rjeschke/txtmark/HTMLElement;->frame:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->frameset:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->iframe:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->script:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    sget-object v7, Lcom/github/rjeschke/txtmark/HTMLElement;->object:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v7, v5, v6

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->UNSAFE_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    const/4 v13, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->encodeMap:Ljava/util/HashMap;

    const/4 v13, 0x5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->decodeMap:Ljava/util/HashMap;

    const/4 v13, 0x7

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_ELEMENTS:Ljava/util/HashSet;

    const/4 v13, 0x0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_UNSAFE:Ljava/util/HashSet;

    const/4 v13, 0x4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;

    const/4 v13, 0x6

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIX:Ljava/util/HashSet;

    const/4 v13, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/HTMLElement;->values()[Lcom/github/rjeschke/txtmark/HTMLElement;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    const/4 v13, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/HTMLElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v13, 0x3

    const/4 v13, 0x0

    :cond_0
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->UNSAFE_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    const/4 v13, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_UNSAFE:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/HTMLElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v5, 0x2

    const/4 v13, 0x1

    :cond_1
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->BLOCK_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    const/4 v13, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/HTMLElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v4, 0x2

    const/4 v13, 0x2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    const/4 v13, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->encodeMap:Ljava/util/HashMap;

    sget-object v6, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_CHARS:[C

    aget-char v6, v6, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    sget-object v7, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x6

    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->decodeMap:Ljava/util/HashMap;

    sget-object v6, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v2

    sget-object v7, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_CHARS:[C

    aget-char v7, v7, v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    const/4 v4, 0x0

    const/4 v13, 0x1

    :cond_3
    const/4 v2, 0x0

    :goto_4
    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIXES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    const/4 v13, 0x1

    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIX:Ljava/util/HashSet;

    sget-object v6, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIXES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    const/4 v7, 0x2

    const/4 v13, 0x3

    :cond_4
    nop

    return-void

    const/4 v12, 0x2

    const/4 v13, 0x2

    :array_0
    .array-data 2
        0xc2s
        0xe2s
        0xb4s
        0xc6s
        0xe6s
        0xc0s
        0xe0s
        0x2135s
        0x391s
        0x3b1s
        0x26s
        0x2227s
        0x2220s
        0x27s
        0xc5s
        0xe5s
        0x2248s
        0xc3s
        0xe3s
        0xc4s
        0xe4s
        0x201es
        0x392s
        0x3b2s
        0xa6s
        0x2022s
        0x2229s
        0xc7s
        0xe7s
        0xb8s
        0xa2s
        0x3a7s
        0x3c7s
        0x2c6s
        0x2663s
        0x2245s
        0xa9s
        0x21b5s
        0x222as
        0xa4s
        0x2021s
        0x2020s
        0x21d3s
        0x2193s
        0xb0s
        0x394s
        0x3b4s
        0x2666s
        0xf7s
        0xc9s
        0xe9s
        0xcas
        0xeas
        0xc8s
        0xe8s
        0x2205s
        0x2003s
        0x2002s
        0x395s
        0x3b5s
        0x2261s
        0x397s
        0x3b7s
        0xd0s
        0xf0s
        0xcbs
        0xebs
        0x20acs
        0x2203s
        0x192s
        0x2200s
        0xbds
        0xbcs
        0xbes
        0x2044s
        0x393s
        0x3b3s
        0x2265s
        0x3es
        0x21d4s
        0x2194s
        0x2665s
        0x2026s
        0xcds
        0xeds
        0xces
        0xees
        0xa1s
        0xccs
        0xecs
        0x2111s
        0x221es
        0x222bs
        0x399s
        0x3b9s
        0xbfs
        0x2208s
        0xcfs
        0xefs
        0x39as
        0x3bas
        0x39bs
        0x3bbs
        0x2329s
        0xabs
        0x21d0s
        0x2190s
        0x2308s
        0x201cs
        0x2264s
        0x230as
        0x2217s
        0x25cas
        0x200es
        0x2039s
        0x2018s
        0x3cs
        0xafs
        0x2014s
        0xb5s
        0xb7s
        0x2212s
        0x39cs
        0x3bcs
        0x2207s
        0xa0s
        0x2013s
        0x2260s
        0x220bs
        0xacs
        0x2209s
        0x2284s
        0xd1s
        0xf1s
        0x39ds
        0x3bds
        0xd3s
        0xf3s
        0xd4s
        0xf4s
        0x152s
        0x153s
        0xd2s
        0xf2s
        0x203es
        0x3a9s
        0x3c9s
        0x39fs
        0x3bfs
        0x2295s
        0x2228s
        0xaas
        0xbas
        0xd8s
        0xf8s
        0xd5s
        0xf5s
        0x2297s
        0xd6s
        0xf6s
        0xb6s
        0x2202s
        0x2030s
        0x22a5s
        0x3a6s
        0x3c6s
        0x3a0s
        0x3c0s
        0x3d6s
        0xb1s
        0xa3s
        0x2033s
        0x2032s
        0x220fs
        0x221ds
        0x3a8s
        0x3c8s
        0x22s
        0x221as
        0x232as
        0xbbs
        0x21d2s
        0x2192s
        0x2309s
        0x201ds
        0x211cs
        0xaes
        0x230bs
        0x3a1s
        0x3c1s
        0x200fs
        0x203as
        0x2019s
        0x201as
        0x160s
        0x161s
        0x22c5s
        0xa7s
        0xads
        0x3a3s
        0x3c3s
        0x3c2s
        0x223cs
        0x2660s
        0x2282s
        0x2286s
        0x2211s
        0x2283s
        0xb9s
        0xb2s
        0xb3s
        0x2287s
        0xdfs
        0x3a4s
        0x3c4s
        0x2234s
        0x398s
        0x3b8s
        0x3d1s
        0xdes
        0xfes
        0x2dcs
        0xd7s
        0x2122s
        0xdas
        0xfas
        0x21d1s
        0x2191s
        0xdbs
        0xfbs
        0xd9s
        0xf9s
        0xa8s
        0x3d2s
        0x3a5s
        0x3c5s
        0xdcs
        0xfcs
        0x2118s
        0x39es
        0x3bes
        0xdds
        0xfds
        0xa5s
        0x178s
        0xffs
        0x396s
        0x3b6s
        0x200ds
        0x200cs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public static final isEntity(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->decodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const/4 v1, 0x6
.end method

.method public static final isHtmlBlockElement(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const/4 v0, 0x0
.end method

.method public static final isHtmlElement(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const/4 v0, 0x7
.end method

.method public static final isLinkPrefix(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIX:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public static final isUnsafeHtmlElement(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_UNSAFE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const/4 v0, 0x5
.end method
