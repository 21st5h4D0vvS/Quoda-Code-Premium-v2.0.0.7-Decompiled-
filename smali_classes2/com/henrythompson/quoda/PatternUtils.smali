.class public Lcom/henrythompson/quoda/PatternUtils;
.super Ljava/lang/Object;


# static fields
.field private static final GCB_CR:Ljava/lang/String; = "\\u000D"

.field private static final GCB_CRLF:Ljava/lang/String; = "\\u000D\\u000A"

.field private static final GCB_Control:Ljava/lang/String; = "[\\p{Zl}\\p{Zp}\\p{Cc}\\p{Cf}&&[^\\u000D\\u000A\\u200C\\u200D]]"

.field private static final GCB_Extend:Ljava/lang/String; = "[\\p{Mn}\\p{Me}\\u200C\\u200D\\u0488\\u0489\\u20DD\\u20DE\\u20DF\\u20E0\\u20E2\\u20E3\\u20E4\\uA670\\uA671\\uA672\\uFF9E\\uFF9F]"

.field private static final GCB_L:Ljava/lang/String; = "[\\u1100-\\u115F\\uA960-\\uA97C]"

.field private static final GCB_LF:Ljava/lang/String; = "\\u000A"

.field private static final GCB_LV:Ljava/lang/String; = "[\\uAC00\\uAC1C\\uAC38]"

.field private static final GCB_LVT:Ljava/lang/String; = "[\\uAC01\\uAC02\\uAC03\\uAC04]"

.field private static final GCB_Prepend:Ljava/lang/String; = "[\\u0E40\\u0E41\\u0E42\\u0E43\\u0E44\\u0EC0\\u0EC1\\u0EC2\\u0EC3\\u0EC4\\uAAB5\\uAAB6\\uAAB9\\uAABB\\uAABC]"

.field private static final GCB_Spacing_Mark:Ljava/lang/String; = "[\\p{Mc}\\u0E30\\u0E32\\u0E33\\u0E45\\u0EB0\\u0EB2\\u0EB3]"

.field private static final GCB_T:Ljava/lang/String; = "[\\u11A8-\\u11F9\\uD7CB-\\uD7FB]"

.field private static final GCB_V:Ljava/lang/String; = "[\\u1160-\\u11A2\\uD7B0-\\uD7C6]"

.field public static final alphabetic_charclass:Ljava/lang/String; = "[\\pL\\pM\\p{Nl}]"

.field private static final alphabetic_chars:Ljava/lang/String; = "\\pL\\pM\\p{Nl}"

.field public static final apostrophic_charclass:Ljava/lang/String; = "[\\u0027\\u02BC\\u2019]"

.field private static final apostrophic_chars:Ljava/lang/String; = "\\u0027\\u02BC\\u2019"

.field public static final boundary:Ljava/lang/String; = "(?:(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])|(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]))"

