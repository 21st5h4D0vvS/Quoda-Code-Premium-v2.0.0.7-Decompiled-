.class public Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ProfessionInfo.java"


# static fields
.field public static final Notar:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Notariatsverwalter:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Notariatsverwalterin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Notarin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Notarvertreter:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Notarvertreterin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Patentanwalt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Patentanwltin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Rechtsanwalt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Rechtsanwltin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Rechtsbeistand:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Steuerberater:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Steuerberaterin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Steuerbevollmchtigte:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Steuerbevollmchtigter:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final VereidigteBuchprferin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final VereidigterBuchprfer:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Wirtschaftsprfer:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final Wirtschaftsprferin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

.field private namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

.field private professionItems:Lorg/spongycastle/asn1/ASN1Sequence;

.field private professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

.field private registrationNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Rechtsanwltin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Rechtsanwalt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Rechtsbeistand:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Steuerberaterin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Steuerberater:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Steuerbevollmchtigte:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Steuerbevollmchtigter:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Notarin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Notar:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Notarvertreterin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Notarvertreter:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Notariatsverwalterin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 114
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".13"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Notariatsverwalter:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Wirtschaftsprferin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Wirtschaftsprfer:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".16"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->VereidigteBuchprferin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".17"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->VereidigterBuchprfer:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 144
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Patentanwltin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 150
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".19"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->Patentanwalt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 198
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 200
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 206
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 208
    .local v1, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 210
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .restart local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_1
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    .line 216
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 219
    .restart local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionItems:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 221
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 224
    .restart local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_6

    .line 226
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 242
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 245
    .restart local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/spongycastle/asn1/DERPrintableString;

    if-eqz v2, :cond_9

    .line 247
    invoke-static {v1}, Lorg/spongycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERPrintableString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->registrationNumber:Ljava/lang/String;

    .line 259
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 261
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 262
    .restart local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/spongycastle/asn1/DEROctetString;

    if-eqz v2, :cond_b

    move-object v2, v1

    .line 264
    check-cast v2, Lorg/spongycastle/asn1/DEROctetString;

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 273
    :cond_5
    return-void

    .line 228
    :cond_6
    instance-of v2, v1, Lorg/spongycastle/asn1/DERPrintableString;

    if-eqz v2, :cond_7

    .line 230
    invoke-static {v1}, Lorg/spongycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERPrintableString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->registrationNumber:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_7
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v2, :cond_8

    .line 234
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 238
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad object encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_9
    instance-of v2, v1, Lorg/spongycastle/asn1/DEROctetString;

    if-eqz v2, :cond_a

    move-object v2, v1

    .line 251
    check-cast v2, Lorg/spongycastle/asn1/DEROctetString;

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_1

    .line 255
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad object encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad object encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;[Lorg/spongycastle/asn1/x500/DirectoryString;[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 3
    .param p1, "namingAuthority"    # Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;
    .param p2, "professionItems"    # [Lorg/spongycastle/asn1/x500/DirectoryString;
    .param p3, "professionOIDs"    # [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p4, "registrationNumber"    # Ljava/lang/String;
    .param p5, "addProfessionInfo"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 291
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 292
    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    .line 293
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 294
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-eq v0, v2, :cond_0

    .line 296
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionItems:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 299
    if-eqz p3, :cond_2

    .line 301
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v1    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 302
    .restart local v1    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-eq v0, v2, :cond_1

    .line 304
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 308
    :cond_2
    iput-object p4, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->registrationNumber:Ljava/lang/String;

    .line 309
    iput-object p5, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 310
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 165
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;

    .line 172
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 170
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 175
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddProfessionInfo()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getNamingAuthority()Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    return-object v0
.end method

.method public getProfessionItems()[Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 5

    .prologue
    .line 374
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionItems:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 375
    .local v3, "items":[Lorg/spongycastle/asn1/x500/DirectoryString;
    const/4 v0, 0x0

    .line 376
    .local v0, "count":I
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionItems:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 380
    :cond_0
    return-object v3
.end method

.method public getProfessionOIDs()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 5

    .prologue
    .line 388
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v4, :cond_1

    .line 390
    const/4 v4, 0x0

    new-array v3, v4, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 398
    :cond_0
    return-object v3

    .line 392
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 393
    .local v3, "oids":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    .line 394
    .local v0, "count":I
    iget-object v4, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0
.end method

.method public getRegistrationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->registrationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 332
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 333
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionItems:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 338
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->professionOIDs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 342
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->registrationNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 344
    new-instance v1, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->registrationNumber:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 346
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProfessionInfo;->addProfessionInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 350
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
