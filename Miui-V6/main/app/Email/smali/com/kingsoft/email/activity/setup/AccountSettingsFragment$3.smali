.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettingsOffMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 707
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    if-nez v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 713
    .local v9, "folderCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 719
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    new-instance v8, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v8, v9}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .local v8, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 728
    new-instance v6, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 730
    .local v6, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    new-instance v1, Lcom/kingsoft/mail/preferences/FolderPreferences;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v8, v4}, Lcom/kingsoft/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Z)V

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1002(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/kingsoft/mail/preferences/FolderPreferences;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    .line 733
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->moveNotificationSetting(Lcom/kingsoft/mail/preferences/AccountPreferences;Lcom/kingsoft/mail/preferences/FolderPreferences;)V

    .line 736
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/FolderPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v10

    .line 737
    .local v10, "ringtoneUri":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 742
    .local v7, "activity":Landroid/app/Activity;
    if-eqz v7, :cond_0

    .line 743
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 725
    .end local v6    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v10    # "ringtoneUri":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
