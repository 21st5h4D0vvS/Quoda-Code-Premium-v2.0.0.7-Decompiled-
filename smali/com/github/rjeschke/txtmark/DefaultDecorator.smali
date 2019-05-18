.class public Lcom/github/rjeschke/txtmark/DefaultDecorator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/rjeschke/txtmark/Decorator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public closeBlockquote(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    const-string v0, "</blockquote>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public closeCodeBlock(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    const-string v0, "</code></pre>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public closeCodeSpan(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    const-string v0, "</code>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public closeEmphasis(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    const-string v0, "</em>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public closeHeadline(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    const-string v0, "</h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public closeListItem(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    const-string v0, "</li>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public closeOrderedList(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    const-string v0, "</ol>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public closeParagraph(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    const-string v0, "</p>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public closeStrike(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const-string v0, "</s>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public closeStrong(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    const-string v0, "</strong>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public closeSuper(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    const-string v0, "</sup>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public closeUnorderedList(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    const-string v0, "</ul>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public horizontalRuler(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    const-string v0, "<hr />\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public openBlockquote(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    const-string v0, "<blockquote>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public openCodeBlock(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    const-string v0, "<pre><code>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public openCodeSpan(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    const-string v0, "<code>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public openEmphasis(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    const-string v0, "<em>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public openHeadline(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    const-string v0, "<h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public openImage(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    const-string v0, "<img"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public openLink(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    const-string v0, "<a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public openListItem(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    const-string v0, "<li"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public openOrderedList(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    const-string v0, "<ol>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public openParagraph(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    const-string v0, "<p>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public openStrike(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    const-string v0, "<s>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public openStrong(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    const-string v0, "<strong>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public openSuper(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    const-string v0, "<sup>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public openUnorderedList(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    const-string v0, "<ul>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method
