.class Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountServerSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AccountSettings$1;

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 803
    if-nez p1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 806
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 808
    :cond_0
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 788
    return-void
.end method

.method public onProceedNext(ILcom/kingsoft/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .param p1, "checkMode"    # I
    .param p2, "target"    # Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    .prologue
    .line 792
    invoke-static {p1, p2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 794
    .local v0, "checkerFragment":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 795
    return-void
.end method
