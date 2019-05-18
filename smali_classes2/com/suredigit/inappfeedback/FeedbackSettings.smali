.class public Lcom/suredigit/inappfeedback/FeedbackSettings;
.super Ljava/lang/Object;
.source "FeedbackSettings.java"


# instance fields
.field private bugLabel:Ljava/lang/String;

.field private cancelButton:Ljava/lang/String;

.field private displayRadioButtons:Z

.field private ideaLabel:Ljava/lang/String;

.field private isModal:Z

.field private questionLabel:Ljava/lang/String;

.field private replyCloseButtonText:Ljava/lang/String;

.field private replyTitle:Ljava/lang/String;

.field private sendButton:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private toast:Ljava/lang/String;

.field private yourComments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "Feedback"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->title:Ljava/lang/String;

    .line 6
    const-string v0, "Message from the Developer"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->replyTitle:Ljava/lang/String;

    .line 7
    const-string v0, "Love it? Hate it? Would you like to suggest a new feature or report a bug? We would love to hear from you: "

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->text:Ljava/lang/String;

    .line 8
    const-string v0, "Thank you!"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->toast:Ljava/lang/String;

    .line 9
    const-string v0, "Send"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->sendButton:Ljava/lang/String;

    .line 10
    const-string v0, "Cancel"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->cancelButton:Ljava/lang/String;

    .line 11
    const-string v0, "Your comments"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->yourComments:Ljava/lang/String;

    .line 12
    const-string v0, "bug"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->bugLabel:Ljava/lang/String;

    .line 13
    const-string v0, "idea"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->ideaLabel:Ljava/lang/String;

    .line 14
    const-string v0, "question"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->questionLabel:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->isModal:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->displayRadioButtons:Z

    .line 17
    const-string v0, "Close"

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->replyCloseButtonText:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getBugLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->bugLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->cancelButton:Ljava/lang/String;

    return-object v0
.end method

.method public getIdeaLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->ideaLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->questionLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCloseButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->replyCloseButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->replyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSendButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->sendButton:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->toast:Ljava/lang/String;

    return-object v0
.end method

.method public getYourComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->yourComments:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableRadio()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->displayRadioButtons:Z

    return v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->isModal:Z

    return v0
.end method

.method public setBugLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "bugLabel"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->bugLabel:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCancelButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelButton"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->cancelButton:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setIdeaLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "ideaLabel"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->ideaLabel:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setModal(Z)V
    .locals 0
    .param p1, "isModal"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->isModal:Z

    .line 101
    return-void
.end method

.method public setQuestionLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "questionLabel"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->questionLabel:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRadioButtons(Z)V
    .locals 0
    .param p1, "enableRadio"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->displayRadioButtons:Z

    .line 109
    return-void
.end method

.method public setReplyCloseButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyCloseButtonText"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->replyCloseButtonText:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setReplyTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyTitle"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->replyTitle:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSendButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendButton"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->sendButton:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->text:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->title:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setToast(Ljava/lang/String;)V
    .locals 0
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->toast:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setYourComments(Ljava/lang/String;)V
    .locals 0
    .param p1, "yourComments"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackSettings;->yourComments:Ljava/lang/String;

    .line 69
    return-void
.end method
