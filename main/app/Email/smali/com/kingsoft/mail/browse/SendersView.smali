.class public Lcom/kingsoft/mail/browse/SendersView;
.super Ljava/lang/Object;
.source "SendersView.java"


# static fields
.field public static final DEFAULT_FORMATTING:I = 0x0

.field private static final DOES_NOT_EXIST:Ljava/lang/Integer;

.field private static final MAX_PRIORITY_LENGTH_MAP_LIST:I = 0x2

.field public static final MERGED_FORMATTING:I = 0x1

.field private static final PRIORITY_LENGTH_MAP_CACHE:Lcom/kingsoft/mail/utils/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/utils/ObjectCache",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static SENDERS_VERSION_SEPARATOR:Ljava/lang/String;

.field public static SENDERS_VERSION_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static mContext:Landroid/content/Context;

.field private static sBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field private static sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private static sDraftCountFormatString:Ljava/lang/String;

.field private static sDraftPluralString:Ljava/lang/CharSequence;

.field private static sDraftSingularString:Ljava/lang/CharSequence;

.field private static sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

.field public static sElidedString:Ljava/lang/CharSequence;

.field private static sMeString:Ljava/lang/String;

.field private static sMeStringLocale:Ljava/util/Locale;

.field private static sMessageCountSpacerString:Ljava/lang/String;

.field private static sMessageInfoReadStyleSpan:Landroid/text/style/TextAppearanceSpan;

.field private static sMessageInfoUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

.field private static sReadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sSendersSplitToken:Ljava/lang/String;

.field private static sSendingString:Ljava/lang/CharSequence;

