.class Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;
.super Ljava/lang/Object;
.source "ChangePWAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/ChangePWAlertActivity;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

.field final synthetic val$recvHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field final synthetic val$sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/ChangePWAlertActivity;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    iput-object p2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$recvHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object p3, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$recvHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$recvHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    iget-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$recvHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    iget-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;->val$sendHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 139
    :cond_1
    return-void
.end method
