.class public Lcom/kingsoft/email/preferences/EmailPreferenceMigrator;
.super Lcom/kingsoft/mail/preferences/BasePreferenceMigrator;
.source "EmailPreferenceMigrator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EmailPrefMigrator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingsoft/mail/preferences/BasePreferenceMigrator;-><init>()V

    return-void
.end method

.method protected static migrate(Landroid/content/Context;IILjava/util/List;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v17

    .line 75
    .local v17, "preferences":Lcom/kingsoft/email/Preferences;
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v15

    .line 76
    .local v15, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ge v0, v1, :cond_7

    .line 81
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/Preferences;->hasReplyAll()Z

    move-result v14

    .line 82
    .local v14, "isReplyAllSet":Z
    if-eqz v14, :cond_0

    .line 84
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/Preferences;->getReplyAll()Z

    move-result v18

    .line 85
    .local v18, "replyAll":Z
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->setDefaultReplyAll(Z)V

    .line 89
    .end local v18    # "replyAll":Z
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/providers/Account;

    .line 91
    .local v7, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "emailAddress = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 97
    .local v9, "ecAccountCursor":Landroid/database/Cursor;
    new-instance v8, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 101
    .local v8, "ecAccount":Lcom/android/emailcommon/provider/Account;
    if-eqz v9, :cond_1

    .line 108
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v8, v9}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v7, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 125
    .local v11, "folderCursor":Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 126
    const-string/jumbo v1, "EmailPrefMigrator"

    const-string/jumbo v2, "Null folder cursor for mailbox %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "EmailPrefMigrator"

    iget-object v6, v7, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 116
    .end local v11    # "folderCursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 132
    .restart local v11    # "folderCursor":Landroid/database/Cursor;
    :cond_3
    const/4 v10, 0x0

    .line 134
    .local v10, "folder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    new-instance v10, Lcom/kingsoft/mail/providers/Folder;

    .end local v10    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v10, v11}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    .restart local v10    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 141
    new-instance v12, Lcom/kingsoft/mail/preferences/FolderPreferences;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1, v10, v2}, Lcom/kingsoft/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 146
    .local v12, "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const/16 v16, 0x1

    .line 148
    .local v16, "notify":Z
    :goto_1
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationsEnabled(Z)V

    .line 151
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getRingtone()Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, "ringtoneUri":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationRingtoneUri(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/16 v21, 0x1

    .line 157
    .local v21, "vibrate":Z
    :goto_2
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationVibrateEnabled(Z)V

    .line 159
    invoke-virtual {v12}, Lcom/kingsoft/mail/preferences/FolderPreferences;->commit()V

    goto/16 :goto_0

    .line 138
    .end local v10    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v12    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    .end local v16    # "notify":Z
    .end local v19    # "ringtoneUri":Ljava/lang/String;
    .end local v21    # "vibrate":Z
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 146
    .restart local v10    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v12    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 155
    .restart local v16    # "notify":Z
    .restart local v19    # "ringtoneUri":Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .line 163
    .end local v7    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v8    # "ecAccount":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "ecAccountCursor":Landroid/database/Cursor;
    .end local v10    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v11    # "folderCursor":Landroid/database/Cursor;
    .end local v12    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "isReplyAllSet":Z
    .end local v16    # "notify":Z
    .end local v19    # "ringtoneUri":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_8

    .line 165
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/Preferences;->getWhitelistedSenderAddresses()Ljava/util/Set;

    move-result-object v22

    .line 166
    .local v22, "whitelistedAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->setSenderWhitelist(Ljava/util/Set;)V

    .line 169
    .end local v22    # "whitelistedAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ge v0, v1, :cond_9

    .line 172
    const-string/jumbo v1, "none"

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/Preferences;->getConversationListIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v20, 0x1

    .line 174
    .local v20, "showSenderImages":Z
    :goto_3
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowSenderImages(Z)V

    .line 176
    .end local v20    # "showSenderImages":Z
    :cond_9
    return-void

    .line 172
    :cond_a
    const/16 v20, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected migrate(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string/jumbo v0, "------- creaete account in here "

    invoke-static {v0}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v7, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/uiaccts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 55
    const-string/jumbo v0, "EmailPrefMigrator"

    const-string/jumbo v1, "Null cursor returned from query to %s when migrating accounts from %d to %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/uiaccts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    :goto_0
    invoke-static {p1, p2, p3, v7}, Lcom/kingsoft/email/preferences/EmailPreferenceMigrator;->migrate(Landroid/content/Context;IILjava/util/List;)V

    .line 70
    return-void

    .line 61
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v0, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
