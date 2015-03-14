.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;
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
    .line 791
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->createDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    const/4 v0, 0x1

    return v0
.end method
