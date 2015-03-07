.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$9;
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
    .line 959
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 962
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->showRingtonePicker()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    .line 964
    const/4 v0, 0x1

    return v0
.end method
