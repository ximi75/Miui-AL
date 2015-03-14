.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1108
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v13}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v11

    .line 1110
    .local v11, "size":I
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 1111
    .local v4, "am":Landroid/accounts/AccountManager;
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v10

    .line 1113
    .local v10, "myAcc":Landroid/accounts/Account;
    if-eqz v4, :cond_1

    .line 1114
    iget-object v12, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 1115
    .local v3, "accs":[Landroid/accounts/Account;
    const/4 v6, 0x1

    .line 1116
    .local v6, "deleted":Z
    move-object v5, v3

    .local v5, "arr$":[Landroid/accounts/Account;
    array-length v8, v5

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v5, v7

    .line 1117
    .local v0, "acc":Landroid/accounts/Account;
    invoke-virtual {v0, v10}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1118
    const/4 v6, 0x0

    .line 1122
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_0
    if-nez v6, :cond_6

    .line 1123
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v12, v13}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1131
    .end local v3    # "accs":[Landroid/accounts/Account;
    .end local v5    # "arr$":[Landroid/accounts/Account;
    .end local v6    # "deleted":Z
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_1
    :goto_1
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1132
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Account;->getAccountKey()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, "accountKey":Ljava/lang/String;
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v9

    .line 1134
    .local v9, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual {v9, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->removeAllQuickReplyCache(Ljava/lang/String;)V

    .line 1139
    .end local v1    # "accountKey":Ljava/lang/String;
    .end local v9    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_2
    new-instance v2, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v13, v13, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v13}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1140
    .local v2, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->clearAllPreferences()V

    .line 1143
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1144
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kingsoft/mail/preferences/FolderPreferences;->clearAllPreferences()V

    .line 1146
    :cond_3
    const/4 v12, 0x1

    if-gt v11, v12, :cond_4

    .line 1147
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    .line 1149
    :cond_4
    return-void

    .line 1116
    .end local v2    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    .restart local v0    # "acc":Landroid/accounts/Account;
    .restart local v3    # "accs":[Landroid/accounts/Account;
    .restart local v5    # "arr$":[Landroid/accounts/Account;
    .restart local v6    # "deleted":Z
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1126
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_6
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/kingsoft/email/provider/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 1128
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12$2;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    iget-object v12, v12, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/email/service/EmailServiceUtils;->startRemoteServices(Landroid/content/Context;)V

    goto/16 :goto_1
.end method
