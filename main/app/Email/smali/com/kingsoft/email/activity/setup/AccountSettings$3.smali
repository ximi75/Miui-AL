.class Lcom/kingsoft/email/activity/setup/AccountSettings$3;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;->addOtherPrefereces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->access$500(Lcom/kingsoft/email/activity/setup/AccountSettings;)[Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->access$500(Lcom/kingsoft/email/activity/setup/AccountSettings;)[Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->getNoAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 592
    .local v0, "noAccountIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 593
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 599
    .end local v0    # "noAccountIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/Utils;->sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Z)V

    goto :goto_0
.end method
