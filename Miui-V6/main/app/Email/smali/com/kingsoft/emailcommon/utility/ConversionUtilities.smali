.class public Lcom/kingsoft/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    }
.end annotation


# static fields
.field public static final BODY_QUOTED_PART_FORWARD:Ljava/lang/String; = "quoted-forward"

.field public static final BODY_QUOTED_PART_INTRO:Ljava/lang/String; = "quoted-intro"

.field public static final BODY_QUOTED_PART_REPLY:Ljava/lang/String; = "quoted-reply"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-object p0

    .line 51
    :cond_0
    if-nez p0, :cond_1

    .line 52
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 55
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static parseBodyFields(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .locals 22
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "accountKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;

    invoke-direct {v5}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;-><init>()V

    .line 88
    .local v5, "data":Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    const/4 v12, 0x0

    .line 89
    .local v12, "sbHtml":Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 90
    .local v15, "sbText":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 91
    .local v13, "sbHtmlReply":Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 92
    .local v16, "sbTextReply":Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 94
    .local v14, "sbIntroText":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/kingsoft/emailcommon/mail/Part;

    .line 95
    .local v19, "viewable":Lcom/kingsoft/emailcommon/mail/Part;
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/kingsoft/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v18

    .line 96
    .local v18, "text":Ljava/lang/String;
    const-string/jumbo v20, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, "replyTags":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 98
    .local v10, "replyTag":Ljava/lang/String;
    if-eqz v11, :cond_1

    array-length v0, v11

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 99
    const/16 v20, 0x0

    aget-object v10, v11, v20

    .line 102
    :cond_1
    const-string/jumbo v20, "text/html"

    invoke-interface/range {v19 .. v19}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 104
    .local v7, "isHtml":Z
    if-eqz v10, :cond_5

    .line 105
    const-string/jumbo v20, "quoted-reply"

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    .line 106
    const-string/jumbo v20, "quoted-forward"

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    .line 107
    const-string/jumbo v20, "quoted-intro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 109
    .local v8, "isQuotedIntro":Z
    iget-boolean v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    iget-boolean v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 110
    :cond_2
    if-eqz v7, :cond_3

    .line 111
    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_0

    .line 113
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    if-eqz v8, :cond_5

    .line 118
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 119
    goto :goto_0

    .line 124
    .end local v8    # "isQuotedIntro":Z
    :cond_5
    invoke-interface/range {v19 .. v19}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "contentType":Ljava/lang/String;
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "name":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 127
    invoke-interface/range {v19 .. v19}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v20, "filename"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .end local v3    # "contentDisposition":Ljava/lang/String;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 132
    if-eqz v7, :cond_7

    .line 133
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto/16 :goto_0

    .line 135
    :cond_7
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    goto/16 :goto_0

    .line 142
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v7    # "isHtml":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "replyTag":Ljava/lang/String;
    .end local v11    # "replyTags":[Ljava/lang/String;
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "viewable":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_8
    const/16 v17, 0x0

    .line 143
    .local v17, "snippetInfo":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 144
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromHtmlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/content/Context;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v17

    .line 145
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    .line 154
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getSnippet()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    .line 155
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getNoQuoteText()Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->shortBody:Ljava/lang/String;

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getQuoteIdx()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->quoteIndex:J

    .line 157
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getBodyCalc()Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isBodyCalc:Z

    .line 159
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-eqz v20, :cond_9

    .line 160
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlReply:Ljava/lang/String;

    .line 162
    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-eqz v20, :cond_a

    .line 163
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->textReply:Ljava/lang/String;

    .line 165
    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-eqz v20, :cond_b

    .line 166
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->introText:Ljava/lang/String;

    .line 168
    :cond_b
    return-object v5

    .line 146
    :cond_c
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 147
    invoke-static {v15}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v17

    .line 148
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_d
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    .line 151
    new-instance v20, Ljava/lang/StringBuffer;

    iget-object v0, v5, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v17

    goto :goto_1
.end method
