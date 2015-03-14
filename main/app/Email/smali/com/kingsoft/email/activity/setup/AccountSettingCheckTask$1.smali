.class Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;
.super Ljava/lang/Object;
.source "AccountSettingCheckTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->notifyUI(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

.field final synthetic val$login_err_msg:Ljava/lang/String;

.field final synthetic val$result:Lcom/kingsoft/emailcommon/mail/MessagingException;

.field final synthetic val$setupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$result:Lcom/kingsoft/emailcommon/mail/MessagingException;

    iput-object p4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$login_err_msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mCheckAccountResult:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mCheckAccountResult:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;

    move-result-object v0

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$result:Lcom/kingsoft/emailcommon/mail/MessagingException;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$login_err_msg:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;->onResult(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "AccountSettingCheckTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;->val$result:Lcom/kingsoft/emailcommon/mail/MessagingException;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0
.end method
