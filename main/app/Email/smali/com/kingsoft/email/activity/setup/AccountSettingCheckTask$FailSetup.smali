.class Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
.super Ljava/lang/Object;
.source "AccountSettingCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FailSetup"
.end annotation


# instance fields
.field errlog:Ljava/lang/String;

.field exce:Lcom/kingsoft/emailcommon/mail/MessagingException;

.field id:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

.field type:I


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/MessagingException;ILjava/lang/String;)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p4, "type"    # I
    .param p5, "errlog"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->id:Ljava/lang/String;

    .line 402
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->exce:Lcom/kingsoft/emailcommon/mail/MessagingException;

    .line 403
    iput p4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->type:I

    .line 404
    iput-object p5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->errlog:Ljava/lang/String;

    .line 405
    return-void
.end method
