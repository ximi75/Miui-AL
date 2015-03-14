.class Lcom/kingsoft/email/NotificationController$AccountContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 792
    iput-object p2, p0, Lcom/kingsoft/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    .line 793
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 797
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 798
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 800
    .local v8, "c":Landroid/database/Cursor;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 801
    .local v10, "newAccountList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 802
    .local v11, "removedAccountList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v8, :cond_0

    .line 804
    # getter for: Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#onChange(); NULL response for account id query"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 834
    :goto_0
    return-void

    .line 808
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 810
    .local v6, "accountId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 813
    .end local v6    # "accountId":J
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 818
    # getter for: Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$1300()Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    # getter for: Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/NotificationController;->access$1400(Lcom/kingsoft/email/NotificationController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 819
    .restart local v6    # "accountId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 821
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 825
    .end local v6    # "accountId":J
    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 826
    .restart local v6    # "accountId":J
    # getter for: Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$1300()Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    # invokes: Lcom/kingsoft/email/NotificationController;->registerMessageNotification(J)V
    invoke-static {v1, v6, v7}, Lcom/kingsoft/email/NotificationController;->access$100(Lcom/kingsoft/email/NotificationController;J)V

    goto :goto_3

    .line 829
    .end local v6    # "accountId":J
    :cond_4
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 830
    .restart local v6    # "accountId":J
    # getter for: Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$1300()Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    # invokes: Lcom/kingsoft/email/NotificationController;->unregisterMessageNotification(J)V
    invoke-static {v1, v6, v7}, Lcom/kingsoft/email/NotificationController;->access$1500(Lcom/kingsoft/email/NotificationController;J)V

    goto :goto_4

    .line 833
    .end local v6    # "accountId":J
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/kingsoft/email/NotificationController;->refreshAllNotifications(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/kingsoft/email/NotificationController;->access$1600(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
