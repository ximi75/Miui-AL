.class public Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmailConversationCursor"
.end annotation


# static fields
.field private static final AUTO_REFRESH_INTERVAL_MS:J = 0x493e0L


# instance fields
.field private final accountEmailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private final mFolderList:Lcom/kingsoft/mail/providers/FolderList;

.field private final mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private final mMailboxId:J

.field private final mMerge:Z

.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;Landroid/content/Context;Landroid/database/Cursor;Lcom/kingsoft/mail/providers/Folder;JZ)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p5, "mailboxId"    # J
    .param p7, "merge"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 5422
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    .line 5423
    invoke-direct {p0, p3}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 5410
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 5411
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    .line 5412
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->accountEmailMap:Ljava/util/HashMap;

    .line 5424
    iput-wide p5, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    .line 5425
    iput-object p2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    .line 5426
    iput-boolean p7, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMerge:Z

    .line 5427
    new-array v2, v5, [Lcom/kingsoft/mail/providers/Folder;

    aput-object p4, v2, v1

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/providers/FolderList;->copyOf(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mFolderList:Lcom/kingsoft/mail/providers/FolderList;

    .line 5428
    invoke-static {p2, p5, p6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 5430
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_3

    .line 5431
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 5433
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "cursor_error"

    iget-object v4, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5435
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "cursor_message_count"

    # invokes: Lcom/kingsoft/email/provider/EmailProvider;->getMailboxAllMessageCount(J)I
    invoke-static {p1, p5, p6}, Lcom/kingsoft/email/provider/EmailProvider;->access$500(Lcom/kingsoft/email/provider/EmailProvider;J)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5437
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5440
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "cursor_status"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5471
    :goto_0
    return-void

    .line 5442
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    if-nez v2, :cond_2

    .line 5454
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "cursor_status"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5458
    :cond_2
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown mailbox sync status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5460
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "cursor_status"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5464
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 5465
    .local v0, "cursorCount":I
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "cursor_error"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5467
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "cursor_message_count"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5468
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "cursor_status"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "cursorCount":I
    :cond_4
    move v0, v1

    .line 5464
    goto :goto_1
.end method

.method private generateConversationInfo()Lcom/kingsoft/mail/providers/ConversationInfo;
    .locals 29
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 5578
    const-string/jumbo v6, "numMessages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getInt(I)I

    move-result v23

    .line 5579
    .local v23, "numMessages":I
    new-instance v16, Lcom/kingsoft/mail/providers/ConversationInfo;

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/providers/ConversationInfo;-><init>(I)V

    .line 5582
    .local v16, "conversationInfo":Lcom/kingsoft/mail/providers/ConversationInfo;
    const-string/jumbo v6, "snippet"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 5584
    const-string/jumbo v6, "read"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 5585
    .local v3, "isRead":Z
    :goto_0
    const-string/jumbo v6, "starred"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 5588
    .local v4, "isStarred":Z
    :goto_1
    const-string/jumbo v6, "fromList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 5590
    .local v18, "fromString":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 5591
    invoke-static/range {v18 .. v18}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v25

    .line 5593
    .local v25, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v25

    array-length v6, v0

    if-lez v6, :cond_5

    .line 5594
    const/4 v6, 0x0

    aget-object v6, v25, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 5602
    .end local v25    # "tokens":[Landroid/text/util/Rfc822Token;
    .local v7, "email":Ljava/lang/String;
    :goto_2
    const-string/jumbo v5, ""

    .line 5603
    .local v5, "senderString":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 5604
    .local v12, "myEmail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v6, :cond_7

    .line 5606
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v27, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/kingsoft/email/mail/attachment/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v7, v6, v0, v1}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 5608
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 5624
    :cond_0
    :goto_3
    const-string/jumbo v6, "toList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 5625
    .local v24, "toList":Ljava/lang/String;
    const-string/jumbo v6, "ccList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5626
    .local v15, "ccList":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5627
    .local v8, "receiversNameEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5628
    .local v9, "receiversAddressEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    invoke-static {v0, v9, v8}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddressesEMailAndName(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5629
    invoke-static {v15, v9, v8}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddressesEMailAndName(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5630
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 5632
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v27, 0x3

    move/from16 v0, v27

    if-eq v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v27, 0x4

    move/from16 v0, v27

    if-eq v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v6, v0, :cond_8

    .line 5636
    :cond_1
    const-string/jumbo v6, ""

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5637
    const-string/jumbo v6, ""

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5654
    :cond_2
    :goto_4
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_a

    .line 5656
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5657
    .local v14, "address":Ljava/lang/String;
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v14, v12, v6, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 5659
    .local v17, "displayName":Ljava/lang/String;
    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5654
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 5584
    .end local v3    # "isRead":Z
    .end local v4    # "isStarred":Z
    .end local v5    # "senderString":Ljava/lang/String;
    .end local v7    # "email":Ljava/lang/String;
    .end local v8    # "receiversNameEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "receiversAddressEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "myEmail":Ljava/lang/String;
    .end local v14    # "address":Ljava/lang/String;
    .end local v15    # "ccList":Ljava/lang/String;
    .end local v17    # "displayName":Ljava/lang/String;
    .end local v18    # "fromString":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v24    # "toList":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5585
    .restart local v3    # "isRead":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 5596
    .restart local v4    # "isStarred":Z
    .restart local v18    # "fromString":Ljava/lang/String;
    .restart local v25    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v27, "Couldn\'t parse email address"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v6, v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5597
    move-object/from16 v7, v18

    .restart local v7    # "email":Ljava/lang/String;
    goto/16 :goto_2

    .line 5600
    .end local v7    # "email":Ljava/lang/String;
    .end local v25    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_6
    const-string/jumbo v7, ""

    .restart local v7    # "email":Ljava/lang/String;
    goto/16 :goto_2

    .line 5612
    .restart local v5    # "senderString":Ljava/lang/String;
    .restart local v12    # "myEmail":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    const-string/jumbo v27, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/kingsoft/email/mail/attachment/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v7, v6, v0, v1}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 5614
    const-string/jumbo v6, "accountUri"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 5615
    .local v26, "uri":Landroid/net/Uri;
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 5616
    .local v13, "accountKey":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->accountEmailMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "myEmail":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 5617
    .restart local v12    # "myEmail":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 5619
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    int-to-long v0, v13

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 5620
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->accountEmailMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 5641
    .end local v13    # "accountKey":I
    .end local v26    # "uri":Landroid/net/Uri;
    .restart local v8    # "receiversNameEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "receiversAddressEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "ccList":Ljava/lang/String;
    .restart local v24    # "toList":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v6, :cond_9

    .line 5643
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5650
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 5647
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v27, 0x7f100289

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5662
    .restart local v19    # "i":I
    :cond_a
    const-string/jumbo v6, "mergeSenders"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 5663
    .local v22, "mergeSendersIndex":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5664
    .local v10, "mergeSendersName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5665
    .local v11, "mergeSendersAddress":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "mergeCount"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getInt(I)I

    move-result v20

    .line 5666
    .local v20, "mergeCount":I
    const/4 v6, -0x1

    move/from16 v0, v22

    if-le v0, v6, :cond_b

    const/4 v6, 0x1

    move/from16 v0, v20

    if-le v0, v6, :cond_b

    .line 5668
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5669
    .local v21, "mergeSenders":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-static {v0, v11, v10}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddressesEMailAndName(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5670
    const/16 v19, 0x0

    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_c

    .line 5672
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5673
    .restart local v14    # "address":Ljava/lang/String;
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v14, v12, v6, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 5675
    .restart local v17    # "displayName":Ljava/lang/String;
    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5670
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 5680
    .end local v14    # "address":Ljava/lang/String;
    .end local v17    # "displayName":Ljava/lang/String;
    .end local v21    # "mergeSenders":Ljava/lang/String;
    :cond_b
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5681
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5684
    :cond_c
    new-instance v2, Lcom/kingsoft/mail/providers/MessageInfo;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/kingsoft/mail/providers/MessageInfo;-><init>(ZZLjava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 5687
    .local v2, "messageInfo":Lcom/kingsoft/mail/providers/MessageInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/providers/ConversationInfo;->addMessage(Lcom/kingsoft/mail/providers/MessageInfo;)V

    .line 5688
    return-object v16
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 5475
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 23
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 5480
    const-string/jumbo v16, "setVisibility"

    .line 5481
    .local v16, "setVisibilityKey":Ljava/lang/String;
    const-string/jumbo v4, "setVisibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5482
    const-string/jumbo v4, "setVisibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 5483
    .local v20, "visible":Z
    if-eqz v20, :cond_2

    .line 5485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5487
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v10, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5488
    .local v10, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "flagSeen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5489
    sget-object v19, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 5491
    .local v19, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->isCombinedMailbox(J)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxType(J)I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    .line 5494
    const-string/jumbo v4, "flagSeen = 0"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5511
    :cond_0
    :goto_0
    const-string/jumbo v4, "enteredFolder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 5515
    .local v12, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_2

    .line 5524
    iget v4, v12, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-nez v4, :cond_2

    .line 5525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v12, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    sub-long v17, v4, v6

    .line 5528
    .local v17, "timeSinceLastSync":J
    const/4 v13, 0x0

    .line 5529
    .local v13, "needRefresh":Z
    const-wide/32 v4, 0x493e0

    cmp-long v4, v17, v4

    if-lez v4, :cond_7

    iget v4, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    iget v4, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 5533
    const/4 v13, 0x1

    .line 5543
    :cond_1
    :goto_1
    if-eqz v13, :cond_2

    .line 5544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->QUERY_UIREFRESH:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5548
    .local v3, "refreshUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 5557
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "refreshUri":Landroid/net/Uri;
    .end local v10    # "contentValues":Landroid/content/ContentValues;
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "needRefresh":Z
    .end local v17    # "timeSinceLastSync":J
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v20    # "visible":Z
    :cond_2
    new-instance v15, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v15, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 5559
    .local v15, "response":Landroid/os/Bundle;
    const-string/jumbo v4, "setVisibility"

    const-string/jumbo v5, "ok"

    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5562
    const-string/jumbo v14, "rawFolders"

    .line 5563
    .local v14, "rawFoldersKey":Ljava/lang/String;
    const-string/jumbo v4, "rawFolders"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5564
    const-string/jumbo v4, "rawFolders"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mFolderList:Lcom/kingsoft/mail/providers/FolderList;

    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5567
    :cond_3
    const-string/jumbo v11, "conversationInfo"

    .line 5568
    .local v11, "convInfoKey":Ljava/lang/String;
    const-string/jumbo v4, "conversationInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5569
    const-string/jumbo v4, "conversationInfo"

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->generateConversationInfo()Lcom/kingsoft/mail/providers/ConversationInfo;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5572
    :cond_4
    return-object v15

    .line 5496
    .end local v11    # "convInfoKey":Ljava/lang/String;
    .end local v14    # "rawFoldersKey":Ljava/lang/String;
    .end local v15    # "response":Landroid/os/Bundle;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v10    # "contentValues":Landroid/content/ContentValues;
    .restart local v19    # "uri":Landroid/net/Uri;
    .restart local v20    # "visible":Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->isVirtualMailbox(J)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxType(J)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    .line 5498
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    # invokes: Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxAccountId(J)J
    invoke-static {v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->access$600(J)J

    move-result-wide v8

    .line 5499
    .local v8, "accountID":J
    const-string/jumbo v4, "flagSeen = 0 AND accountKey = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5503
    .end local v8    # "accountID":J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->isVirtualMailbox(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5505
    const-string/jumbo v4, "flagSeen = 0 AND mailboxKey = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;->mMailboxId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5535
    .restart local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v13    # "needRefresh":Z
    .restart local v17    # "timeSinceLastSync":J
    :cond_7
    iget v4, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_8

    iget v4, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 5538
    :cond_8
    iget-wide v4, v12, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 5540
    const/4 v13, 0x1

    goto/16 :goto_1
.end method
