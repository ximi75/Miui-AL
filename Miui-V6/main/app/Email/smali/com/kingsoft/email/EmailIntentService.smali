.class public Lcom/kingsoft/email/EmailIntentService;
.super Lcom/kingsoft/mail/MailIntentService;
.source "EmailIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/EmailIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "EmailIntentService"

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/MailIntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/kingsoft/mail/MailIntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 38
    sget-object v0, Lcom/kingsoft/email/EmailIntentService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Handling intent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    return-void
.end method
