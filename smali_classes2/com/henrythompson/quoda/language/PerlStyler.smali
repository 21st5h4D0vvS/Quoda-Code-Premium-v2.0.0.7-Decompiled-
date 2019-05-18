.class public Lcom/henrythompson/quoda/language/PerlStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    const-string v0, "perl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v1, 0x0
.end method

.method public parse()V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->getParseEnd()I

    move-result v13

    const-string v20, "(sub)\\s+([-a-zA-Z0-9_]+)\\s*(\\()?"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_0
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v9, 0x6

    :cond_0
    const-string v20, "(package)\\s+(\\S+)[^;]*;"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_1
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v7, 0x4

    :cond_1
    const-string v20, "!|\\||%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|~|(\\b(and|or|xor|as)\\b)"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_2
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v10, 0x7

    :cond_2
    const-string v20, "\\b(ARGV|DATA|ENV|SIG|STDERR|STDIN|STDOUT|atan2|bind|binmode|bless|caller|chdir|chmod|chomp|chop|chown|chr|chroot|close|closedir|cmp|connect|cos|crypt|dbmclose|dbmopen|defined|delete|dump|each|endgrent|endhostent|endnetent|endprotoent|endpwent|endservent|eof|eq|eval|exec|exists|exp|fcntl|fileno|flock|fork|format|formline|ge|getc|getgrent|getgrgid|getgrnam|gethostbyaddr|gethostbyname|gethostent|getlogin|getnetbyaddr|getnetbyname|getnetent|getpeername|getpgrp|getppid|getpriority|getprotobyname|getprotobynumber|getprotoent|getpwent|getpwnam|getpwuid|getservbyname|getservbyport|getservent|getsockname|getsockopt|glob|gmtime|grep|gt|hex|import|index|int|ioctl|join|keys|kill|lc|lcfirst|le|length|link|listen|local|localtime|log|lstat|lt|m|map|mkdir|msgctl|msgget|msgrcv|msgsnd|ne|no|oct|open|opendir|ord|pack|pipe|pop|pos|print|printf|push|q|qq|quotemeta|qw|qx|rand|read|readdir|readlink|recv|ref|rename|reset|reverse|rewinddir|rindex|rmdir|s|scalar|seek|seekdir|semctl|semget|semop|send|setgrent|sethostent|setnetent|setpgrp|setpriority|setprotoent|setpwent|setservent|setsockopt|mShiftPressed|shmctl|shmget|shmread|shmwrite|shutdown|sin|sleep|socket|socketpair|sort|splice|split|sprintf|sqrt|srand|stat|study|substr|symlink|syscall|sysopen|sysread|system|syswrite|tell|telldir|tie|tied|time|times|tr|truncate|uc|ucfirst|umask|undef|unlink|unpack|unshift|untie|utime|values|vec|waitpid|wantarray|warn|write|y|q|qw|qq|qx)\\b"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v14, 0x4

    :cond_3
    const-string v20, "\\b([a-zA-Z_][a-zA-Z0-9_]+)\\s*\\("

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_4
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v14, 0x4

    :cond_4
    const-string v20, "[$@%](#)?[a-zA-Z0-9_]+\\b"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_5
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v6, 0x2

    :cond_5
    const-string v20, "\\b(sub)\\b"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_6
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v3, 0x0

    :cond_6
    const-string v20, "[^\\.](\\b(((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|([^\\w0-9_]\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)([bB][01]+)?)\\b)"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_7
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v7, 0x5

    :cond_7
    const-string v20, "\\b__(FILE|LINE|PACKAGE|SUB|END|DATA|END)__\\b"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_8
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v0, 0x1

    :cond_8
    const-string v20, "\\b(my|our|local|continue|die|do|else|elsif|exit|for|foreach|goto|if|last|next|redo|return|select|unless|until|wait|while|switch|case|require|use|eval)\\b"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_9
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v2, 0x4

    :cond_9
    const-string v20, "^=.+?^=cut\\b"

    const/16 v21, 0x28

    invoke-static/range {v20 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_a
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v7, 0x7

    :cond_a
    const/4 v15, 0x0

    :cond_b
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v13, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x23

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x24

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x25

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v6

    if-gez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v15, 0x0

    goto/16 :goto_b

    const/4 v6, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const-string v21, "\n="

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x6

    if-gez v17, :cond_10

    const/16 v17, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const-string v21, "\n=cut"

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v15, 0x0

    :cond_12
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_b

    const/4 v9, 0x2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x71

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x72

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x77

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x78

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    :cond_14
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x3

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x71

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    add-int/lit8 v17, v17, -0x1

    :cond_15
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v20

    if-nez v20, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_16

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_17

    const/16 v19, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_e
    const/4 v15, 0x0

    goto/16 :goto_c

    const/4 v10, 0x6

    :cond_17
    if-nez v9, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_18

    const/4 v9, 0x1

    goto :goto_d

    const/4 v10, 0x1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_16

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_d

    const/4 v1, 0x7

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_e

    const/4 v5, 0x6

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x27

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_21

    const/16 v19, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x71

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x72

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x77

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x78

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    :cond_1b
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x3

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x71

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    add-int/lit8 v17, v17, -0x1

    :cond_1c
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v20

    if-nez v20, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_1d

    if-nez v9, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x27

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/16 v19, 0x0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_10
    const/4 v15, 0x0

    goto/16 :goto_c

    const/4 v12, 0x3

    :cond_1e
    if-nez v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_1f

    const/4 v9, 0x1

    goto :goto_f

    const/4 v10, 0x4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_1d

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_f

    const/4 v13, 0x6

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_10

    const/4 v1, 0x3

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x60

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_28

    const/16 v19, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x71

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x72

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x77

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x78

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_22
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, -0x3

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x71

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    add-int/lit8 v17, v17, -0x1

    :cond_23
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v20

    if-nez v20, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_24

    if-nez v9, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x60

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v19, 0x0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    if-nez v19, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_12
    const/4 v15, 0x0

    goto/16 :goto_c

    const/4 v8, 0x0

    :cond_25
    if-nez v9, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_26

    const/4 v9, 0x1

    goto :goto_11

    const/4 v0, 0x7

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v20

    if-nez v20, :cond_24

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_11

    const/4 v0, 0x1

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_12

    const/4 v10, 0x5

    :cond_28
    if-eqz v15, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v21

    sub-int v8, v20, v21

    const/4 v10, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/language/PerlStyler;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_2c

    if-ge v10, v8, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x5c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a

    add-int/lit8 v10, v10, 0x1

    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    const/4 v1, 0x4

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0x2f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    add-int/lit8 v21, v10, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/16 v16, 0x0

    :goto_14
    const/16 v20, 0x8

    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x65

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x69

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x6d

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x6e

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x6f

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x73

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x75

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x78

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-nez v20, :cond_2d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :cond_2c
    :goto_15
    const/4 v15, 0x0

    goto/16 :goto_c

    const/4 v12, 0x4

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_14

    const/4 v11, 0x4

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    goto :goto_15

    const/4 v6, 0x3

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    const/16 v21, 0x71

    invoke-virtual/range {v20 .. v21}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v20

    add-int/lit8 v17, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v4

    const/16 v20, 0x71

    move/from16 v0, v20

    if-eq v4, v0, :cond_30

    const/16 v20, 0x77

    move/from16 v0, v20

    if-eq v4, v0, :cond_30

    const/16 v20, 0x72

    move/from16 v0, v20

    if-eq v4, v0, :cond_30

    const/16 v20, 0x78

    move/from16 v0, v20

    if-ne v4, v0, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v4

    const/16 v20, 0x22

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    const/16 v20, 0x27

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v20

    if-nez v20, :cond_b

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-nez v20, :cond_b

    move/from16 v18, v4

    const/4 v11, 0x0

    const/16 v20, 0x28

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_34

    const/16 v7, 0x29

    const/4 v11, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v5, 0x1

    :cond_32
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v20

    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_38

    if-eqz v11, :cond_33

    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_32

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/henrythompson/quoda/language/PerlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v15, 0x0

    goto/16 :goto_c

    const/4 v13, 0x7

    :cond_34
    const/16 v20, 0x7b

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_35

    const/16 v7, 0x7d

    const/4 v11, 0x1

    goto :goto_16

    const/4 v13, 0x1

    :cond_35
    const/16 v20, 0x5b

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_36

    const/16 v7, 0x5d

    const/4 v11, 0x1

    goto :goto_16

    const/4 v0, 0x5

    :cond_36
    const/16 v20, 0x3c

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_37

    const/16 v7, 0x3e

    const/4 v11, 0x1

    goto :goto_16

    const/4 v9, 0x2

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v7

    goto/16 :goto_16

    const/4 v14, 0x6

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v20

    if-eqz v20, :cond_39

    if-eqz v11, :cond_32

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    const/4 v0, 0x1

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_17

    const/4 v3, 0x4

    :cond_3a
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x7c

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x7b

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x28

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x3d

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x5b

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x26

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x3a

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x3f

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v4, v0, :cond_3b

    const/16 v20, 0x7e

    move/from16 v0, v20

    if-ne v4, v0, :cond_3c

    :cond_3b
    const/4 v15, 0x1

    goto/16 :goto_c

    const/4 v11, 0x3

    :cond_3c
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-nez v20, :cond_12

    const/4 v15, 0x0

    goto/16 :goto_c

    const/4 v0, 0x1

    :cond_3d
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/language/PerlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    nop

    return-void

    const/4 v10, 0x3
.end method
