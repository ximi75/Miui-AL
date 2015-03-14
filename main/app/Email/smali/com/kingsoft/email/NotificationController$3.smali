.class Lcom/kingsoft/email/NotificationController$3;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/NotificationController;->cancelSecurityNeededNotification()V
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
    .line 605
    iput-object p1, p0, Lcom/kingsoft/email/NotificationController$3;->this$0:Lcom/kingsoft/email/NotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 608
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController$3;->this$0:Lcom/kingsoft/email/NotificationController;

    # getter for: Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/NotificationController;->access$000(Lcom/kingsoft/email/NotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 610
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 612
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 614
    .local v7, "id":J
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController$3;->this$0:Lcom/kingsoft/email/NotificationController;

    # getter for: Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/kingsoft/email/NotificationController;->access$1100(Lcom/kingsoft/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v0

    const-wide/32 v1, 0x30000000

    add-long/2addr v1, v7

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 618
    .end local v7    # "id":J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_1
    return-void
.end method
