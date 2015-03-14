.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxNotify:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxNotify:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/preferences/FolderPreferences;->areNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 752
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxVibrate:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/preferences/FolderPreferences;->isNotificationVibrateEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 754
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->setRingtoneSummary()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1400(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    .line 757
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mNotificationsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1500(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method
