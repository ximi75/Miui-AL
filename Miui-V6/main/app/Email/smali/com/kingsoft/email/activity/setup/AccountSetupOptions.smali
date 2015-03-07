.class public Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
.super Lcom/kingsoft/mail/ui/BasePreferenceActivity;
.source "AccountSetupOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;
    }
.end annotation


# static fields
.field private static final ANIMATED_PREFERENCE:Ljava/lang/String; = "animated_preference"

.field private static final DEBUG_SETUP_FLOWS:Z = false

.field public static final PROVIDER:Ljava/lang/String; = "CONFIG_PROVIDER"

.field public static final REQUEST_CODE_ACCEPT_POLICIES:I = 0x1


# instance fields
.field private mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field protected mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;-><init>()V

    .line 134
    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 1
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V

    .line 83
    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p2, "provider"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .prologue
    .line 86
    new-instance v1, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v2, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.email.setupdata"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    if-eqz p2, :cond_0

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "CONFIG_PROVIDER"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 101
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    if-nez v4, :cond_0

    .line 102
    const-string/jumbo v4, "com.android.email.setupdata"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v4, :cond_1

    .line 104
    const-string/jumbo v4, "CONFIG_PROVIDER"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 106
    :cond_1
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/ActionBar;->hide()V

    .line 111
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 112
    .local v2, "fm":Landroid/app/FragmentManager;
    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 113
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_2

    .line 114
    invoke-static {}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->initialize()Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    move-result-object v1

    .line 115
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 116
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const v4, 0x1020002

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 117
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onResume()V

    .line 124
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string/jumbo v0, "com.android.email.setupdata"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    return-void
.end method
