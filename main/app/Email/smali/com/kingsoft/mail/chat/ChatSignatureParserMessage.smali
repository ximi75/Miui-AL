.class public Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;
.super Ljava/lang/Object;
.source "ChatSignatureParserMessage.java"


# instance fields
.field private mBodyText:Ljava/lang/StringBuffer;

.field private mRawSubject:Ljava/lang/String;

.field private mSender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "rawSubject"    # Ljava/lang/String;
    .param p3, "bodyText"    # Ljava/lang/StringBuffer;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mSender:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mBodyText:Ljava/lang/StringBuffer;

    .line 14
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mRawSubject:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getBodyText()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mBodyText:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getRawSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mRawSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->mSender:Ljava/lang/String;

    .line 23
    return-void
.end method