.field private static sSendingStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->DOES_NOT_EXIST:Ljava/lang/Integer;

    .line 60
    const-string/jumbo v0, "^**^"

    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->SENDERS_VERSION_SEPARATOR:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "\\^\\*\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->SENDERS_VERSION_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Lcom/kingsoft/mail/utils/ObjectCache;

    new-instance v1, Lcom/kingsoft/mail/browse/SendersView$1;

    invoke-direct {v1}, Lcom/kingsoft/mail/browse/SendersView$1;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/utils/ObjectCache;-><init>(Lcom/kingsoft/mail/utils/ObjectCache$Callback;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->PRIORITY_LENGTH_MAP_CACHE:Lcom/kingsoft/mail/utils/ObjectCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    sput-object p0, Lcom/kingsoft/mail/browse/SendersView;->sDraftSingularString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    return-void
.end method

.method private static clearResourceCache()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->sDraftSingularString:Ljava/lang/CharSequence;

    .line 593
    return-void
.end method

.method public static createMessageInfo(Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Z)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "resourceCachingRequired"    # Z

    .prologue
    .line 214
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 217
    .local v9, "messageInfo":Landroid/text/SpannableStringBuilder;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 218
    .local v2, "conversationInfo":Lcom/kingsoft/mail/providers/ConversationInfo;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    .line 219
    .local v11, "sendingStatus":I
    const/4 v6, 0x0

    .line 222
    .local v6, "hasSenders":Z
    iget-object v13, v2, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 223
    .local v8, "m":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v13, v8, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 224
    const/4 v6, 0x1

    .line 228
    .end local v8    # "m":Lcom/kingsoft/mail/providers/MessageInfo;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    .line 229
    if-eqz v2, :cond_b

    .line 230
    iget v3, v2, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    .line 231
    .local v3, "count":I
    iget v4, v2, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    .line 232
    .local v4, "draftCount":I
    const/4 v13, 0x2

    if-ne v11, v13, :cond_d

    const/4 v12, 0x1

    .line 233
    .local v12, "showSending":Z
    :goto_0
    const/4 v13, 0x1

    if-le v3, v13, :cond_2

    .line 234
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v13, :cond_e

    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sMessageInfoReadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    :goto_1
    invoke-static {v13}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 239
    if-lez v4, :cond_5

    .line 243
    if-nez v6, :cond_3

    const/4 v13, 0x1

    if-le v3, v13, :cond_4

    .line 244
    :cond_3
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sSendersSplitToken:Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 246
    :cond_4
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 247
    .local v5, "draftString":Landroid/text/SpannableStringBuilder;
    const/4 v13, 0x1

    if-ne v4, v13, :cond_f

    .line 248
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sDraftSingularString:Ljava/lang/CharSequence;

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 253
    :goto_2
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-static {v13}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 255
    invoke-virtual {v9, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 257
    .end local v5    # "draftString":Landroid/text/SpannableStringBuilder;
    :cond_5
    if-eqz v12, :cond_8

    .line 260
    const/4 v13, 0x1

    if-gt v3, v13, :cond_6

    if-lez v4, :cond_7

    .line 261
    :cond_6
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sSendersSplitToken:Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    :cond_7
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 264
    .local v10, "sending":Landroid/text/SpannableStringBuilder;
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sSendingString:Ljava/lang/CharSequence;

    invoke-virtual {v10, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 265
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sSendingStyleSpan:Landroid/text/style/CharacterStyle;

    const/4 v14, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 266
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 269
    .end local v10    # "sending":Landroid/text/SpannableStringBuilder;
    :cond_8
    const/4 v13, 0x1

    if-gt v3, v13, :cond_a

    if-lez v4, :cond_9

    if-nez v6, :cond_a

    :cond_9
    if-eqz v12, :cond_b

    .line 270
    :cond_a
    const/4 v13, 0x0

    sget-object v14, Lcom/kingsoft/mail/browse/SendersView;->sMessageCountSpacerString:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v3    # "count":I
    .end local v4    # "draftCount":I
    .end local v12    # "showSending":Z
    :cond_b
    if-nez p2, :cond_c

    .line 275
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 279
    :cond_c
    return-object v9

    .line 232
    .restart local v3    # "count":I
    .restart local v4    # "draftCount":I
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v12    # "showSending":Z
    :cond_e
    :try_start_1
    sget-object v13, Lcom/kingsoft/mail/browse/SendersView;->sMessageInfoUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    goto :goto_1

    .line 250
    .restart local v5    # "draftString":Landroid/text/SpannableStringBuilder;
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/kingsoft/mail/browse/SendersView;->sDraftPluralString:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/kingsoft/mail/browse/SendersView;->sDraftCountFormatString:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 274
    .end local v2    # "conversationInfo":Lcom/kingsoft/mail/providers/ConversationInfo;
    .end local v3    # "count":I
    .end local v4    # "draftCount":I
    .end local v5    # "draftString":Landroid/text/SpannableStringBuilder;
    .end local v6    # "hasSenders":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "sendingStatus":I
    .end local v12    # "showSending":Z
    :catchall_0
    move-exception v13

    if-nez p2, :cond_10

    .line 275
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_10
    throw v13
.end method

.method public static format(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p2, "messageInfo"    # Ljava/lang/String;
    .param p3, "maxChars"    # I
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "notificationUnreadStyleSpan"    # Landroid/text/style/TextAppearanceSpan;
    .param p9, "notificationReadStyleSpan"    # Landroid/text/style/CharacterStyle;
    .param p10, "resourceCachingRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/style/TextAppearanceSpan;",
            "Landroid/text/style/CharacterStyle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p4, "styledSenders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableSenderNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableSenderEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move/from16 v0, p10

    invoke-static {p0, v0}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 305
    invoke-static/range {v1 .. v10}, Lcom/kingsoft/mail/browse/SendersView;->handlePriority(Landroid/content/Context;ILjava/lang/String;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    if-nez p10, :cond_0

    .line 310
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 313
    :cond_0
    return-void

    .line 309
    :catchall_0
    move-exception v1

    if-nez p10, :cond_1

    .line 310
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_1
    throw v1
.end method

.method public static format(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p2, "messageInfo"    # Ljava/lang/String;
    .param p3, "maxChars"    # I
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "resourceCachingRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p4, "styledSenders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableSenderNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableSenderEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move/from16 v0, p8

    invoke-static {p0, v0}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    .line 288
    sget-object v9, Lcom/kingsoft/mail/browse/SendersView;->sUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    sget-object v10, Lcom/kingsoft/mail/browse/SendersView;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lcom/kingsoft/mail/browse/SendersView;->format(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    if-nez p8, :cond_0

    .line 293
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 296
    :cond_0
    return-void

    .line 292
    :catchall_0
    move-exception v1

    if-nez p8, :cond_1

    .line 293
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_1
    throw v1
.end method

.method public static format4MergeSenders(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p2, "messageInfo"    # Ljava/lang/String;
    .param p3, "maxChars"    # I
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "resourceCachingRequired"    # Z
    .param p9, "accountEmail"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    .local p4, "styledReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableReceiverNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableReceiverEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move/from16 v0, p8

    invoke-static {p0, v0}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    .line 462
    sget-object v9, Lcom/kingsoft/mail/browse/SendersView;->sUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    sget-object v10, Lcom/kingsoft/mail/browse/SendersView;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/kingsoft/mail/browse/SendersView;->handleSendersWithoutPriority(Landroid/content/Context;ILjava/lang/String;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    if-nez p8, :cond_0

    .line 467
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 470
    :cond_0
    return-void

    .line 466
    :catchall_0
    move-exception v1

    if-nez p8, :cond_1

    .line 467
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_1
    throw v1
.end method

.method public static format4Receiver(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p2, "messageInfo"    # Ljava/lang/String;
    .param p3, "maxChars"    # I
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "resourceCachingRequired"    # Z
    .param p9, "accountEmail"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p4, "styledReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableReceiverNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableReceiverEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move/from16 v0, p8

    invoke-static {p0, v0}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    .line 151
    sget-object v9, Lcom/kingsoft/mail/browse/SendersView;->sUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    sget-object v10, Lcom/kingsoft/mail/browse/SendersView;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/kingsoft/mail/browse/SendersView;->handleReceiversWithoutPriority(Landroid/content/Context;ILjava/lang/String;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-nez p8, :cond_0

    .line 156
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 159
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v1

    if-nez p8, :cond_1

    .line 156
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_1
    throw v1
.end method

.method private static formatDefault(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Ljava/lang/String;Landroid/content/Context;Landroid/text/style/CharacterStyle;Z)V
    .locals 5
    .param p0, "header"    # Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .param p1, "sendersString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "readStyleSpan"    # Landroid/text/style/CharacterStyle;
    .param p4, "resourceCachingRequired"    # Z

    .prologue
    .line 538
    :try_start_0
    invoke-static {p2, p4}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    .line 540
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 542
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 543
    .local v3, "senders":[Landroid/text/util/Rfc822Token;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 545
    .local v2, "namesOnly":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 546
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/providers/Address;->decodeAddressName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "display":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_0
    aput-object v0, v2, v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "display":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v2, p3}, Lcom/kingsoft/mail/browse/SendersView;->generateSenderFragments(Lcom/kingsoft/mail/browse/ConversationItemViewModel;[Ljava/lang/String;Landroid/text/style/CharacterStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    if-nez p4, :cond_2

    .line 555
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 558
    :cond_2
    return-void

    .line 554
    .end local v1    # "i":I
    .end local v2    # "namesOnly":[Ljava/lang/String;
    .end local v3    # "senders":[Landroid/text/util/Rfc822Token;
    :catchall_0
    move-exception v4

    if-nez p4, :cond_3

    .line 555
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_3
    throw v4
.end method

.method public static formatSenders(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Landroid/content/Context;Landroid/text/style/CharacterStyle;Z)V
    .locals 1
    .param p0, "header"    # Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readStyleSpan"    # Landroid/text/style/CharacterStyle;
    .param p3, "resourceCachingRequired"    # Z

    .prologue
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/kingsoft/mail/browse/SendersView;->formatDefault(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Ljava/lang/String;Landroid/content/Context;Landroid/text/style/CharacterStyle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    if-nez p3, :cond_0

    .line 586
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 589
    :cond_0
    return-void

    .line 585
    :catchall_0
    move-exception v0

    if-nez p3, :cond_1

    .line 586
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_1
    throw v0
.end method

.method public static formatSenders(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Landroid/content/Context;Z)V
    .locals 1
    .param p0, "header"    # Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceCachingRequired"    # Z

    .prologue
    .line 570
    :try_start_0
    invoke-static {p1, p2}, Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V

    .line 571
    sget-object v0, Lcom/kingsoft/mail/browse/SendersView;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-static {p0, p1, v0, p2}, Lcom/kingsoft/mail/browse/SendersView;->formatSenders(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Landroid/content/Context;Landroid/text/style/CharacterStyle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    if-nez p2, :cond_0

    .line 574
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    .line 577
    :cond_0
    return-void

    .line 573
    :catchall_0
    move-exception v0

    if-nez p2, :cond_1

    .line 574
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->clearResourceCache()V

    :cond_1
    throw v0
.end method

.method private static generateSenderFragments(Lcom/kingsoft/mail/browse/ConversationItemViewModel;[Ljava/lang/String;Landroid/text/style/CharacterStyle;)V
    .locals 4
    .param p0, "header"    # Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "readStyleSpan"    # Landroid/text/style/CharacterStyle;

    .prologue
    .line 562
    const-string/jumbo v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    .line 563
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V

    .line 565
    return-void
.end method

.method public static getMe(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 525
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 527
    .local v0, "locale":Ljava/util/Locale;
    sget-object v2, Lcom/kingsoft/mail/browse/SendersView;->sMeString:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/kingsoft/mail/browse/SendersView;->sMeStringLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    :cond_0
    const v2, 0x7f100244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/browse/SendersView;->sMeString:Ljava/lang/String;

    .line 529
    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->sMeStringLocale:Ljava/util/Locale;

    .line 531
    :cond_1
    sget-object v2, Lcom/kingsoft/mail/browse/SendersView;->sMeString:Ljava/lang/String;

    return-object v2
.end method

.method private static declared-synchronized getSenderResources(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceCachingRequired"    # Z

    .prologue
    .line 112
    const-class v2, Lcom/kingsoft/mail/browse/SendersView;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/kingsoft/mail/browse/SendersView;->sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 113
    new-instance v1, Lcom/kingsoft/mail/browse/SendersView$2;

    invoke-direct {v1}, Lcom/kingsoft/mail/browse/SendersView$2;-><init>()V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    sput-object p0, Lcom/kingsoft/mail/browse/SendersView;->mContext:Landroid/content/Context;

    .line 121
    sget-object v1, Lcom/kingsoft/mail/browse/SendersView;->sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/browse/SendersView;->sDraftSingularString:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sSendersSplitToken:Ljava/lang/String;

    .line 127
    const v1, 0x7f100372

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    .line 128
    const v1, 0x7f0f000f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sDraftSingularString:Ljava/lang/CharSequence;

    .line 129
    const v1, 0x7f0f000f

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sDraftPluralString:Ljava/lang/CharSequence;

    .line 130
    const v1, 0x7f100191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sDraftCountFormatString:Ljava/lang/String;

    .line 131
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f110057

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sMessageInfoUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 133
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f110056

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sMessageInfoReadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 135
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f110035

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    .line 136
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f11007a

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 137
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f11007b

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sSendingStyleSpan:Landroid/text/style/CharacterStyle;

    .line 138
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f110077

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 139
    const v1, 0x7f10026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sMessageCountSpacerString:Ljava/lang/String;

    .line 140
    const v1, 0x7f100374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sSendingString:Ljava/lang/CharSequence;

    .line 141
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/browse/SendersView;->sBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    monitor-exit v2

    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getTypeface(Z)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "isUnread"    # Z

    .prologue
    .line 100
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private static getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .locals 1
    .param p0, "characterStyle"    # Landroid/text/style/CharacterStyle;

    .prologue
    .line 453
    invoke-static {p0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    return-object v0
.end method

.method public static handlePriority(Landroid/content/Context;ILjava/lang/String;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxChars"    # I
    .param p2, "messageInfoString"    # Ljava/lang/String;
    .param p3, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "unreadStyleSpan"    # Landroid/text/style/TextAppearanceSpan;
    .param p9, "readStyleSpan"    # Landroid/text/style/CharacterStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/style/TextAppearanceSpan;",
            "Landroid/text/style/CharacterStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    .local p4, "styledSenders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableSenderNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableSenderEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_1

    const/16 v24, 0x1

    .line 321
    .local v24, "shouldAddPhotos":Z
    :goto_0
    const/4 v14, -0x1

    .line 322
    .local v14, "maxPriorityToInclude":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    .line 324
    .local v17, "numCharsUsed":I
    const/16 v18, 0x0

    .line 325
    .local v18, "numSendersUsed":I
    const/16 v16, 0x0

    .line 326
    .local v16, "numCharsToRemovePerWord":I
    const/4 v13, 0x0

    .line 327
    .local v13, "maxFoundPriority":I
    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_0

    .line 328
    sub-int v16, v17, p1

    .line 331
    :cond_0
    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->PRIORITY_LENGTH_MAP_CACHE:Lcom/kingsoft/mail/utils/ObjectCache;

    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/utils/ObjectCache;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    .line 333
    .local v21, "priorityToLength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 335
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 336
    .local v11, "info":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v0, v11, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    iget-object v0, v11, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v23

    .line 337
    .local v23, "senderLength":I
    :goto_2
    iget v0, v11, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget v0, v11, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 339
    goto :goto_1

    .line 320
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "info":Lcom/kingsoft/mail/providers/MessageInfo;
    .end local v13    # "maxFoundPriority":I
    .end local v14    # "maxPriorityToInclude":I
    .end local v16    # "numCharsToRemovePerWord":I
    .end local v17    # "numCharsUsed":I
    .end local v18    # "numSendersUsed":I
    .end local v21    # "priorityToLength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v23    # "senderLength":I
    .end local v24    # "shouldAddPhotos":Z
    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    .line 336
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "info":Lcom/kingsoft/mail/providers/MessageInfo;
    .restart local v13    # "maxFoundPriority":I
    .restart local v14    # "maxPriorityToInclude":I
    .restart local v16    # "numCharsToRemovePerWord":I
    .restart local v17    # "numCharsUsed":I
    .restart local v18    # "numSendersUsed":I
    .restart local v21    # "priorityToLength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v24    # "shouldAddPhotos":Z
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 351
    .end local v11    # "info":Lcom/kingsoft/mail/providers/MessageInfo;
    .local v12, "length":I
    :cond_3
    move/from16 v17, v12

    .line 352
    add-int/lit8 v18, v18, 0x1

    .line 354
    .end local v12    # "length":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 340
    :cond_5
    if-ge v14, v13, :cond_7

    .line 341
    add-int/lit8 v27, v14, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 342
    add-int/lit8 v27, v14, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    add-int v12, v17, v27

    .line 343
    .restart local v12    # "length":I
    if-lez v17, :cond_6

    .line 344
    add-int/lit8 v12, v12, 0x2

    .line 348
    :cond_6
    move/from16 v0, p1

    if-le v12, v0, :cond_3

    const/16 v27, 0x2

    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 357
    .end local v12    # "length":I
    :cond_7
    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->PRIORITY_LENGTH_MAP_CACHE:Lcom/kingsoft/mail/utils/ObjectCache;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/ObjectCache;->release(Ljava/lang/Object;)V

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "appendedElided":Z
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 368
    .local v5, "displayHash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 369
    .local v7, "firstDisplayableSenderEmail":Ljava/lang/String;
    const/4 v6, 0x0

    .line 370
    .local v6, "firstDisplayableSender":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_16

    .line 371
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 372
    .local v4, "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_e

    iget-object v15, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 373
    .local v15, "nameString":Ljava/lang/String;
    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_8

    .line 374
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 376
    :cond_8
    if-eqz v16, :cond_9

    .line 377
    const/16 v27, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    sub-int v28, v28, v16

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 380
    :cond_9
    iget v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    move/from16 v20, v0

    .line 381
    .local v20, "priority":I
    iget-boolean v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    invoke-static/range {p8 .. p8}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v26

    .line 383
    .local v26, "style":Landroid/text/style/CharacterStyle;
    :goto_5
    move/from16 v0, v20

    if-gt v0, v14, :cond_11

    .line 384
    new-instance v25, Landroid/text/SpannableString;

    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->sBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 387
    .local v25, "spannableDisplay":Landroid/text/SpannableString;
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 391
    .local v19, "oldPos":I
    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->DOES_NOT_EXIST:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    iget-boolean v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    move/from16 v27, v0

    if-nez v27, :cond_c

    .line 394
    :cond_a
    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->DOES_NOT_EXIST:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    if-lez v8, :cond_b

    add-int/lit8 v27, v8, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 397
    const/16 v27, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    if-eqz v24, :cond_b

    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 399
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    :cond_b
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableString;->length()I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v29}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 405
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v19    # "oldPos":I
    .end local v25    # "spannableDisplay":Landroid/text/SpannableString;
    :cond_c
    :goto_7
    if-eqz v24, :cond_d

    .line 416
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_12

    move-object/from16 v22, p7

    .line 420
    .local v22, "senderEmail":Ljava/lang/String;
    :goto_8
    if-nez v8, :cond_14

    .line 422
    move-object/from16 v7, v22

    .line 423
    iget-object v6, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 370
    .end local v22    # "senderEmail":Ljava/lang/String;
    :cond_d
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 357
    .end local v3    # "appendedElided":Z
    .end local v4    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .end local v5    # "displayHash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "firstDisplayableSender":Ljava/lang/String;
    .end local v7    # "firstDisplayableSenderEmail":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "nameString":Ljava/lang/String;
    .end local v20    # "priority":I
    .end local v26    # "style":Landroid/text/style/CharacterStyle;
    :catchall_0
    move-exception v27

    sget-object v28, Lcom/kingsoft/mail/browse/SendersView;->PRIORITY_LENGTH_MAP_CACHE:Lcom/kingsoft/mail/utils/ObjectCache;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/ObjectCache;->release(Ljava/lang/Object;)V

    throw v27

    .line 372
    .restart local v3    # "appendedElided":Z
    .restart local v4    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .restart local v5    # "displayHash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "firstDisplayableSender":Ljava/lang/String;
    .restart local v7    # "firstDisplayableSenderEmail":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_e
    const-string/jumbo v15, ""

    goto/16 :goto_4

    .line 381
    .restart local v15    # "nameString":Ljava/lang/String;
    .restart local v20    # "priority":I
    :cond_f
    invoke-static/range {p9 .. p9}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v26

    goto/16 :goto_5

    .line 387
    .restart local v25    # "spannableDisplay":Landroid/text/SpannableString;
    .restart local v26    # "style":Landroid/text/style/CharacterStyle;
    :cond_10
    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->DOES_NOT_EXIST:Ljava/lang/Integer;

    goto/16 :goto_6

    .line 408
    .end local v25    # "spannableDisplay":Landroid/text/SpannableString;
    :cond_11
    if-nez v3, :cond_c

    .line 409
    new-instance v25, Landroid/text/SpannableString;

    sget-object v27, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 410
    .restart local v25    # "spannableDisplay":Landroid/text/SpannableString;
    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableString;->length()I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v29}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 411
    const/4 v3, 0x1

    .line 412
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 416
    .end local v25    # "spannableDisplay":Landroid/text/SpannableString;
    :cond_12
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_13

    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_8

    :cond_13
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_8

    .line 425
    .restart local v22    # "senderEmail":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 426
    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 427
    .local v10, "indexOf":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-le v10, v0, :cond_15

    .line 428
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 429
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    :cond_15
    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, v4, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_d

    .line 434
    const/16 v27, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 435
    const/16 v27, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_9

    .line 441
    .end local v4    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .end local v10    # "indexOf":I
    .end local v15    # "nameString":Ljava/lang/String;
    .end local v20    # "priority":I
    .end local v22    # "senderEmail":Ljava/lang/String;
    .end local v26    # "style":Landroid/text/style/CharacterStyle;
    :cond_16
    if-eqz v24, :cond_17

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_17

    .line 442
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 443
    const/16 v27, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 444
    const/16 v27, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    :cond_17
    :goto_a
    return-void

    .line 446
    :cond_18
    const/16 v27, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/16 v27, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public static handleReceiversWithoutPriority(Landroid/content/Context;ILjava/lang/String;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Ljava/lang/StringBuffer;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxChars"    # I
    .param p2, "messageInfoString"    # Ljava/lang/String;
    .param p3, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "unreadStyleSpan"    # Landroid/text/style/TextAppearanceSpan;
    .param p9, "readStyleSpan"    # Landroid/text/style/CharacterStyle;
    .param p10, "accountEmail"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/style/TextAppearanceSpan;",
            "Landroid/text/style/CharacterStyle;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p4, "styledReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableReceiverNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableReceiverEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_4

    const/4 v6, 0x1

    .line 167
    .local v6, "shouldAddPhotos":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 168
    .local v5, "numCharsUsed":I
    const/4 v4, 0x0

    .line 169
    .local v4, "numCharsToRemovePerWord":I
    if-le v5, p1, :cond_0

    .line 170
    sub-int v4, v5, p1

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 180
    .local v1, "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p3, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 181
    iget-object v9, p3, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    check-cast v1, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 183
    .restart local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 184
    invoke-static {p0}, Lcom/kingsoft/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "nameString":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_1

    .line 192
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_1
    iget-boolean v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    if-nez v9, :cond_6

    invoke-static/range {p8 .. p8}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v8

    .line 197
    .local v8, "style":Landroid/text/style/CharacterStyle;
    :goto_3
    new-instance v7, Landroid/text/SpannableString;

    sget-object v9, Lcom/kingsoft/mail/browse/SendersView;->sBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    invoke-virtual {v9, v3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v7, "spannableDisplay":Landroid/text/SpannableString;
    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 199
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    if-eqz v6, :cond_3

    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 201
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 202
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_2
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .end local v2    # "i":I
    .end local v3    # "nameString":Ljava/lang/String;
    .end local v4    # "numCharsToRemovePerWord":I
    .end local v5    # "numCharsUsed":I
    .end local v6    # "shouldAddPhotos":Z
    .end local v7    # "spannableDisplay":Landroid/text/SpannableString;
    .end local v8    # "style":Landroid/text/style/CharacterStyle;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 188
    .restart local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .restart local v2    # "i":I
    .restart local v4    # "numCharsToRemovePerWord":I
    .restart local v5    # "numCharsUsed":I
    .restart local v6    # "shouldAddPhotos":Z
    :cond_5
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "nameString":Ljava/lang/String;
    goto :goto_2

    .line 195
    :cond_6
    invoke-static/range {p9 .. p9}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v8

    goto :goto_3

    .line 206
    .end local v3    # "nameString":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_8

    .line 208
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_8
    return-void
.end method

.method public static handleSendersWithoutPriority(Landroid/content/Context;ILjava/lang/String;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Ljava/lang/StringBuffer;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxChars"    # I
    .param p2, "messageInfoString"    # Ljava/lang/String;
    .param p3, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "unreadStyleSpan"    # Landroid/text/style/TextAppearanceSpan;
    .param p9, "readStyleSpan"    # Landroid/text/style/CharacterStyle;
    .param p10, "accountEmail"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/style/TextAppearanceSpan;",
            "Landroid/text/style/CharacterStyle;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    .local p4, "styledReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    .local p5, "displayableReceiverNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "displayableReceiverEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_4

    const/4 v6, 0x1

    .line 478
    .local v6, "shouldAddPhotos":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 479
    .local v5, "numCharsUsed":I
    const/4 v4, 0x0

    .line 480
    .local v4, "numCharsToRemovePerWord":I
    if-le v5, p1, :cond_0

    .line 481
    sub-int v4, v5, p1

    .line 487
    :cond_0
    const/4 v1, 0x0

    .line 489
    .local v1, "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    const-string/jumbo v3, ""

    .line 491
    .local v3, "nameString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p3, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 492
    iget-object v9, p3, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    check-cast v1, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 493
    .restart local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 494
    invoke-static {p0}, Lcom/kingsoft/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 501
    :goto_2
    if-eqz v4, :cond_1

    .line 502
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 505
    :cond_1
    iget-boolean v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    if-nez v9, :cond_6

    invoke-static/range {p8 .. p8}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v8

    .line 507
    .local v8, "style":Landroid/text/style/CharacterStyle;
    :goto_3
    new-instance v7, Landroid/text/SpannableString;

    sget-object v9, Lcom/kingsoft/mail/browse/SendersView;->sBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    invoke-virtual {v9, v3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 508
    .local v7, "spannableDisplay":Landroid/text/SpannableString;
    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 509
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    if-eqz v6, :cond_3

    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 511
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 512
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_2
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 491
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 477
    .end local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .end local v2    # "i":I
    .end local v3    # "nameString":Ljava/lang/String;
    .end local v4    # "numCharsToRemovePerWord":I
    .end local v5    # "numCharsUsed":I
    .end local v6    # "shouldAddPhotos":Z
    .end local v7    # "spannableDisplay":Landroid/text/SpannableString;
    .end local v8    # "style":Landroid/text/style/CharacterStyle;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 498
    .restart local v1    # "currentMessage":Lcom/kingsoft/mail/providers/MessageInfo;
    .restart local v2    # "i":I
    .restart local v3    # "nameString":Ljava/lang/String;
    .restart local v4    # "numCharsToRemovePerWord":I
    .restart local v5    # "numCharsUsed":I
    .restart local v6    # "shouldAddPhotos":Z
    :cond_5
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 505
    :cond_6
    invoke-static/range {p9 .. p9}, Lcom/kingsoft/mail/browse/SendersView;->getWrappedStyleSpan(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v8

    goto :goto_3

    .line 517
    :cond_7
    if-eqz v1, :cond_8

    .line 519
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    :cond_8
    return-void
.end method

.method public static declared-synchronized unregistConfigurationChangedReceiver()V
    .locals 3

    .prologue
    .line 104
    const-class v1, Lcom/kingsoft/mail/browse/SendersView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/mail/browse/SendersView;->sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingsoft/mail/browse/SendersView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/kingsoft/mail/browse/SendersView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/kingsoft/mail/browse/SendersView;->sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/browse/SendersView;->sConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