.field private static final boundary_after_not_word:Ljava/lang/String; = "(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field private static final boundary_after_word:Ljava/lang/String; = "(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field private static final boundary_before_not_word:Ljava/lang/String; = "(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field private static final boundary_before_word:Ljava/lang/String; = "(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field public static final dash_charclass:Ljava/lang/String; = "[\\u002D\\u058A\\u05BE\\u1400\\u1806\\u2010\\u2011\\u2012\\u2013\\u2014\\u2015\\u2053\\u207B\\u208B\\u2212\\u2E17\\u2E1A\\u301C\\u3030\\u30A0\\uFE31\\uFE32\\uFE58\\uFE63\\uFF0D]"

.field private static final dash_chars:Ljava/lang/String; = "\\u002D\\u058A\\u05BE\\u1400\\u1806\\u2010\\u2011\\u2012\\u2013\\u2014\\u2015\\u2053\\u207B\\u208B\\u2212\\u2E17\\u2E1A\\u301C\\u3030\\u30A0\\uFE31\\uFE32\\uFE58\\uFE63\\uFF0D"

.field public static final digits_charclass:Ljava/lang/String; = "\\p{Nd}"

.field public static final extended_grapheme_cluster:Ljava/lang/String; = "(?:(?:\\u000D\\u000A)|(?:[\\u0E40\\u0E41\\u0E42\\u0E43\\u0E44\\u0EC0\\u0EC1\\u0EC2\\u0EC3\\u0EC4\\uAAB5\\uAAB6\\uAAB9\\uAABB\\uAABC]*(?:[\\u1100-\\u115F\\uA960-\\uA97C]+|([\\u1100-\\u115F\\uA960-\\uA97C]*((?:[[\\u1160-\\u11A2\\uD7B0-\\uD7C6][\\uAC00\\uAC1C\\uAC38]][\\u1160-\\u11A2\\uD7B0-\\uD7C6]*|[\\uAC01\\uAC02\\uAC03\\uAC04])[\\u11A8-\\u11F9\\uD7CB-\\uD7FB]*))|[\\u11A8-\\u11F9\\uD7CB-\\uD7FB]+|[^[\\p{Zl}\\p{Zp}\\p{Cc}\\p{Cf}&&[^\\u000D\\u000A\\u200C\\u200D]]\\u000D\\u000A])[[\\p{Mn}\\p{Me}\\u200C\\u200D\\u0488\\u0489\\u20DD\\u20DE\\u20DF\\u20E0\\u20E2\\u20E3\\u20E4\\uA670\\uA671\\uA672\\uFF9E\\uFF9F][\\p{Mc}\\u0E30\\u0E32\\u0E33\\u0E45\\u0EB0\\u0EB2\\u0EB3]]*)|(?s:.))"

.field public static final follows_word:Ljava/lang/String; = "(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field public static final horizontal_whitespace_charclass:Ljava/lang/String; = "[\\u0009\\u0020\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u202F\\u205F\\u3000]"

.field private static final horizontal_whitespace_chars:Ljava/lang/String; = "\\u0009\\u0020\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u202F\\u205F\\u3000"

.field public static final hyphen_charclass:Ljava/lang/String; = "[\\u002D\\u00AD\\u058A\\u1806\\u2010\\u2011\\u2E17\\u30FB\\uFE63\\uFF0D\\uFF65]"

.field private static final hyphen_chars:Ljava/lang/String; = "\\u002D\\u00AD\\u058A\\u1806\\u2010\\u2011\\u2E17\\u30FB\\uFE63\\uFF0D\\uFF65"

.field public static final identifier_charclass:Ljava/lang/String; = "[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]"

.field private static final identifier_chars:Ljava/lang/String; = "\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]"

.field public static final legacy_grapheme_cluster:Ljava/lang/String; = "(?>\\PM\\pM*)"

.field public static final linebreak:Ljava/lang/String; = "(?:(?>\\u000D\\u000A)|[\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029])"

.field public static final natural_word_charclass:Ljava/lang/String; = "[\\pL\\pM\\p{Nl}\\u0027\\u02BC\\u2019\\u002D\\u058A\\u05BE\\u1400\\u1806\\u2010\\u2011\\u2012\\u2013\\u2014\\u2015\\u2053\\u207B\\u208B\\u2212\\u2E17\\u2E1A\\u301C\\u3030\\u30A0\\uFE31\\uFE32\\uFE58\\uFE63\\uFF0D]"

.field private static final natural_word_chars:Ljava/lang/String; = "\\pL\\pM\\p{Nl}\\u0027\\u02BC\\u2019\\u002D\\u058A\\u05BE\\u1400\\u1806\\u2010\\u2011\\u2012\\u2013\\u2014\\u2015\\u2053\\u207B\\u208B\\u2212\\u2E17\\u2E1A\\u301C\\u3030\\u30A0\\uFE31\\uFE32\\uFE58\\uFE63\\uFF0D"

.field public static final not_alphabetic_charclass:Ljava/lang/String; = "[^\\pL\\pM\\p{Nl}]"

.field public static final not_apostrophic_charclass:Ljava/lang/String; = "[^\\u0027\\u02BC\\u2019]"

.field public static final not_boundary:Ljava/lang/String; = "(?:(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])|(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]))"

.field private static final not_boundary_after_not_word:Ljava/lang/String; = "(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field private static final not_boundary_after_word:Ljava/lang/String; = "(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field private static final not_boundary_before_not_word:Ljava/lang/String; = "(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field private static final not_boundary_before_word:Ljava/lang/String; = "(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field public static final not_dash_charclass:Ljava/lang/String; = "[^\\u002D\\u058A\\u05BE\\u1400\\u1806\\u2010\\u2011\\u2012\\u2013\\u2014\\u2015\\u2053\\u207B\\u208B\\u2212\\u2E17\\u2E1A\\u301C\\u3030\\u30A0\\uFE31\\uFE32\\uFE58\\uFE63\\uFF0D]"

.field public static final not_digits_charclass:Ljava/lang/String; = "\\P{Nd}"

.field public static final not_follows_word:Ljava/lang/String; = "(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field public static final not_horizontal_whitespace_charclass:Ljava/lang/String; = "[^\\u0009\\u0020\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u202F\\u205F\\u3000]"

.field public static final not_hyphen_charclass:Ljava/lang/String; = "[^\\u002D\\u00AD\\u058A\\u1806\\u2010\\u2011\\u2E17\\u30FB\\uFE63\\uFF0D\\uFF65]"

.field public static final not_identifier_charclass:Ljava/lang/String; = "[^\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]"

.field public static final not_natural_word_charclass:Ljava/lang/String; = "[^\\pL\\pM\\p{Nl}\\u0027\\u02BC\\u2019\\u002D\\u058A\\u05BE\\u1400\\u1806\\u2010\\u2011\\u2012\\u2013\\u2014\\u2015\\u2053\\u207B\\u208B\\u2212\\u2E17\\u2E1A\\u301C\\u3030\\u30A0\\uFE31\\uFE32\\uFE58\\uFE63\\uFF0D]"

.field public static final not_precedes_word:Ljava/lang/String; = "(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field public static final not_quotation_mark_charclass:Ljava/lang/String; = "[^\\u0022\\u0027\\u00AB\\u00BB\\u2018\\u2019\\u201A\\u201B\\u201C\\u201D\\u201E\\u201F\\u2039\\u203A\\u300C\\u300D\\u300E\\u300F\\u301D\\u301E\\u301F\\uFE41\\uFE42\\uFE43\\uFE44\\uFF02\\uFF07\\uFF62\\uFF63]"

.field public static final not_vertical_whitespace_charclass:Ljava/lang/String; = "[^\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029]"

.field public static final not_whitespace_charclass:Ljava/lang/String; = "[^\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000]"

.field public static final precedes_word:Ljava/lang/String; = "(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])"

.field public static final quotation_mark_charclass:Ljava/lang/String; = "[\\u0022\\u0027\\u00AB\\u00BB\\u2018\\u2019\\u201A\\u201B\\u201C\\u201D\\u201E\\u201F\\u2039\\u203A\\u300C\\u300D\\u300E\\u300F\\u301D\\u301E\\u301F\\uFE41\\uFE42\\uFE43\\uFE44\\uFF02\\uFF07\\uFF62\\uFF63]"

.field private static final quotation_mark_chars:Ljava/lang/String; = "\\u0022\\u0027\\u00AB\\u00BB\\u2018\\u2019\\u201A\\u201B\\u201C\\u201D\\u201E\\u201F\\u2039\\u203A\\u300C\\u300D\\u300E\\u300F\\u301D\\u301E\\u301F\\uFE41\\uFE42\\uFE43\\uFE44\\uFF02\\uFF07\\uFF62\\uFF63"

.field public static final space_edge_left:Ljava/lang/String; = "(?:(?<=^)|(?<=[\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000]))"

.field public static final space_edge_right:Ljava/lang/String; = "(?=$|[\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000])"

.field public static final vertical_whitespace_charclass:Ljava/lang/String; = "[\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029]"

.field private static final vertical_whitespace_chars:Ljava/lang/String; = "\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029"

.field public static final whitespace_charclass:Ljava/lang/String; = "[\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000]"

.field private static final whitespace_chars:Ljava/lang/String; = "\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private static final die(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final say(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public static final unescape_perl_string(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const v11, 0xffff

    if-le v10, v11, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-nez v7, :cond_2

    const/16 v10, 0x5c

    if-ne v1, v10, :cond_1

    const/4 v7, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v7, 0x4

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    const/4 v4, 0x6

    :cond_2
    const/16 v10, 0x5c

    if-ne v1, v10, :cond_3

    const/4 v7, 0x0

    const-string v10, "\\\\"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    const/4 v13, 0x1

    :cond_3
    sparse-switch v1, :sswitch_data_0

    const/16 v10, 0x5c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    const/4 v1, 0x4

    :sswitch_0
    const/16 v10, 0xd

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v13, 0x6

    :sswitch_1
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v9, 0x0

    :sswitch_2
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v13, 0x2

    :sswitch_3
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v2, 0x6

    :sswitch_4
    const/16 v10, 0x9

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v3, 0x7

    :sswitch_5
    const/4 v10, 0x7

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v7, 0x0

    :sswitch_6
    const/16 v10, 0x1b

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v13, 0x1

    :sswitch_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v2, v10, :cond_4

    const-string v10, "trailing \\c"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const/16 v10, 0x7f

    if-le v1, v10, :cond_5

    const-string v10, "expected ASCII after \\c"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_5
    xor-int/lit8 v10, v1, 0x40

    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v8, 0x2

    :sswitch_8
    const-string v10, "illegal octal digit"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :sswitch_9
    add-int/lit8 v2, v2, -0x1

    :sswitch_a
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v9, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    const/4 v10, 0x2

    if-gt v4, v10, :cond_7

    add-int v10, v2, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_8

    :cond_7
    if-nez v3, :cond_9

    add-int/lit8 v2, v2, -0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    const/4 v0, 0x2

    :cond_8
    add-int v10, v2, v4

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x30

    if-lt v0, v10, :cond_7

    const/16 v10, 0x37

    if-gt v0, v10, :cond_7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    const/4 v2, 0x1

    :cond_9
    const/4 v9, 0x0

    add-int v10, v2, v3

    :try_start_0
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_4
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v3, -0x1

    add-int/2addr v2, v10

    goto/16 :goto_2

    const/4 v9, 0x3

    :catch_0
    move-exception v6

    const-string v10, "invalid octal value for \\0 escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    goto :goto_4

    const/4 v11, 0x0

    :sswitch_b
    add-int/lit8 v10, v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_a

    const-string v10, "string too short for \\x escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_b

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    :cond_b
    const/4 v4, 0x0

    :goto_5
    const/16 v10, 0x8

    if-ge v4, v10, :cond_c

    if-nez v8, :cond_f

    const/4 v10, 0x2

    if-ne v4, v10, :cond_f

    :cond_c
    if-nez v4, :cond_d

    const-string v10, "empty braces in \\x{} escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_d
    const/4 v9, 0x0

    add-int v10, v2, v4

    :try_start_1
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    :goto_6
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    if-eqz v8, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    add-int/lit8 v10, v4, -0x1

    add-int/2addr v2, v10

    goto/16 :goto_2

    const/4 v5, 0x2

    :cond_f
    add-int v10, v2, v4

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x7f

    if-le v0, v10, :cond_10

    const-string v10, "illegal non-ASCII hex digit in \\x escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_10
    if-eqz v8, :cond_11

    const/16 v10, 0x7d

    if-eq v0, v10, :cond_c

    :cond_11
    const/16 v10, 0x30

    if-lt v0, v10, :cond_12

    const/16 v10, 0x39

    if-le v0, v10, :cond_15

    :cond_12
    const/16 v10, 0x61

    if-lt v0, v10, :cond_13

    const/16 v10, 0x66

    if-le v0, v10, :cond_15

    :cond_13
    const/16 v10, 0x41

    if-lt v0, v10, :cond_14

    const/16 v10, 0x46

    if-le v0, v10, :cond_15

    :cond_14
    const-string v10, "illegal hex digit #%d \'%c\' in \\x"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    const/4 v5, 0x1

    :catch_1
    move-exception v6

    const-string v10, "invalid hex value for \\x escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    goto :goto_6

    const/4 v9, 0x2

    :sswitch_c
    add-int/lit8 v10, v2, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_16

    const-string v10, "string too short for \\u escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    :goto_7
    const/4 v10, 0x4

    if-ge v4, v10, :cond_18

    add-int v10, v2, v4

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7f

    if-le v10, v11, :cond_17

    const-string v10, "illegal non-ASCII hex digit in \\u escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    const/4 v8, 0x5

    :cond_18
    const/4 v9, 0x0

    add-int v10, v2, v4

    :try_start_2
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    :goto_8
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v2, v10

    goto/16 :goto_2

    const/4 v7, 0x1

    :catch_2
    move-exception v6

    const-string v10, "invalid hex value for \\u escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    goto :goto_8

    const/4 v2, 0x7

    :sswitch_d
    add-int/lit8 v10, v2, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_19

    const-string v10, "string too short for \\U escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    :goto_9
    const/16 v10, 0x8

    if-ge v4, v10, :cond_1b

    add-int v10, v2, v4

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7f

    if-le v10, v11, :cond_1a

    const-string v10, "illegal non-ASCII hex digit in \\U escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    const/4 v6, 0x3

    :cond_1b
    const/4 v9, 0x0

    add-int v10, v2, v4

    :try_start_3
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    :goto_a
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v2, v10

    goto/16 :goto_2

    const/4 v7, 0x4

    :catch_3
    move-exception v6

    const-string v10, "invalid hex value for \\U escape"

    invoke-static {v10}, Lcom/henrythompson/quoda/PatternUtils;->die(Ljava/lang/String;)V

    goto :goto_a

    const/4 v13, 0x0

    :cond_1c
    if-eqz v7, :cond_1d

    const/16 v10, 0x5c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    const/4 v5, 0x1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_a
        0x31 -> :sswitch_9
        0x32 -> :sswitch_9
        0x33 -> :sswitch_9
        0x34 -> :sswitch_9
        0x35 -> :sswitch_9
        0x36 -> :sswitch_9
        0x37 -> :sswitch_9
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x55 -> :sswitch_d
        0x61 -> :sswitch_5
        0x62 -> :sswitch_3
        0x63 -> :sswitch_7
        0x65 -> :sswitch_6
        0x66 -> :sswitch_2
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
        0x74 -> :sswitch_4
        0x75 -> :sswitch_c
        0x78 -> :sswitch_b
    .end sparse-switch
.end method

.method public static final unicode_charclass(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x6

    const/16 v8, 0x5c

    const/4 v9, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x7

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    const/4 v9, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_0

    const/4 v9, 0x6

    add-int/lit8 v3, v3, 0x64

    const/4 v9, 0x5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x6

    const/4 v9, 0x3

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_6

    const/4 v9, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/4 v9, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_2

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x6

    :cond_2
    if-nez v5, :cond_4

    const/4 v9, 0x0

    if-ne v0, v8, :cond_3

    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v9, 0x4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v9, 0x5

    const/4 v9, 0x4

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v0, 0x0

    const/4 v9, 0x3

    :cond_4
    if-ne v0, v8, :cond_5

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/4 v9, 0x3

    const-string v6, "\\\\"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    const/4 v7, 0x3

    const/4 v9, 0x5

    :cond_5
    sparse-switch v0, :sswitch_data_0

    const/4 v9, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v9, 0x7

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v9, 0x7

    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    const/4 v9, 0x3

    const/4 v9, 0x7

    :sswitch_0
    const-string v6, "(?:(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])|(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]))"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v6, 0x3

    const/4 v9, 0x2

    :sswitch_1
    const-string v6, "(?:(?<=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?=[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])|(?<![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]])(?![\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]))"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v8, 0x4

    const/4 v9, 0x3

    :sswitch_2
    const-string v6, "\\p{Nd}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v1, 0x1

    const/4 v9, 0x7

    :sswitch_3
    const-string v6, "\\P{Nd}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v3, 0x5

    const/4 v9, 0x2

    :sswitch_4
    const-string v6, "[\\u0009\\u0020\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u202F\\u205F\\u3000]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v5, 0x0

    const/4 v9, 0x2

    :sswitch_5
    const-string v6, "[^\\u0009\\u0020\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u202F\\u205F\\u3000]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v9, 0x5

    const/4 v9, 0x6

    :sswitch_6
    const-string v6, "[\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v2, 0x4

    const/4 v9, 0x4

    :sswitch_7
    const-string v6, "[^\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v2, 0x7

    const/4 v9, 0x6

    :sswitch_8
    const-string v6, "(?:(?>\\u000D\\u000A)|[\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029])"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v9, 0x5

    const/4 v9, 0x6

    :sswitch_9
    const-string v6, "[\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v8, 0x1

    const/4 v9, 0x2

    :sswitch_a
    const-string v6, "[^\\u000A\\u000B\\u000C\\u000D\\u0020\\u0085\\u00A0\\u1680\\u180E\\u2000\\u2001\\u2002\\u2003\\u2004\\u2005\\u2006\\u2007\\u2008\\u2009\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v8, 0x0

    const/4 v9, 0x6

    :sswitch_b
    const-string v6, "[\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v8, 0x5

    const/4 v9, 0x5

    :sswitch_c
    const-string v6, "[^\\p{L}\\p{M}\\p{Nd}\\p{Nl}\\p{Pc}[\\p{InEnclosedAlphanumerics}&&\\p{So}]]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v2, 0x6

    const/4 v9, 0x1

    :sswitch_d
    const-string v6, "(?>\\PM\\pM*)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v1, 0x1

    const/4 v9, 0x0

    :sswitch_e
    const-string v6, "(?:(?:\\u000D\\u000A)|(?:[\\u0E40\\u0E41\\u0E42\\u0E43\\u0E44\\u0EC0\\u0EC1\\u0EC2\\u0EC3\\u0EC4\\uAAB5\\uAAB6\\uAAB9\\uAABB\\uAABC]*(?:[\\u1100-\\u115F\\uA960-\\uA97C]+|([\\u1100-\\u115F\\uA960-\\uA97C]*((?:[[\\u1160-\\u11A2\\uD7B0-\\uD7C6][\\uAC00\\uAC1C\\uAC38]][\\u1160-\\u11A2\\uD7B0-\\uD7C6]*|[\\uAC01\\uAC02\\uAC03\\uAC04])[\\u11A8-\\u11F9\\uD7CB-\\uD7FB]*))|[\\u11A8-\\u11F9\\uD7CB-\\uD7FB]+|[^[\\p{Zl}\\p{Zp}\\p{Cc}\\p{Cf}&&[^\\u000D\\u000A\\u200C\\u200D]]\\u000D\\u000A])[[\\p{Mn}\\p{Me}\\u200C\\u200D\\u0488\\u0489\\u20DD\\u20DE\\u20DF\\u20E0\\u20E2\\u20E3\\u20E4\\uA670\\uA671\\uA672\\uFF9E\\uFF9F][\\p{Mc}\\u0E30\\u0E32\\u0E33\\u0E45\\u0EB0\\u0EB2\\u0EB3]]*)|(?s:.))"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    const/4 v5, 0x5

    const/4 v9, 0x3

    :cond_6
    if-eqz v5, :cond_7

    const/4 v9, 0x6

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v9, 0x6

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    const/4 v6, 0x6

    const/4 v9, 0x1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x44 -> :sswitch_3
        0x48 -> :sswitch_5
        0x52 -> :sswitch_8
        0x53 -> :sswitch_a
        0x56 -> :sswitch_7
        0x57 -> :sswitch_c
        0x58 -> :sswitch_e
        0x59 -> :sswitch_d
        0x62 -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_4
        0x73 -> :sswitch_9
        0x76 -> :sswitch_6
        0x77 -> :sswitch_b
    .end sparse-switch
.end method

.method public static final uniplus(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    const-string v2, ""

    const/4 v6, 0x6

    :goto_0
    return-object v2

    const/4 v4, 0x6

    const/4 v6, 0x5

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v6, 0x7

    const-string v2, "U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v6, 0x2

    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    const v3, 0xffff

    if-le v2, v3, :cond_1

    const/4 v6, 0x0

    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x5

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v6, 0x7

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v5, 0x5

    const/4 v6, 0x5

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    const/4 v4, 0x6
.end method
