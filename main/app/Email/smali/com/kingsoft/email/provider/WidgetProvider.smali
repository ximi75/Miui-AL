.class public Lcom/kingsoft/email/provider/WidgetProvider;
.super Lcom/kingsoft/mail/widget/BaseWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field private static final LEGACY_ACCOUNT_ID_PREFIX:Ljava/lang/String; = "accountId_"

.field private static final LEGACY_MAILBOX_ID_PREFIX:Ljava/lang/String; = "mailboxId_"

.field private static final LEGACY_PREFS_NAME:Ljava/lang/String; = "com.android.email.widget.WidgetManager"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;-><init>()V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "ac":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/kingsoft/email/provider/WidgetProvider;->getPopulatedAccountObject(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    .line 149
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    return-object v7
.end method

.method private static getPopulatedAccountObject(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/Account;
    .locals 4
    .param p0, "accountCursor"    # Landroid/database/Cursor;

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    sget-object v1, Lcom/kingsoft/email/provider/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null account cursor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 161
    .local v0, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    new-instance v0, Lcom/kingsoft/mail/providers/Account;

    .end local v0    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    invoke-direct {v0, p0}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .restart local v0    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static loadAccountIdPref(Landroid/content/Context;I)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 176
    const-string/jumbo v3, "com.android.email.widget.WidgetManager"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 177
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accountId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    .local v0, "accountId":J
    return-wide v0
.end method

.method static loadMailboxIdPref(Landroid/content/Context;I)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 187
    const-string/jumbo v3, "com.android.email.widget.WidgetManager"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 188
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mailboxId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 189
    .local v0, "mailboxId":J
    return-wide v0
.end method

.method private static migrateLegacyWidgetAccountId(J)J
    .locals 2
    .param p0, "accountId"    # J

    .prologue
    .line 123
    const-wide/high16 v0, 0x1000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 124
    const-wide/32 p0, 0x10000000

    .line 126
    .end local p0    # "accountId":J
    :cond_0
    return-wide p0
.end method

.method private static migrateLegacyWidgetMailboxId(JJ)J
    .locals 2
    .param p0, "mailboxId"    # J
    .param p2, "accountId"    # J

    .prologue
    .line 134
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide p0

    .line 139
    .end local p0    # "mailboxId":J
    :cond_0
    :goto_0
    return-wide p0

    .line 136
    .restart local p0    # "mailboxId":J
    :cond_1
    const-wide/16 v0, -0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 137
    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method protected getAccountObject(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, "accountCursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/kingsoft/email/provider/WidgetProvider;->getPopulatedAccountObject(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    return-object v1
.end method

.method protected isAccountValid(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 72
    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 78
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 80
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "accountCursor":Landroid/database/Cursor;
    :goto_1
    return v1

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "accountCursor":Landroid/database/Cursor;
    :cond_0
    move v1, v7

    .line 78
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "accountCursor":Landroid/database/Cursor;
    :cond_1
    move v1, v7

    .line 84
    goto :goto_1
.end method

.method protected migrateLegacyWidgetInformation(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetId"    # I

    .prologue
    .line 89
    const-string/jumbo v2, "com.android.email.widget.WidgetManager"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 90
    .local v15, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 92
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p1 .. p2}, Lcom/kingsoft/email/provider/WidgetProvider;->loadAccountIdPref(Landroid/content/Context;I)J

    move-result-wide v10

    .line 93
    .local v10, "accountId":J
    invoke-static/range {p1 .. p2}, Lcom/kingsoft/email/provider/WidgetProvider;->loadMailboxIdPref(Landroid/content/Context;I)J

    move-result-wide v13

    .line 95
    .local v13, "mailboxId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_1

    .line 96
    :cond_0
    sget-object v2, Lcom/kingsoft/email/provider/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t load account or mailbox.  accountId: %d mailboxId: %d widgetId %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {v10, v11}, Lcom/kingsoft/email/provider/WidgetProvider;->migrateLegacyWidgetAccountId(J)J

    move-result-wide v10

    .line 102
    invoke-static {v13, v14, v10, v11}, Lcom/kingsoft/email/provider/WidgetProvider;->migrateLegacyWidgetMailboxId(JJ)J

    move-result-wide v13

    .line 105
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/kingsoft/email/provider/WidgetProvider;->getAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    .line 106
    .local v5, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/kingsoft/email/provider/EmailProvider;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v16

    .line 108
    .local v16, "uiFolder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v5, :cond_2

    if-eqz v16, :cond_2

    .line 109
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v5, v2}, Lcom/kingsoft/mail/widget/WidgetService;->saveWidgetInformation(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, v16

    iget v6, v0, Lcom/kingsoft/mail/providers/Folder;->type:I

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v7, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/kingsoft/email/provider/WidgetProvider;->updateWidgetInternal(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accountId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mailboxId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_2
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 49
    const-string/jumbo v6, "com.android.email.widget.WidgetManager"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 50
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    .line 53
    .local v5, "widgetId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "accountId_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mailboxId_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v5    # "widgetId":I
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method
