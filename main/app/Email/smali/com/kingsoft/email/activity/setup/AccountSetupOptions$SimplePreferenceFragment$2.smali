.class Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$calendar:Z

.field final synthetic val$contacts:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;Lcom/android/emailcommon/provider/Account;ZZ)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-boolean p3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$calendar:Z

    iput-boolean p4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$contacts:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 380
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 382
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$calendar:Z

    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$contacts:Z

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    iget-object v5, v5, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/service/EmailServiceUtils;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    .line 385
    new-instance v6, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    .local v6, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-virtual {v6, v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setDefaultInboxNotificationsEnabled(Z)V

    .line 389
    invoke-virtual {v6, v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setNotificationsEnabled(Z)V

    .line 390
    return-void
.end method
