.class public Lcom/kingsoft/emailcommon/utility/SnippetUtility;
.super Ljava/lang/Object;
.source "SnippetUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    }
.end annotation


# static fields
.field public static final MAX_LENGTH:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static makeSnippetFromHtmlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/content/Context;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    .locals 12
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/StringBuffer;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x7d0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 28
    new-instance v1, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    invoke-direct {v1}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;-><init>()V

    .line 29
    .local v1, "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const v8, 0x249f0

    if-le v7, v8, :cond_0

    .line 30
    invoke-static {p2}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "snippet":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setSnippet(Ljava/lang/String;)V

    .line 32
    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setNoQuoteText(Ljava/lang/StringBuffer;)V

    .line 33
    const-wide/16 v7, -0x1

    invoke-virtual {v1, v7, v8}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setQuoteIdx(J)V

    .line 34
    invoke-virtual {v1, v9}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setBodyCalc(Z)V

    .line 63
    :goto_0
    return-object v1

    .line 36
    .end local v6    # "snippet":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/ui/SubjectMergeInfo;->findRawSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "rawSubject":Ljava/lang/String;
    new-instance v3, Lcom/kingsoft/mail/chat/QuoteParser;

    invoke-direct {v3, p2, p3}, Lcom/kingsoft/mail/chat/QuoteParser;-><init>(Ljava/lang/StringBuffer;Landroid/content/Context;)V

    .line 38
    .local v3, "quoteParser":Lcom/kingsoft/mail/chat/QuoteParser;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/QuoteParser;->getBodyWithoutQuoteText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "preBodytext":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setNoQuoteText(Ljava/lang/StringBuffer;)V

    .line 41
    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/QuoteParser;->getBodyNodesIndex()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setQuoteIdx(J)V

    .line 43
    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/QuoteParser;->getHrPositionInText()I

    move-result v5

    .line 44
    .local v5, "signIndex":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 45
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getInstance()Lcom/kingsoft/mail/chat/ChatSignatureParser;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getInstance()Lcom/kingsoft/mail/chat/ChatSignatureParser;

    move-result-object v7

    new-instance v8, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;

    invoke-direct {v8, p0, v4, v2}, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->parser(Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 50
    .local v0, "bodytext":Ljava/lang/StringBuffer;
    :goto_1
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatBetterText;->getInstance()Lcom/kingsoft/mail/chat/ChatBetterText;

    move-result-object v7

    invoke-static {p3}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/chat/ChatBetterText;->init(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v11, :cond_2

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v0, v11, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 58
    :cond_2
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatBetterText;->getInstance()Lcom/kingsoft/mail/chat/ChatBetterText;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .restart local v6    # "snippet":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatBetterText;->getInstance()Lcom/kingsoft/mail/chat/ChatBetterText;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Lcom/kingsoft/mail/chat/ChatBetterText;->getBetterBodytext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v1, v6}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setSnippet(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v10}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setBodyCalc(Z)V

    goto :goto_0

    .line 48
    .end local v0    # "bodytext":Ljava/lang/StringBuffer;
    .end local v6    # "snippet":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0    # "bodytext":Ljava/lang/StringBuffer;
    :goto_2
    goto :goto_1

    .end local v0    # "bodytext":Ljava/lang/StringBuffer;
    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public static makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    .locals 4
    .param p0, "text"    # Ljava/lang/StringBuffer;

    .prologue
    .line 17
    new-instance v0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;-><init>()V

    .line 18
    .local v0, "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    invoke-static {p0}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "snippet":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setSnippet(Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setNoQuoteText(Ljava/lang/StringBuffer;)V

    .line 21
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setQuoteIdx(J)V

    .line 22
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->setBodyCalc(Z)V

    .line 23
    return-object v0
.end method
