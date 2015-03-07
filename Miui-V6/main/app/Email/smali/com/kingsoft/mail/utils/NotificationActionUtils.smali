.class public Lcom/kingsoft/mail/utils/NotificationActionUtils;
.super Ljava/lang/Object;
.source "NotificationActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/NotificationActionUtils$1;,
        Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;,
        Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotifActionUtils"

.field public static final sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

.field public static final sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat",
            "<",
            "Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field private static sUndoTimeoutMillis:J

.field public static final sUndoneConversations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    .line 64
    new-instance v0, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    .line 72
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoneConversations:Ljava/util/Set;

    .line 79
    new-instance v0, Lcom/kingsoft/mail/utils/SparseLongArray;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/SparseLongArray;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method

.method public static addNotificationActions(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Folder;IJLjava/util/Set;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationIntent"    # Landroid/content/Intent;
    .param p2, "notification"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p5, "message"    # Lcom/kingsoft/mail/providers/Message;
    .param p6, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p7, "notificationId"    # I
    .param p8, "when"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/providers/Conversation;",
            "Lcom/kingsoft/mail/providers/Message;",
            "Lcom/kingsoft/mail/providers/Folder;",
            "IJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p10, "notificationActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->getSortedNotificationActions(Lcom/kingsoft/mail/providers/Folder;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v14

    .line 204
    .local v14, "sortedActions":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 205
    .local v9, "notificationAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v9, v0, v1, v2}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->getActionIconResId(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)I

    move-result v15

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v9, v0, v1, v2}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->getDisplayStringResId(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-static/range {v3 .. v12}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->getNotificationActionPendingIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Folder;Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;IJ)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 211
    .end local v9    # "notificationAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    :cond_0
    return-void
.end method

.method public static cancelUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    const/4 v8, 0x0

    .line 702
    const-string/jumbo v4, "NotifActionUtils"

    const-string/jumbo v5, "cancelUndoNotification for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 705
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 706
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    .line 707
    .local v2, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 708
    .local v1, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v3

    .line 714
    .local v3, "notificationId":I
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoneConversations:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-static {p0, v3, v8}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->removeUndoNotification(Landroid/content/Context;IZ)V

    .line 716
    invoke-static {p0, v0, v2}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->resendNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 717
    return-void
.end method

.method public static cancelUndoTimeout(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    .line 596
    const-string/jumbo v2, "NotifActionUtils"

    const-string/jumbo v3, "cancelUndoTimeout for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 599
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 602
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createUndoTimeoutPendingIntent(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 605
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 606
    return-void
.end method

.method public static createForwardIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 387
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->createForwardIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    return-object v0
.end method

.method public static createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "isReplyAll"    # Z

    .prologue
    .line 376
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    return-object v0
.end method

.method public static createUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;I)Landroid/app/Notification;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    .param p2, "notificationId"    # I

    .prologue
    .line 526
    const-string/jumbo v8, "NotifActionUtils"

    const-string/jumbo v9, "createUndoNotification for %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v8, 0x7f020202

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 532
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getWhen()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 534
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0400b3

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 536
    .local v7, "undoView":Landroid/widget/RemoteViews;
    const v8, 0x7f0c00a6

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getActionTextResId()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.mail.action.notification.UNDO"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v1, "clickIntent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 544
    const/high16 v8, 0x10000000

    invoke-static {p0, p2, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 547
    .local v2, "clickPendingIntent":Landroid/app/PendingIntent;
    const v8, 0x7f0c023e

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 549
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 552
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.mail.action.notification.DESTRUCT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v3, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-static {v3, p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 555
    const/high16 v8, 0x10000000

    invoke-static {p0, p2, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 557
    .local v4, "deletePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 559
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 561
    .local v5, "notification":Landroid/app/Notification;
    return-object v5
.end method

.method public static createUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    .line 679
    const-string/jumbo v3, "NotifActionUtils"

    const-string/jumbo v4, "createUndoNotification for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 682
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v1

    .line 686
    .local v1, "notificationId":I
    invoke-static {p0, p1, v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;I)Landroid/app/Notification;

    move-result-object v0

    .line 689
    .local v0, "notification":Landroid/app/Notification;
    const-string/jumbo v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 691
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 693
    sget-object v3, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v3, v1, p1}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 694
    sget-object v3, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getWhen()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/kingsoft/mail/utils/SparseLongArray;->put(IJ)V

    .line 695
    return-void
.end method

.method private static createUndoTimeoutPendingIntent(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    .line 614
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.mail.action.notification.UNDO_TIMEOUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    invoke-static {v0, p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 618
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->hashCode()I

    move-result v4

    xor-int v2, v3, v4

    .line 620
    .local v2, "requestCode":I
    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 623
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getNotificationActionPendingIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Folder;Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;IJ)Landroid/app/PendingIntent;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "message"    # Lcom/kingsoft/mail/providers/Message;
    .param p4, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p5, "notificationIntent"    # Landroid/content/Intent;
    .param p6, "action"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    .param p7, "notificationId"    # I
    .param p8, "when"    # J

    .prologue
    .line 304
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 306
    .local v18, "messageUri":Landroid/net/Uri;
    new-instance v3, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/kingsoft/mail/providers/Message;->id:J

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v14, p8

    invoke-direct/range {v3 .. v15}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;-><init>(Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Folder;JLjava/lang/String;JJ)V

    .line 309
    .local v3, "notificationAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$1;->$SwitchMap$com$kingsoft$mail$utils$NotificationActionUtils$NotificationActionType:[I

    invoke-virtual/range {p6 .. p6}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 368
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid NotificationActionType"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :pswitch_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v20

    .line 315
    .local v20, "taskStackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v16

    .line 316
    .local v16, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v4, "extra-notification-folder"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mailfrom://mail/account/reply/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 322
    .local v19, "notificationUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 326
    const/high16 v4, 0x8000000

    move-object/from16 v0, v20

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    .line 363
    .end local v19    # "notificationUri":Landroid/net/Uri;
    .end local v20    # "taskStackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    return-object v4

    .line 331
    .end local v16    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v20

    .line 333
    .restart local v20    # "taskStackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v16

    .line 334
    .restart local v16    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v4, "extra-notification-folder"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mailfrom://mail/account/replyall/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 340
    .restart local v19    # "notificationUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 344
    const/high16 v4, 0x8000000

    move-object/from16 v0, v20

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_0

    .line 347
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "notificationUri":Landroid/net/Uri;
    .end local v20    # "taskStackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :pswitch_2
    const-string/jumbo v17, "com.android.mail.action.notification.ARCHIVE"

    .line 350
    .local v17, "intentAction":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.mail.action.notification.ARCHIVE"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v16    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 354
    const/high16 v4, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_0

    .line 357
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "intentAction":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v17, "com.android.mail.action.notification.DELETE"

    .line 359
    .restart local v17    # "intentAction":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.mail.action.notification.DELETE"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v16    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 363
    const/high16 v4, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSortedNotificationActions(Lcom/kingsoft/mail/providers/Folder;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p0, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Folder;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "notificationActionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v3, "unsortedActions":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->getActionType(Ljava/lang/String;)Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .local v2, "sortedActions":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 240
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_2
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_3
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_4
    :goto_1
    return-object v2

    .line 252
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 262
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 263
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_6
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 266
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_7
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 269
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_8
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 281
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_9
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 284
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_a
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 287
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_b
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 290
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static processDestructiveAction(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 631
    const-string/jumbo v7, "NotifActionUtils"

    const-string/jumbo v8, "processDestructiveAction: %s"

    new-array v9, v13, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 634
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v2

    .line 636
    .local v2, "destructAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 637
    .local v1, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    .line 639
    .local v3, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 640
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v7, v1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "forceUiNotifications"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 643
    .local v5, "uri":Landroid/net/Uri;
    sget-object v7, Lcom/kingsoft/mail/utils/NotificationActionUtils$1;->$SwitchMap$com$kingsoft$mail$utils$NotificationActionUtils$NotificationActionType:[I

    invoke-virtual {v2}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 669
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "The specified NotificationActionType is not a destructive action."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 645
    :pswitch_0
    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 647
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 648
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "operation"

    const-string/jumbo v8, "archive"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, v5, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 654
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 656
    .restart local v6    # "values":Landroid/content/ContentValues;
    iget-object v7, v3, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v7, v7, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "removeFolderUri":Ljava/lang/String;
    const-string/jumbo v7, "folders_updated"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, v5, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 665
    .end local v4    # "removeFolderUri":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :pswitch_1
    invoke-virtual {v0, v5, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static processUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    const/4 v8, 0x1

    .line 725
    const-string/jumbo v3, "NotifActionUtils"

    const-string/jumbo v4, "processUndoNotification, %s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 728
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 729
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    .line 730
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v2

    .line 732
    .local v2, "notificationId":I
    invoke-static {p0, v2, v8}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->removeUndoNotification(Landroid/content/Context;IZ)V

    .line 733
    sget-object v3, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

    invoke-virtual {v3, v2}, Lcom/kingsoft/mail/utils/SparseLongArray;->delete(I)V

    .line 734
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->processDestructiveAction(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 735
    sget-object v3, Lcom/kingsoft/mail/utils/NotificationActionUtils$1;->$SwitchMap$com$kingsoft$mail$utils$NotificationActionUtils$NotificationActionType:[I

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 742
    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->resendNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 747
    :pswitch_0
    return-void

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static putNotificationActionExtra(Landroid/content/Intent;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    const/4 v1, 0x0

    .line 804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 805
    .local v0, "out":Landroid/os/Parcel;
    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 806
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 807
    const-string/jumbo v1, "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 808
    return-void
.end method

.method public static registerUndoNotificationObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p0, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 783
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->getDataSetObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method public static registerUndoTimeout(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationAction"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    .line 570
    const-string/jumbo v4, "NotifActionUtils"

    const-string/jumbo v5, "registerUndoTimeout for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 573
    sget-wide v4, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    .line 578
    :cond_0
    const-string/jumbo v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 581
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    add-long v2, v4, v6

    .line 583
    .local v2, "triggerAtMills":J
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createUndoTimeoutPendingIntent(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 586
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 587
    return-void
.end method

.method private static removeUndoNotification(Landroid/content/Context;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I
    .param p2, "removeNow"    # Z

    .prologue
    .line 757
    sget-object v1, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->delete(I)V

    .line 759
    if-eqz p2, :cond_0

    .line 760
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 762
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 763
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public static resendNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 772
    const-string/jumbo v1, "NotifActionUtils"

    const-string/jumbo v2, "resendNotifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mail.action.RESEND_NOTIFICATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string/jumbo v1, "accountUri"

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 777
    const-string/jumbo v1, "folderUri"

    iget-object v2, p2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 778
    const-class v1, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 779
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 780
    return-void
.end method

.method public static unregisterUndoNotificationObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p0, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 787
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->getDataSetObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 788
    return-void
.end method
