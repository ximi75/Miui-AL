.class Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AccountSettings$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->finish()V

    .line 777
    return-void
.end method

.method public onEditQuickResponses(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onEditQuickResponses(Lcom/kingsoft/mail/providers/Account;)V

    .line 765
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 769
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 773
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    return-void
.end method
