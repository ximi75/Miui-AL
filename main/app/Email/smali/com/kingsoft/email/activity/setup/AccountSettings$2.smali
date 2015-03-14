.class Lcom/kingsoft/email/activity/setup/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;->addAccountPreferencesEntry(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

.field final synthetic val$header:Landroid/preference/PreferenceActivity$Header;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$2;->val$header:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 569
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$2;->val$header:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$2;->val$header:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V

    .line 570
    return v4
.end method
