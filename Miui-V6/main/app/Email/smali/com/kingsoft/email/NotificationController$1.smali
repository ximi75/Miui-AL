.class Lcom/kingsoft/email/NotificationController$1;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/NotificationController;->watchForMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/NotificationController;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/NotificationController;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    # getter for: Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/NotificationController;->access$000(Lcom/kingsoft/email/NotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    const-wide/high16 v2, 0x1000000000000000L

    # invokes: Lcom/kingsoft/email/NotificationController;->registerMessageNotification(J)V
    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/NotificationController;->access$100(Lcom/kingsoft/email/NotificationController;J)V

    .line 214
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    # getter for: Lcom/kingsoft/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/kingsoft/email/NotificationController;->access$200(Lcom/kingsoft/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 215
    # getter for: Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Observing account changes for notifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    new-instance v2, Lcom/kingsoft/email/NotificationController$AccountContentObserver;

    # getter for: Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$400()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    # getter for: Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/email/NotificationController;->access$000(Lcom/kingsoft/email/NotificationController;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/NotificationController$AccountContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    # setter for: Lcom/kingsoft/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1, v2}, Lcom/kingsoft/email/NotificationController;->access$202(Lcom/kingsoft/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 217
    sget-object v1, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingsoft/email/NotificationController$1;->this$0:Lcom/kingsoft/email/NotificationController;

    # getter for: Lcom/kingsoft/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/kingsoft/email/NotificationController;->access$200(Lcom/kingsoft/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    :cond_0
    return-void
.end method
