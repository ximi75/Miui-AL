.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;
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


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 1035
    const-string/jumbo v0, "A16"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z
    invoke-static {v0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1702(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 1037
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;->onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 1038
    return v2
.end method
