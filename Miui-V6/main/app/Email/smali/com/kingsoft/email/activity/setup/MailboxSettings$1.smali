.class Lcom/kingsoft/email/activity/setup/MailboxSettings$1;
.super Ljava/lang/Object;
.source "MailboxSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$1;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$1;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$600(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$1;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$600(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$1;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$600(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v0, 0x0

    return v0
.end method
