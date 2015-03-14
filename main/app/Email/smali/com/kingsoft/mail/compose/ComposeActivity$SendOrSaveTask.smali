.class public Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendOrSaveTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExistingDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

.field public final mSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSendOrSaveMessage:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;Lcom/kingsoft/mail/providers/ReplyFromAccount;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    .param p3, "callback"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    .param p4, "draftAccount"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .prologue
    .line 3144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3145
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    .line 3146
    iput-object p3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    .line 3147
    iput-object p2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mSendOrSaveMessage:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;

    .line 3148
    iput-object p4, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mExistingDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 3149
    return-void
.end method

.method private static incrementRecipientsTimesContacted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addressString"    # Ljava/lang/String;

    .prologue
    .line 3204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3217
    :goto_0
    return-void

    .line 3207
    :cond_0
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 3209
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3211
    .local v1, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 3212
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3214
    :cond_1
    new-instance v2, Lcom/kingsoft/common/contacts/DataUsageStatUpdater;

    invoke-direct {v2, p0}, Lcom/kingsoft/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 3216
    .local v2, "statsUpdater":Lcom/kingsoft/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v2, v1}, Lcom/kingsoft/common/contacts/DataUsageStatUpdater;->updateWithAddress(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private sendOrSaveMessage(JLcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/providers/ReplyFromAccount;)V
    .locals 11
    .param p1, "messageIdToSave"    # J
    .param p3, "sendOrSaveMessage"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    .param p4, "selectedAccount"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .prologue
    .line 3225
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3226
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    .line 3228
    .local v10, "updateExistingMessage":Z
    :goto_0
    iget-boolean v2, p3, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mSave:Z

    if-eqz v2, :cond_2

    const-string/jumbo v6, "save_message"

    .line 3232
    .local v6, "accountMethod":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_3

    .line 3233
    :try_start_0
    iget-object v2, p3, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3236
    iget-object v2, p4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, p3, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    invoke-static {v0, v2, v6, v3}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->callAccountSendSaveMethod(Landroid/content/ContentResolver;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3276
    :cond_0
    :goto_2
    return-void

    .line 3226
    .end local v6    # "accountMethod":Ljava/lang/String;
    .end local v10    # "updateExistingMessage":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 3228
    .restart local v10    # "updateExistingMessage":Z
    :cond_2
    const-string/jumbo v6, "send_message"

    goto :goto_1

    .line 3240
    .restart local v6    # "accountMethod":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 3241
    .local v1, "messageUri":Landroid/net/Uri;
    :try_start_1
    iget-object v2, p4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, p3, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    invoke-static {v0, v2, v6, v3}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->callAccountSendSaveMethod(Landroid/content/ContentResolver;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/os/Bundle;

    move-result-object v9

    .line 3244
    .local v9, "result":Landroid/os/Bundle;
    if-eqz v9, :cond_4

    .line 3248
    const-string/jumbo v2, "messageUri"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "messageUri":Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 3251
    .restart local v1    # "messageUri":Landroid/net/Uri;
    :cond_4
    iget-boolean v2, p3, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mSave:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 3252
    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 3256
    .local v8, "messageCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3258
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3262
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    new-instance v3, Lcom/kingsoft/mail/providers/Message;

    invoke-direct {v3, v8}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v2, p3, v3}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->notifyMessageIdAllocated(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/providers/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3268
    :cond_5
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3273
    .end local v1    # "messageUri":Landroid/net/Uri;
    .end local v8    # "messageCursor":Landroid/database/Cursor;
    .end local v9    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 3274
    .local v7, "e":Ljava/lang/Exception;
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1400()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Send or save message exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 3268
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "messageUri":Landroid/net/Uri;
    .restart local v8    # "messageCursor":Landroid/database/Cursor;
    .restart local v9    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    const/4 v4, 0x0

    .line 3153
    iget-object v12, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mSendOrSaveMessage:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;

    .line 3155
    .local v12, "sendOrSaveMessage":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    iget-object v11, v12, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 3156
    .local v11, "selectedAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    invoke-interface {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    .line 3157
    .local v6, "message":Lcom/kingsoft/mail/providers/Message;
    if-eqz v6, :cond_3

    iget-wide v7, v6, Lcom/kingsoft/mail/providers/Message;->id:J

    .line 3164
    .local v7, "messageId":J
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mExistingDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mExistingDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3167
    cmp-long v0, v7, v13

    if-eqz v0, :cond_1

    .line 3168
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3169
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3170
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3171
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mExistingDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3172
    new-instance v0, Lcom/kingsoft/mail/utils/ContentProviderTask$UpdateTask;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/ContentProviderTask$UpdateTask;-><init>()V

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mExistingDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/utils/ContentProviderTask$UpdateTask;->run(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3180
    :cond_0
    const-wide/16 v7, -0x1

    .line 3184
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    move-wide v9, v7

    .line 3185
    .local v9, "messageIdToSave":J
    invoke-direct {p0, v9, v10, v12, v11}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->sendOrSaveMessage(JLcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/providers/ReplyFromAccount;)V

    .line 3188
    iget-boolean v0, v12, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mSave:Z

    if-nez v0, :cond_2

    .line 3189
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    iget-object v0, v12, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v4, "toAddresses"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->incrementRecipientsTimesContacted(Landroid/content/Context;Ljava/lang/String;)V

    .line 3192
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    iget-object v0, v12, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v4, "ccAddresses"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->incrementRecipientsTimesContacted(Landroid/content/Context;Ljava/lang/String;)V

    .line 3195
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    iget-object v0, v12, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v4, "bccAddresses"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->incrementRecipientsTimesContacted(Landroid/content/Context;Ljava/lang/String;)V

    .line 3199
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->sendOrSaveFinished(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;Z)V

    .line 3200
    return-void

    .end local v7    # "messageId":J
    .end local v9    # "messageIdToSave":J
    :cond_3
    move-wide v7, v13

    .line 3157
    goto/16 :goto_0
.end method
