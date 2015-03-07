.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$policiesCategory:Landroid/preference/PreferenceCategory;

.field final synthetic val$retryAccount:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->val$policiesCategory:Landroid/preference/PreferenceCategory;

    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->val$retryAccount:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1027
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->val$policiesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;->val$retryAccount:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1028
    const/4 v0, 0x1

    return v0
.end method
