.class public Lcom/kingsoft/mail/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;,
        Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;,
        Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    }
.end annotation


# static fields
.field private static final BIDI_FORMATTER:Landroid/support/v4/text/BidiFormatter;

.field public static final LOG_TAG:Ljava/lang/String; = "NotifUtils"

.field private static final MESSAGE_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private static sActiveNotificationMap:Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

.field private static sElidedPaddingToken:Ljava/lang/String;

.field private static final sNotificationIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationReadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sNotificationUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

.field private static sSendersSplitToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    sput-object v1, Lcom/kingsoft/mail/utils/NotificationUtils;->sActiveNotificationMap:Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationIcons:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationUtils$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/NotificationUtils$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->MESSAGE_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 102
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->BIDI_FORMATTER:Landroid/support/v4/text/BidiFormatter;

    .line 1377
    sput-object v1, Lcom/kingsoft/mail/utils/NotificationUtils;->sSendersSplitToken:Ljava/lang/String;

    .line 1378
    sput-object v1, Lcom/kingsoft/mail/utils/NotificationUtils;->sElidedPaddingToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1765
    return-void
.end method

.method private static addSentFailNotificationActions(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "accountId"    # J

    .prologue
    const v9, 0x7f1002b0

    const/high16 v8, 0x8000000

    .line 633
    const-string/jumbo v1, "com.android.mail.action.notification.RESEND"

    .line 634
    .local v1, "intentActionR":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.mail.action.notification.RESEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v3, "intentR":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string/jumbo v6, "accountId"

    invoke-virtual {v3, v6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 638
    invoke-static {p0, v9, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 642
    .local v5, "pdIntentR":Landroid/app/PendingIntent;
    const v6, 0x7f020215

    const v7, 0x7f1002a4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 647
    const-string/jumbo v0, "com.android.mail.action.notification.NO_RESEND"

    .line 648
    .local v0, "intentActionN":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.mail.action.notification.NO_RESEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, "intentN":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-static {p0, v9, v2, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 655
    .local v4, "pdIntentN":Landroid/app/PendingIntent;
    const v6, 0x7f020214

    const v7, 0x7f1002a3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 659
    return-void
.end method

.method public static cancelAllNotifications(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const-string/jumbo v1, "NotifUtils"

    const-string/jumbo v2, "cancelAllNotifications - cancelling all"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 275
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 276
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 277
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->clearAllNotfications(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public static cancelAndResendNotifications(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 285
    const-string/jumbo v0, "NotifUtils"

    const-string/jumbo v1, "cancelAndResendNotifications"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    const/4 v0, 0x1

    invoke-static {p0, v0, v3, v3}, Lcom/kingsoft/mail/utils/NotificationUtils;->resendNotifications(Landroid/content/Context;ZLandroid/net/Uri;Lcom/kingsoft/mail/utils/FolderUri;)V

    .line 287
    return-void
.end method

.method private static checkNeedNotify(Landroid/content/Context;Landroid/database/Cursor;J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "notificationId"    # J

    .prologue
    const/4 v7, -0x1

    .line 924
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 927
    .local v1, "notifiedMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 930
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "notifiedMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v2, "notifiedMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object v1, v2

    .line 932
    .end local v2    # "notifiedMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1    # "notifiedMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    const/4 v3, 0x0

    .line 934
    .local v3, "refresh":Z
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 935
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 937
    const/4 v3, 0x1

    goto :goto_0

    .line 942
    :cond_2
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v3

    .line 942
    .end local v3    # "refresh":Z
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v4
.end method

.method public static clearAccountNotifications(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1631
    const-string/jumbo v9, "NotifUtils"

    const-string/jumbo v10, "Clearing all notifications"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1632
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v8

    .line 1635
    .local v8, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 1637
    .local v3, "keyBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;>;"
    invoke-virtual {v8}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 1638
    .local v2, "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v9, v2, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1639
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1643
    .end local v2    # "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 1645
    .local v6, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;>;"
    const-string/jumbo v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 1648
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 1649
    .local v5, "notificationKey":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v0, v5, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    .line 1650
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-static {p1, v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v4

    .line 1651
    .local v4, "nId":I
    invoke-virtual {v7, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1652
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v9

    int-to-long v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    invoke-virtual {v8, v5}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1656
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v4    # "nId":I
    .end local v5    # "notificationKey":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    :cond_2
    invoke-virtual {v8, p0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 1657
    return-void
.end method

.method public static clearAllNotfications(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string/jumbo v1, "NotifUtils"

    const-string/jumbo v2, "Clearing all notifications."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v0

    .line 110
    .local v0, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->clear()V

    .line 111
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public static clearFolderNotification(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "markSeen"    # Z

    .prologue
    .line 1610
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v3

    .line 1611
    .local v3, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    invoke-direct {v0, p1, p2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;-><init>(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 1612
    .local v0, "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    invoke-virtual {v3, p0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 1615
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1617
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v1

    .line 1618
    .local v1, "nId":I
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1619
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v4

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    if-eqz p3, :cond_0

    .line 1622
    invoke-static {p0, p2}, Lcom/kingsoft/mail/utils/NotificationUtils;->markSeen(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;)V

    .line 1624
    :cond_0
    return-void
.end method

.method private static configureLatestEventInfoFromConversation(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/preferences/FolderPreferences;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/database/Cursor;Landroid/app/PendingIntent;Landroid/content/Intent;IILcom/kingsoft/mail/providers/Folder;J)V
    .locals 40
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folderPreferences"    # Lcom/kingsoft/mail/preferences/FolderPreferences;
    .param p3, "notification"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p4, "conversationCursor"    # Landroid/database/Cursor;
    .param p5, "clickIntent"    # Landroid/app/PendingIntent;
    .param p6, "notificationIntent"    # Landroid/content/Intent;
    .param p7, "unreadCount"    # I
    .param p8, "unseenCount"    # I
    .param p9, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p10, "when"    # J

    .prologue
    .line 1086
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 1087
    .local v35, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1089
    .local v31, "notificationAccount":Ljava/lang/String;
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v6, "Showing notification with unreadCount of %d and unseenCount of %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1092
    const/16 v33, 0x0

    .line 1096
    .local v33, "notificationTicker":Ljava/lang/String;
    move-object/from16 v0, p9

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v4, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1099
    .local v24, "isInbox":Z
    if-eqz v24, :cond_8

    const/16 v32, 0x0

    .line 1101
    .local v32, "notificationLabelName":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p8

    if-le v0, v4, :cond_14

    .line 1103
    const v4, 0x7f100285

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 1106
    .local v30, "newMessagesString":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getDefaultNotificationIcon(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1110
    move-object/from16 v33, v30

    .line 1113
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1116
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->isRunningJellybeanOrLater()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 1122
    .local v25, "maxNumDigestItems":I
    if-eqz v24, :cond_9

    move-object/from16 v4, v31

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1124
    new-instance v19, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1127
    .local v19, "digest":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const/16 v34, 0x0

    .line 1129
    .local v34, "numDigestItems":I
    :cond_0
    new-instance v10, Lcom/kingsoft/mail/providers/Conversation;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1131
    .local v10, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v4, v10, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    if-nez v4, :cond_3

    .line 1132
    const/16 v28, 0x0

    .line 1135
    .local v28, "multipleUnreadThread":Z
    const/16 v18, 0x0

    .line 1136
    .local v18, "cursor":Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 1138
    .local v26, "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :try_start_0
    iget-object v4, v10, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v39

    .line 1139
    .local v39, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "label"

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1141
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1143
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_a

    .line 1184
    :cond_1
    if-eqz v26, :cond_2

    .line 1185
    invoke-virtual/range {v26 .. v26}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 1187
    :cond_2
    if-eqz v18, :cond_3

    .line 1188
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1192
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .end local v28    # "multipleUnreadThread":Z
    .end local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_3
    :goto_2
    move/from16 v0, v34

    move/from16 v1, v25

    if-gt v0, v1, :cond_4

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1331
    .end local v10    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v19    # "digest":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v25    # "maxNumDigestItems":I
    .end local v30    # "newMessagesString":Ljava/lang/String;
    .end local v31    # "notificationAccount":Ljava/lang/String;
    .end local v34    # "numDigestItems":I
    :cond_4
    :goto_3
    if-eqz v32, :cond_5

    if-eqz v33, :cond_5

    .line 1333
    const v4, 0x7f10020b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v32, v6, v7

    const/4 v7, 0x1

    aput-object v33, v6, v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 1337
    :cond_5
    if-eqz v33, :cond_6

    .line 1339
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1343
    :cond_6
    const/4 v4, 0x1

    move/from16 v0, p7

    if-le v0, v4, :cond_7

    .line 1344
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1347
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1348
    return-void

    .line 1099
    .end local v32    # "notificationLabelName":Ljava/lang/String;
    .restart local v31    # "notificationAccount":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p9

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    goto/16 :goto_0

    .line 1122
    .restart local v25    # "maxNumDigestItems":I
    .restart local v30    # "newMessagesString":Ljava/lang/String;
    .restart local v32    # "notificationLabelName":Ljava/lang/String;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1146
    .restart local v10    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "digest":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v28    # "multipleUnreadThread":Z
    .restart local v34    # "numDigestItems":I
    .restart local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_a
    :try_start_1
    new-instance v27, Lcom/kingsoft/mail/browse/MessageCursor;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/MessageCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    .end local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .local v27, "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :try_start_2
    const-string/jumbo v22, ""

    .line 1149
    .local v22, "from":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 1150
    .local v23, "fromAddress":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1151
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v11

    .line 1152
    .local v11, "message":Lcom/kingsoft/mail/providers/Message;
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v23

    .line 1153
    if-nez v23, :cond_b

    .line 1154
    const-string/jumbo v23, ""

    .line 1156
    :cond_b
    invoke-static/range {v23 .. v23}, Lcom/kingsoft/mail/utils/NotificationUtils;->getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1158
    .end local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_c
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1159
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v11

    .line 1160
    .restart local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    iget-boolean v4, v11, Lcom/kingsoft/mail/providers/Message;->read:Z

    if-nez v4, :cond_c

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1162
    const/16 v28, 0x1

    .line 1167
    .end local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_d
    if-eqz v28, :cond_f

    .line 1168
    const v4, 0x7f0e003f

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    .line 1171
    .local v37, "sendersLength":I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v37

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/NotificationUtils;->getStyledSenders(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 1177
    .end local v37    # "sendersLength":I
    .local v36, "sendersBuilder":Landroid/text/SpannableStringBuilder;
    :goto_4
    invoke-virtual/range {v36 .. v36}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v10, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    iget-object v7, v10, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7}, Lcom/kingsoft/mail/utils/NotificationUtils;->getSingleMessageInboxLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1181
    .local v20, "digestLine":Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1182
    add-int/lit8 v34, v34, 0x1

    .line 1184
    if-eqz v27, :cond_e

    .line 1185
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 1187
    :cond_e
    if-eqz v18, :cond_3

    .line 1188
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1174
    .end local v20    # "digestLine":Ljava/lang/CharSequence;
    .end local v36    # "sendersBuilder":Landroid/text/SpannableStringBuilder;
    :cond_f
    :try_start_3
    new-instance v36, Landroid/text/SpannableStringBuilder;

    invoke-static/range {v22 .. v22}, Lcom/kingsoft/mail/utils/NotificationUtils;->getWrappedFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .restart local v36    # "sendersBuilder":Landroid/text/SpannableStringBuilder;
    goto :goto_4

    .line 1184
    .end local v22    # "from":Ljava/lang/String;
    .end local v23    # "fromAddress":Ljava/lang/String;
    .end local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .end local v36    # "sendersBuilder":Landroid/text/SpannableStringBuilder;
    .end local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v26, :cond_10

    .line 1185
    invoke-virtual/range {v26 .. v26}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 1187
    :cond_10
    if-eqz v18, :cond_11

    .line 1188
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4

    .line 1195
    .end local v10    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v19    # "digest":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v25    # "maxNumDigestItems":I
    .end local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .end local v28    # "multipleUnreadThread":Z
    .end local v34    # "numDigestItems":I
    :cond_12
    if-eqz v24, :cond_13

    .end local v31    # "notificationAccount":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .restart local v31    # "notificationAccount":Ljava/lang/String;
    :cond_13
    move-object/from16 v31, v32

    goto :goto_6

    .line 1203
    .end local v30    # "newMessagesString":Ljava/lang/String;
    :cond_14
    invoke-static/range {p4 .. p4}, Lcom/kingsoft/mail/utils/NotificationUtils;->seekToLatestUnreadConversation(Landroid/database/Cursor;)Z

    .line 1205
    new-instance v10, Lcom/kingsoft/mail/providers/Conversation;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1207
    .restart local v10    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    const/16 v18, 0x0

    .line 1208
    .restart local v18    # "cursor":Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 1209
    .restart local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    const/16 v29, 0x0

    .line 1210
    .local v29, "multipleUnseenThread":Z
    const/16 v22, 0x0

    .line 1212
    .restart local v22    # "from":Ljava/lang/String;
    :try_start_4
    iget-object v4, v10, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "label"

    move-object/from16 v0, p9

    iget-object v7, v0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1214
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1216
    new-instance v27, Lcom/kingsoft/mail/browse/MessageCursor;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/MessageCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1220
    .end local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :try_start_5
    const-string/jumbo v23, ""

    .line 1221
    .restart local v23    # "fromAddress":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1222
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v11

    .line 1223
    .restart local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v23

    .line 1224
    invoke-static/range {v23 .. v23}, Lcom/kingsoft/mail/utils/NotificationUtils;->getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1230
    .end local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_15
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getPosition()I

    move-result v21

    .line 1231
    .local v21, "firstUnseenMessagePos":I
    :cond_16
    :goto_7
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1232
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v11

    .line 1233
    .restart local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    iget-boolean v4, v11, Lcom/kingsoft/mail/providers/Message;->seen:Z

    if-nez v4, :cond_17

    const/16 v38, 0x1

    .line 1234
    .local v38, "unseen":Z
    :goto_8
    if-eqz v38, :cond_16

    .line 1235
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getPosition()I

    move-result v21

    .line 1236
    if-nez v29, :cond_16

    if-eqz v23, :cond_16

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1238
    const/16 v29, 0x1

    goto :goto_7

    .line 1233
    .end local v38    # "unseen":Z
    :cond_17
    const/16 v38, 0x0

    goto :goto_8

    .line 1244
    .end local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_18
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->isRunningJellybeanOrLater()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1247
    if-eqz v29, :cond_1b

    .line 1249
    const v4, 0x7f0e003f

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    .line 1251
    .restart local v37    # "sendersLength":I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v37

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/NotificationUtils;->getStyledSenders(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    .line 1254
    .restart local v36    # "sendersBuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1256
    invoke-virtual/range {v36 .. v36}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1266
    .end local v36    # "sendersBuilder":Landroid/text/SpannableStringBuilder;
    .end local v37    # "sendersLength":I
    :goto_9
    iget-object v4, v10, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getSingleMessageLittleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1272
    if-eqz v24, :cond_1c

    .end local v31    # "notificationAccount":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1278
    new-instance v17, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1283
    .local v17, "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1284
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v11

    .line 1285
    .restart local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    iget-object v4, v10, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v11}, Lcom/kingsoft/mail/utils/NotificationUtils;->getSingleMessageBigText(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Message;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 1292
    :goto_b
    if-eqz v11, :cond_19

    .line 1293
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/FolderPreferences;->getNotificationActions(Lcom/kingsoft/mail/providers/Account;)Ljava/util/Set;

    move-result-object v16

    .line 1296
    .local v16, "notificationActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-static {v4, v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v13

    .local v13, "notificationId":I
    move-object/from16 v6, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    move-object/from16 v12, p9

    move-wide/from16 v14, p10

    .line 1299
    invoke-static/range {v6 .. v16}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->addNotificationActions(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Folder;IJLjava/util/Set;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1321
    .end local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    .end local v13    # "notificationId":I
    .end local v16    # "notificationActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    :cond_19
    :goto_c
    if-eqz v27, :cond_1a

    .line 1322
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 1324
    :cond_1a
    if-eqz v18, :cond_4

    .line 1325
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1258
    .restart local v31    # "notificationAccount":Ljava/lang/String;
    :cond_1b
    :try_start_6
    invoke-static/range {v22 .. v22}, Lcom/kingsoft/mail/utils/NotificationUtils;->getWrappedFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1260
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1262
    move-object/from16 v33, v22

    goto :goto_9

    .line 1272
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_a

    .line 1288
    .end local v31    # "notificationAccount":Ljava/lang/String;
    .restart local v17    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    :cond_1d
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v6, "Failed to load message"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1289
    const/4 v11, 0x0

    .restart local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    goto :goto_b

    .line 1308
    .end local v11    # "message":Lcom/kingsoft/mail/providers/Message;
    .end local v17    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .restart local v31    # "notificationAccount":Ljava/lang/String;
    :cond_1e
    iget-object v4, v10, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getSingleMessageNotificationTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1314
    if-eqz v24, :cond_1f

    .end local v31    # "notificationAccount":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1318
    move-object/from16 v33, v22

    goto :goto_c

    .restart local v31    # "notificationAccount":Ljava/lang/String;
    :cond_1f
    move-object/from16 v31, v32

    .line 1314
    goto :goto_d

    .line 1321
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v21    # "firstUnseenMessagePos":I
    .end local v23    # "fromAddress":Ljava/lang/String;
    .end local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :catchall_1
    move-exception v4

    .end local v31    # "notificationAccount":Ljava/lang/String;
    :goto_e
    if-eqz v26, :cond_20

    .line 1322
    invoke-virtual/range {v26 .. v26}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 1324
    :cond_20
    if-eqz v18, :cond_21

    .line 1325
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_21
    throw v4

    .line 1321
    .end local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :catchall_2
    move-exception v4

    move-object/from16 v26, v27

    .end local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    goto :goto_e

    .line 1184
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v22    # "from":Ljava/lang/String;
    .end local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .end local v29    # "multipleUnseenThread":Z
    .restart local v19    # "digest":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v25    # "maxNumDigestItems":I
    .restart local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v28    # "multipleUnreadThread":Z
    .restart local v30    # "newMessagesString":Ljava/lang/String;
    .restart local v31    # "notificationAccount":Ljava/lang/String;
    .restart local v34    # "numDigestItems":I
    .restart local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :catchall_3
    move-exception v4

    move-object/from16 v26, v27

    .end local v27    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .restart local v26    # "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    goto/16 :goto_5
.end method

.method private static copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4
    .param p0, "spans"    # [Landroid/text/style/CharacterStyle;
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1412
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1413
    .local v0, "s":Landroid/text/SpannableString;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 1414
    aget-object v1, p0, v3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1416
    :cond_0
    return-object v0
.end method

.method private static createNotificationString(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;)Ljava/lang/String;
    .locals 9
    .param p0, "notifications"    # Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    .prologue
    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 249
    .local v3, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 250
    .local v2, "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->getUnread(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v5

    .line 251
    .local v5, "unread":Ljava/lang/Integer;
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->getUnseen(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v6

    .line 252
    .local v6, "unseen":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    .line 253
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    if-lez v0, :cond_2

    const-string/jumbo v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    .end local v5    # "unread":Ljava/lang/Integer;
    .end local v6    # "unseen":Ljava/lang/Integer;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 262
    .restart local v2    # "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    .end local v2    # "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 980
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 981
    :cond_0
    const-string/jumbo v2, "NotifUtils"

    const-string/jumbo v3, "createViewConversationIntent(): Null account or folder.  account: %s folder: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 983
    const/4 v1, 0x0

    .line 1000
    :goto_0
    return-object v1

    .line 988
    :cond_1
    if-nez p3, :cond_2

    .line 989
    iget-object v2, p2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-static {p0, v2, p1}, Lcom/kingsoft/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 995
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v0, p3}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 996
    .local v0, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v2, p2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-static {p0, v0, v2, p1}, Lcom/kingsoft/mail/utils/Utils;->createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static displaySentFailIndicator(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "errMessage"    # Ljava/lang/String;
    .param p4, "hideButton"    # Z

    .prologue
    .line 471
    invoke-static/range {p0 .. p2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getUIAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v10

    .line 475
    .local v10, "account":Lcom/kingsoft/mail/providers/Account;
    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v19

    .line 477
    .local v19, "outGoingFolder":Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 478
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "uifolder"

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6, v7}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 483
    .local v15, "folderCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    new-instance v14, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v14, v15}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .local v14, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 498
    const-string/jumbo v5, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 499
    .local v16, "nm":Landroid/app/NotificationManager;
    new-instance v17, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    .local v17, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    if-nez p4, :cond_0

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/NotificationUtils;->addSentFailNotificationActions(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;J)V

    .line 506
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v14, v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v18

    .line 507
    .local v18, "notificationIntent":Landroid/content/Intent;
    if-nez v18, :cond_2

    .line 508
    const-string/jumbo v5, "NotifUtils"

    const-string/jumbo v6, "Null intent when building notification"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 543
    .end local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v16    # "nm":Landroid/app/NotificationManager;
    .end local v17    # "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v18    # "notificationIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 486
    :cond_1
    :try_start_1
    const-string/jumbo v5, "NotifUtils"

    const-string/jumbo v6, "Empty folder cursor for account %d, mailbox %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 514
    .restart local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v16    # "nm":Landroid/app/NotificationManager;
    .restart local v17    # "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v18    # "notificationIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const/4 v5, -0x1

    const/high16 v6, 0x8000000

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 516
    .local v12, "clickIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 519
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->getDefaultNotificationIcon(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f020202

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f1002b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f1002b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 531
    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 532
    .local v11, "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 536
    const/4 v13, 0x7

    .line 537
    .local v13, "defaults":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 539
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 542
    const v5, 0x7f1002b0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public static displaySentFailTimeout(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;J)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountKey"    # J
    .param p3, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p4, "mailboxKey"    # J

    .prologue
    .line 548
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-static/range {p0 .. p2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getUIAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v9

    .line 555
    .local v9, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v9, :cond_0

    .line 559
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v17

    .line 561
    .local v17, "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v17, :cond_0

    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 566
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "uifolder"

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v4, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 571
    .local v13, "folderCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 572
    new-instance v12, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v12, v13}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .local v12, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v13, :cond_2

    .line 581
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_2
    if-eqz v12, :cond_0

    iget-object v4, v12, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    if-eqz v4, :cond_0

    iget-object v4, v12, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v4, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, v12, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v4, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v9}, Lcom/kingsoft/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v16

    .line 592
    .local v16, "notificationIntent":Landroid/content/Intent;
    if-eqz v16, :cond_0

    .line 596
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 598
    .local v14, "nm":Landroid/app/NotificationManager;
    new-instance v15, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .local v15, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x8000000

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 605
    .local v10, "clickIntent":Landroid/app/PendingIntent;
    invoke-virtual {v15, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 608
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getDefaultNotificationIcon(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f020202

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f1002b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 619
    const/4 v11, 0x7

    .line 621
    .local v11, "defaults":I
    invoke-virtual {v15, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 623
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 626
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v15}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 574
    .end local v10    # "clickIntent":Landroid/app/PendingIntent;
    .end local v11    # "defaults":I
    .end local v12    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v14    # "nm":Landroid/app/NotificationManager;
    .end local v15    # "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v16    # "notificationIntent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "Empty folder cursor for account %d, mailbox %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    if-eqz v13, :cond_0

    .line 581
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 580
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_4

    .line 581
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method private static ellipsizeStyledSenders(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "styledSenders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    const/4 v8, 0x0

    .line 1382
    sget-object v5, Lcom/kingsoft/mail/utils/NotificationUtils;->sSendersSplitToken:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1383
    const v5, 0x7f100373

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/kingsoft/mail/utils/NotificationUtils;->sSendersSplitToken:Ljava/lang/String;

    .line 1384
    const v5, 0x7f100198

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/kingsoft/mail/utils/NotificationUtils;->sElidedPaddingToken:Ljava/lang/String;

    .line 1387
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1388
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .line 1389
    .local v2, "prevSender":Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableString;

    .line 1390
    .local v3, "sender":Landroid/text/SpannableString;
    if-nez v3, :cond_1

    .line 1391
    const-string/jumbo v5, "NotifUtils"

    const-string/jumbo v6, "null sender iterating over styledSenders"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1394
    :cond_1
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3, v8, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 1395
    .local v4, "spans":[Landroid/text/style/CharacterStyle;
    sget-object v5, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1396
    move-object v2, v3

    .line 1397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingsoft/mail/utils/NotificationUtils;->sElidedPaddingToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/kingsoft/mail/utils/NotificationUtils;->sElidedPaddingToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 1406
    :goto_1
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1398
    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    if-eqz v2, :cond_3

    sget-object v5, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1401
    :cond_3
    move-object v2, v3

    .line 1402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingsoft/mail/utils/NotificationUtils;->sSendersSplitToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    goto :goto_1

    .line 1404
    :cond_4
    move-object v2, v3

    goto :goto_1

    .line 1408
    .end local v3    # "sender":Landroid/text/SpannableString;
    .end local v4    # "spans":[Landroid/text/style/CharacterStyle;
    :cond_5
    return-object v0
.end method

.method private static getDefaultNotificationIcon(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "multipleNew"    # Z

    .prologue
    .line 1006
    iget v2, p1, Lcom/kingsoft/mail/providers/Folder;->notificationIconResId:I

    if-eqz v2, :cond_1

    .line 1007
    iget v1, p1, Lcom/kingsoft/mail/providers/Folder;->notificationIconResId:I

    .line 1014
    .local v1, "resId":I
    :goto_0
    invoke-static {p0, v1}, Lcom/kingsoft/mail/utils/NotificationUtils;->getIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1016
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1017
    const-string/jumbo v2, "NotifUtils"

    const-string/jumbo v3, "Couldn\'t decode notif icon res id %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1020
    :cond_0
    return-object v0

    .line 1008
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "resId":I
    :cond_1
    if-eqz p2, :cond_2

    .line 1009
    const v1, 0x7f0201b5

    .restart local v1    # "resId":I
    goto :goto_0

    .line 1011
    .end local v1    # "resId":I
    :cond_2
    const v1, 0x7f02018b

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private static getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sender"    # Ljava/lang/String;

    .prologue
    .line 1689
    invoke-static {p0}, Lcom/kingsoft/mail/EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/EmailAddress;

    move-result-object v0

    .line 1691
    .local v0, "address":Lcom/kingsoft/mail/EmailAddress;
    invoke-virtual {v0}, Lcom/kingsoft/mail/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "displayableSender":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1694
    invoke-static {v1}, Lcom/kingsoft/mail/providers/Address;->decodeAddressName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1705
    :goto_0
    return-object v2

    .line 1698
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1702
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1703
    move-object v1, p0

    :cond_1
    move-object v2, v1

    .line 1705
    goto :goto_0
.end method

.method private static getIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 1024
    sget-object v2, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1025
    .local v0, "cachedIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1032
    .end local v0    # "cachedIcon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 1029
    .restart local v0    # "cachedIcon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1030
    .local v1, "icon":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 1032
    goto :goto_0
.end method

.method private static getMessageBodyWithoutElidedText(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getMessageBodyWithoutElidedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageBodyWithoutElidedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 1664
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1665
    const-string/jumbo v1, ""

    .line 1671
    :goto_0
    return-object v1

    .line 1668
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    .line 1669
    .local v0, "htmlTree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    sget-object v1, Lcom/kingsoft/mail/utils/NotificationUtils;->MESSAGE_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->setPlainTextConverterFactory(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;)V

    .line 1671
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1726
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static declared-synchronized getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const-class v1, Lcom/kingsoft/mail/utils/NotificationUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sActiveNotificationMap:Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;-><init>(Lcom/kingsoft/mail/utils/NotificationUtils$1;)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sActiveNotificationMap:Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    .line 122
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sActiveNotificationMap:Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->loadNotificationMap(Landroid/content/Context;)V

    .line 124
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sActiveNotificationMap:Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSenderAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sender"    # Ljava/lang/String;

    .prologue
    .line 1712
    invoke-static {p0}, Lcom/kingsoft/mail/EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/EmailAddress;

    move-result-object v0

    .line 1714
    .local v0, "address":Lcom/kingsoft/mail/EmailAddress;
    invoke-virtual {v0}, Lcom/kingsoft/mail/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "tokenizedAddress":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1719
    move-object v1, p0

    .line 1721
    :cond_0
    return-object v1
.end method

.method private static getSingleMessageBigText(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Message;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1528
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v10, 0x7f110062

    invoke-direct {v4, p0, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1531
    .local v4, "notificationSubjectSpan":Landroid/text/style/TextAppearanceSpan;
    iget-object v5, p2, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    .line 1534
    .local v5, "snippet":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "\\n\\s+"

    const-string/jumbo v11, "\n"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "collapsedSnippet":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v6, v5

    .line 1563
    :goto_1
    return-object v6

    .line 1534
    .end local v1    # "collapsedSnippet":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1540
    .restart local v1    # "collapsedSnippet":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1542
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1543
    .local v6, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v4, v9, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1547
    .end local v6    # "spannableString":Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100386

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1552
    .local v3, "notificationBigTextFormat":Ljava/lang/String;
    const-string/jumbo v10, "%2$s"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "%1$s"

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-le v10, v11, :cond_3

    move v2, v8

    .line 1554
    .local v2, "isSubjectFirst":Z
    :goto_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v9

    aput-object v1, v10, v8

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, "bigText":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1558
    .restart local v6    # "spannableString":Landroid/text/SpannableString;
    if-eqz v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1560
    .local v7, "subjectOffset":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v0    # "bigText":Ljava/lang/String;
    .end local v2    # "isSubjectFirst":Z
    .end local v6    # "spannableString":Landroid/text/SpannableString;
    .end local v7    # "subjectOffset":I
    :cond_3
    move v2, v9

    .line 1552
    goto :goto_2

    .line 1558
    .restart local v0    # "bigText":Ljava/lang/String;
    .restart local v2    # "isSubjectFirst":Z
    .restart local v6    # "spannableString":Landroid/text/SpannableString;
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_3
.end method

.method private static getSingleMessageInboxLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senders"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v9, p2

    .line 1454
    .local v9, "subjectSnippet":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v10, 0x7f110062

    invoke-direct {v4, p0, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1457
    .local v4, "notificationPrimarySpan":Landroid/text/style/TextAppearanceSpan;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v8, v9

    .line 1495
    :cond_0
    :goto_1
    return-object v8

    .end local v4    # "notificationPrimarySpan":Landroid/text/style/TextAppearanceSpan;
    .end local v9    # "subjectSnippet":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p3

    .line 1452
    goto :goto_0

    .line 1460
    .restart local v4    # "notificationPrimarySpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v9    # "subjectSnippet":Ljava/lang/String;
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1462
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1463
    .local v8, "spannableString":Landroid/text/SpannableString;
    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v4, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1467
    .end local v8    # "spannableString":Landroid/text/SpannableString;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10027f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "formatString":Ljava/lang/String;
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v10, 0x7f110063

    invoke-direct {v5, p0, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1473
    .local v5, "notificationSecondarySpan":Landroid/text/style/TextAppearanceSpan;
    sget-object v10, Lcom/kingsoft/mail/utils/NotificationUtils;->BIDI_FORMATTER:Landroid/support/v4/text/BidiFormatter;

    invoke-virtual {v10, v9}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1474
    .local v3, "newSubjectSnippet":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1477
    .local v1, "instantiatedString":Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1479
    .restart local v8    # "spannableString":Landroid/text/SpannableString;
    const-string/jumbo v10, "%2$s"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "%1$s"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ge v10, v11, :cond_5

    const/4 v2, 0x1

    .line 1481
    .local v2, "isOrderReversed":Z
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1484
    .local v6, "primaryOffset":I
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1487
    .local v7, "secondaryOffset":I
    :goto_4
    const/4 v10, -0x1

    if-le v6, v10, :cond_4

    .line 1488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    const/4 v11, 0x0

    invoke-virtual {v8, v4, v6, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1491
    :cond_4
    const/4 v10, -0x1

    if-le v7, v10, :cond_0

    .line 1492
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v7

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v7, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1479
    .end local v2    # "isOrderReversed":Z
    .end local v6    # "primaryOffset":I
    .end local v7    # "secondaryOffset":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1481
    .restart local v2    # "isOrderReversed":Z
    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 1484
    .restart local v6    # "primaryOffset":I
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_4
.end method

.method private static getSingleMessageLittleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1507
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f110062

    invoke-direct {v0, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1510
    .local v0, "notificationSubjectSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1511
    .local v1, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1513
    return-object v1
.end method

.method private static getSingleMessageNotificationTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1577
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1600
    .end local p1    # "sender":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1581
    .restart local p1    # "sender":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1586
    .local v2, "notificationTitleFormat":Ljava/lang/String;
    const-string/jumbo v8, "%2$s"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "%1$s"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v8, v9, :cond_1

    move v0, v6

    .line 1588
    .local v0, "isSubjectLast":Z
    :goto_1
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    aput-object p2, v8, v6

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1591
    .local v5, "titleString":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1594
    .local v4, "titleSpannable":Landroid/text/SpannableString;
    if-eqz v0, :cond_2

    invoke-virtual {v5, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1596
    .local v3, "subjectOffset":I
    :goto_2
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f110063

    invoke-direct {v1, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1598
    .local v1, "notificationSubjectSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v4

    .line 1600
    goto :goto_0

    .end local v0    # "isSubjectLast":Z
    .end local v1    # "notificationSubjectSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v3    # "subjectOffset":I
    .end local v4    # "titleSpannable":Landroid/text/SpannableString;
    .end local v5    # "titleString":Ljava/lang/String;
    :cond_1
    move v0, v7

    .line 1586
    goto :goto_1

    .line 1594
    .restart local v0    # "isSubjectLast":Z
    .restart local v4    # "titleSpannable":Landroid/text/SpannableString;
    .restart local v5    # "titleString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method

.method private static getStyledSenders(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationCursor"    # Landroid/database/Cursor;
    .param p2, "maxLength"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1361
    new-instance v11, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v11, p1}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1362
    .local v11, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v1, v11, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 1364
    .local v1, "conversationInfo":Lcom/kingsoft/mail/providers/ConversationInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .local v4, "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 1366
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f110065

    invoke-direct {v0, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 1368
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f110064

    invoke-direct {v0, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationReadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 1371
    :cond_0
    const-string/jumbo v2, ""

    sget-object v8, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationUnreadStyleSpan:Landroid/text/style/TextAppearanceSpan;

    sget-object v9, Lcom/kingsoft/mail/utils/NotificationUtils;->sNotificationReadStyleSpan:Landroid/text/style/CharacterStyle;

    const/4 v10, 0x0

    move-object v0, p0

    move v3, p2

    move-object v6, v5

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/browse/SendersView;->format(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;Z)V

    .line 1374
    invoke-static {p0, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->ellipsizeStyledSenders(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static getWrappedFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    .line 1351
    if-nez p0, :cond_0

    .line 1352
    const-string/jumbo v0, "NotifUtils"

    const-string/jumbo v1, "null from string in getWrappedFromString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1353
    const-string/jumbo p0, ""

    .line 1355
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationUtils;->BIDI_FORMATTER:Landroid/support/v4/text/BidiFormatter;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1356
    return-object p0
.end method

.method private static judgeFolderisInbox(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 1038
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v2, p2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return v9

    .line 1041
    :cond_1
    invoke-virtual {p1, v9}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v9, v0

    .line 1042
    goto :goto_0

    .line 1045
    :cond_2
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v9, v0

    .line 1046
    goto :goto_0

    .line 1052
    :cond_4
    const/4 v9, 0x0

    .line 1053
    .local v9, "findInbox":Z
    move-object v6, p1

    .line 1056
    .local v6, "curFolder":Lcom/kingsoft/mail/providers/Folder;
    :goto_1
    const/4 v8, 0x0

    .line 1058
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v6, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1061
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 1072
    :cond_5
    if-eqz v8, :cond_0

    .line 1073
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1064
    :cond_6
    :try_start_1
    new-instance v7, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v7, v8}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    .end local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .local v7, "curFolder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_2
    iget-object v0, v7, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v1, p2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_7

    .line 1067
    const/4 v9, 0x1

    .line 1072
    if-eqz v8, :cond_a

    .line 1073
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .end local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_0

    .line 1072
    .end local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_7
    if-eqz v8, :cond_8

    .line 1073
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v6, v7

    .line 1076
    .end local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_1

    .line 1072
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_9

    .line 1073
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 1072
    .end local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_2

    .end local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_a
    move-object v6, v7

    .end local v7    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v6    # "curFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_0
.end method

.method public static markSeen(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1675
    iget-object v2, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    .line 1677
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1678
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1680
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1681
    return-void
.end method

.method public static moveNotificationSetting(Lcom/kingsoft/mail/preferences/AccountPreferences;Lcom/kingsoft/mail/preferences/FolderPreferences;)V
    .locals 2
    .param p0, "accountPreferences"    # Lcom/kingsoft/mail/preferences/AccountPreferences;
    .param p1, "folderPreferences"    # Lcom/kingsoft/mail/preferences/FolderPreferences;

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->isDefaultInboxNotificationsEnabledSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1827
    invoke-virtual {p1}, Lcom/kingsoft/mail/preferences/FolderPreferences;->isNotificationsEnabledSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getDefaultInboxNotificationsEnabled()Z

    move-result v0

    .line 1831
    .local v0, "notificationsEnabled":Z
    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationsEnabled(Z)V

    .line 1834
    .end local v0    # "notificationsEnabled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->clearDefaultInboxNotificationsEnabled()V

    .line 1836
    :cond_1
    return-void
.end method

.method public static resendNotifications(Landroid/content/Context;ZLandroid/net/Uri;Lcom/kingsoft/mail/utils/FolderUri;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelExisting"    # Z
    .param p2, "accountUri"    # Landroid/net/Uri;
    .param p3, "folderUri"    # Lcom/kingsoft/mail/utils/FolderUri;

    .prologue
    .line 306
    const-string/jumbo v1, "NotifUtils"

    const-string/jumbo v3, "resendNotifications "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 308
    if-eqz p1, :cond_0

    .line 309
    const-string/jumbo v1, "NotifUtils"

    const-string/jumbo v3, "resendNotifications - cancelling all"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 310
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 312
    .local v10, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v10}, Landroid/app/NotificationManager;->cancelAll()V

    .line 313
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 316
    .end local v10    # "nm":Landroid/app/NotificationManager;
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v12

    .line 317
    .local v12, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    invoke-virtual {v12}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 318
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 319
    .local v6, "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v2, v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    .line 320
    .local v2, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v1, v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v11

    .line 325
    .local v11, "notificationId":I
    if-eqz p2, :cond_1

    iget-object v1, v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    const-string/jumbo v1, "NotifUtils"

    const-string/jumbo v3, "resendNotifications - not resending %s / %s because it doesn\'t match %s / %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 333
    :cond_1
    const-string/jumbo v1, "NotifUtils"

    const-string/jumbo v3, "resendNotifications - resending %s / %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    aput-object v7, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 336
    sget-object v1, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v1, v11}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .line 338
    .local v13, "undoableAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    if-nez v13, :cond_2

    .line 339
    iget-object v3, v6, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/kingsoft/mail/utils/NotificationUtils;->validateNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;ZZLcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;Z)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-static {p0, v13}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto :goto_0

    .line 346
    .end local v2    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v6    # "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    .end local v11    # "notificationId":I
    .end local v13    # "undoableAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    :cond_3
    return-void
.end method

.method private static seekToLatestUnreadConversation(Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1425
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 1427
    .local v1, "initialPosition":I
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1428
    .local v0, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v2, v0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v2, :cond_1

    .line 1429
    const/4 v2, 0x1

    .line 1435
    :goto_0
    return v2

    .line 1431
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1434
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1435
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setNewEmailIndicator(Landroid/content/Context;IILcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unreadCount"    # I
    .param p2, "unseenCount"    # I
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p5, "getAttention"    # Z

    .prologue
    .line 417
    const/4 v4, 0x0

    .line 419
    .local v4, "ignoreUnobtrusiveSetting":Z
    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v7

    .line 422
    .local v7, "notificationId":I
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v8

    .line 423
    .local v8, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    new-instance v5, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    invoke-direct {v5, p3, p4}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;-><init>(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 424
    .local v5, "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    if-nez p1, :cond_2

    .line 427
    invoke-virtual {v8, v5}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :try_start_0
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 431
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v0

    int-to-long v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    invoke-virtual {v8, p0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 448
    const-string/jumbo v0, "NotifUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string/jumbo v0, "NotifUtils"

    const-string/jumbo v1, "New email: %s mapSize: %d getAttention: %b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/kingsoft/mail/utils/NotificationUtils;->createNotificationString(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 454
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v0, v7}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move v3, p5

    .line 455
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->validateNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;ZZLcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;)V

    .line 458
    :cond_1
    return-void

    .line 432
    :catch_0
    move-exception v6

    .line 435
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "NotifUtils"

    const-string/jumbo v1, "NotificationManager cancel NullPointException"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 438
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :cond_2
    invoke-virtual {v8, v5}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    const/4 v4, 0x1

    .line 444
    :cond_3
    invoke-virtual {v8, v5, p1, p2}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->put(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;II)V

    goto :goto_0
.end method

.method private static setNotificationMessageCount(Landroid/app/Notification;I)V
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "unseenCount"    # I

    .prologue
    .line 956
    :try_start_0
    const-string/jumbo v4, "android.app.MiuiNotification"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 957
    .local v3, "miuiNotificationClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 958
    .local v2, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "messageCount"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 959
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "extraNotification"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 962
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 974
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "miuiNotification":Ljava/lang/Object;
    .end local v3    # "miuiNotificationClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 965
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 967
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 969
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 971
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static validateAccountNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v14, "NotifUtils"

    const-string/jumbo v15, "validateAccountNotifications"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 357
    .local v13, "notificationsToCancel":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;>;"
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v12

    .line 358
    .local v12, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    invoke-virtual {v12}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 359
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;>;"
    new-instance v2, Lcom/kingsoft/mail/preferences/AccountPreferences;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    .local v2, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->areNotificationsEnabled()Z

    move-result v3

    .line 361
    .local v3, "enabled":Z
    if-nez v3, :cond_1

    .line 363
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 364
    .local v10, "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v14, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v14

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 365
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 372
    .restart local v10    # "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v14, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v14

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 375
    iget-object v4, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    .line 376
    .local v4, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v14, v4, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v15, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v15, v15, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v15, v15, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 378
    .local v7, "isInbox":Z
    new-instance v5, Lcom/kingsoft/mail/preferences/FolderPreferences;

    iget-object v14, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14, v4, v7}, Lcom/kingsoft/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 381
    .local v5, "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-virtual {v5}, Lcom/kingsoft/mail/preferences/FolderPreferences;->areNotificationsEnabled()Z

    move-result v14

    if-nez v14, :cond_2

    .line 382
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    .end local v4    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v5    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    .end local v7    # "isInbox":Z
    .end local v10    # "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 390
    const-string/jumbo v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 392
    .local v9, "nm":Landroid/app/NotificationManager;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 393
    .restart local v10    # "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v4, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    .line 394
    .restart local v4    # "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v14, v10, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v11

    .line 396
    .local v11, "notificationId":I
    const-string/jumbo v14, "NotifUtils"

    const-string/jumbo v15, "validateAccountNotifications - cancelling"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 397
    invoke-virtual {v9, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 398
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v14

    int-to-long v15, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v12, v10}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v14, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v14, v11}, Lcom/kingsoft/mail/utils/ObservableSparseArrayCompat;->remove(I)V

    .line 401
    sget-object v14, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

    invoke-virtual {v14, v11}, Lcom/kingsoft/mail/utils/SparseLongArray;->delete(I)V

    goto :goto_2

    .line 403
    .end local v4    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v10    # "notification":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    .end local v11    # "notificationId":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 405
    .end local v9    # "nm":Landroid/app/NotificationManager;
    :cond_5
    return-void
.end method

.method private static validateNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;ZZLcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "getAttention"    # Z
    .param p4, "ignoreUnobtrusiveSetting"    # Z
    .param p5, "key"    # Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .prologue
    .line 665
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/NotificationUtils;->validateNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;ZZLcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;Z)V

    .line 666
    return-void
.end method

.method private static validateNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;ZZLcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;Z)V
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "getAttention"    # Z
    .param p4, "ignoreUnobtrusiveSetting"    # Z
    .param p5, "key"    # Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    .param p6, "resend"    # Z

    .prologue
    .line 675
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/NotificationManager;

    .line 678
    .local v25, "nm":Landroid/app/NotificationManager;
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationMap(Landroid/content/Context;)Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;

    move-result-object v29

    .line 679
    .local v29, "notificationMap":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;
    const-string/jumbo v4, "NotifUtils"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 680
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "Validating Notification: %s mapSize: %d folder: %s getAttention: %b"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v29 .. v29}, Lcom/kingsoft/mail/utils/NotificationUtils;->createNotificationString(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 688
    :goto_0
    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->getUnread(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v35

    .line 689
    .local v35, "unread":Ljava/lang/Integer;
    if-eqz v35, :cond_2

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 690
    .local v11, "unreadCount":I
    :goto_1
    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->getUnseen(Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v36

    .line 691
    .local v36, "unseen":Ljava/lang/Integer;
    if-eqz v36, :cond_3

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 693
    .local v12, "unseenCount":I
    :goto_2
    const/16 v18, 0x0

    .line 696
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v37

    .line 697
    .local v37, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "seen"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 701
    const-string/jumbo v4, "use_network"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 704
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 706
    if-nez v18, :cond_4

    .line 708
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "The cursor is null, so the specified folder probably does not exist"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 710
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->clearFolderNotification(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 918
    :cond_0
    :goto_3
    return-void

    .line 684
    .end local v11    # "unreadCount":I
    .end local v12    # "unseenCount":I
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v35    # "unread":Ljava/lang/Integer;
    .end local v36    # "unseen":Ljava/lang/Integer;
    .end local v37    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "Validating Notification, mapSize: %d getAttention: %b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 689
    .restart local v35    # "unread":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 691
    .restart local v11    # "unreadCount":I
    .restart local v36    # "unseen":Ljava/lang/Integer;
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 713
    .restart local v12    # "unseenCount":I
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v37    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_4
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 717
    .local v19, "cursorUnseenCount":I
    if-eqz v12, :cond_5

    move/from16 v0, v19

    if-eq v12, v0, :cond_5

    .line 718
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "Unseen count doesn\'t match cursor count.  unseen: %d cursor count: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 721
    move/from16 v12, v19

    .line 726
    :cond_5
    if-le v12, v11, :cond_6

    .line 727
    move v12, v11

    .line 732
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v28

    .line 735
    .local v28, "notificationId":I
    if-nez v12, :cond_8

    .line 740
    if-eqz v25, :cond_7

    .line 741
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 742
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/NotificationController;->getNotifiedMsgMap()Ljava/util/Map;

    move-result-object v4

    move/from16 v0, v28

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    :cond_7
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 748
    :cond_8
    move/from16 v0, v28

    int-to-long v4, v0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->checkNeedNotify(Landroid/content/Context;Landroid/database/Cursor;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_9

    if-nez p6, :cond_9

    .line 914
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 755
    :cond_9
    :try_start_3
    new-instance v27, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 756
    .local v27, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    const v4, 0x7f020202

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 757
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 761
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/utils/SparseLongArray;->get(I)J

    move-result-wide v31

    .line 763
    .local v31, "oldWhen":J
    const-wide/16 v4, 0x0

    cmp-long v4, v31, v4

    if-eqz v4, :cond_a

    .line 764
    move-wide/from16 v14, v31

    .line 769
    .local v14, "when":J
    :goto_4
    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 772
    sget-object v4, Lcom/kingsoft/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/kingsoft/mail/utils/SparseLongArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/utils/SparseLongArray;->delete(I)V

    .line 777
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v17, "cancelNotificationIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v4, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kingsoft/mail/utils/Utils;->appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 782
    const-class v4, Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 783
    const-string/jumbo v4, "account"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 784
    const-string/jumbo v4, "folder"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 786
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 790
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 792
    const/16 v21, 0x0

    .line 795
    .local v21, "eventInfoConfigured":Z
    invoke-static/range {p0 .. p2}, Lcom/kingsoft/mail/utils/NotificationUtils;->judgeFolderisInbox(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v23

    .line 796
    .local v23, "isInbox":Z
    new-instance v22, Lcom/kingsoft/mail/preferences/FolderPreferences;

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v23

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kingsoft/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 798
    .local v22, "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    if-nez v23, :cond_b

    .line 914
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 766
    .end local v14    # "when":J
    .end local v17    # "cancelNotificationIntent":Landroid/content/Intent;
    .end local v21    # "eventInfoConfigured":Z
    .end local v22    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    .end local v23    # "isInbox":Z
    :cond_a
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .restart local v14    # "when":J
    goto/16 :goto_4

    .line 801
    .restart local v17    # "cancelNotificationIntent":Landroid/content/Intent;
    .restart local v21    # "eventInfoConfigured":Z
    .restart local v22    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    .restart local v23    # "isInbox":Z
    :cond_b
    new-instance v16, Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 803
    .local v16, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/preferences/AccountPreferences;->areNotificationsEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 804
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "Notifications are disabled for this folder; not notifying"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 914
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 808
    :cond_c
    if-lez v12, :cond_11

    .line 811
    :try_start_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 815
    const/4 v4, 0x1

    if-ne v12, v4, :cond_d

    const/16 v24, 0x1

    .line 816
    .local v24, "launchConversationMode":Z
    :goto_5
    if-eqz v24, :cond_e

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/NotificationUtils;->createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v10

    .line 824
    .local v10, "notificationIntent":Landroid/content/Intent;
    :goto_6
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v4

    const-string/jumbo v5, "notification_create"

    if-eqz v24, :cond_f

    const-string/jumbo v6, "conversation"

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Folder;->getTypeDescription()Ljava/lang/String;

    move-result-object v7

    int-to-long v8, v12

    invoke-interface/range {v4 .. v9}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 828
    if-nez v10, :cond_10

    .line 829
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "Null intent when building notification"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 914
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 815
    .end local v10    # "notificationIntent":Landroid/content/Intent;
    .end local v24    # "launchConversationMode":Z
    :cond_d
    const/16 v24, 0x0

    goto :goto_5

    .line 820
    .restart local v24    # "launchConversationMode":Z
    :cond_e
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/kingsoft/mail/utils/NotificationUtils;->createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v10

    .restart local v10    # "notificationIntent":Landroid/content/Intent;
    goto :goto_6

    .line 824
    :cond_f
    const-string/jumbo v6, "conversation_list"

    goto :goto_7

    .line 833
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string/jumbo v4, "notification"

    const/4 v5, 0x1

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    const-class v4, Lcom/kingsoft/mail/utils/NotificationUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 843
    const/4 v4, -0x1

    const/high16 v5, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v4, v10, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 845
    .local v9, "clickIntent":Landroid/app/PendingIntent;
    const-string/jumbo v4, "notification"

    invoke-virtual {v10, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, v22

    move-object/from16 v7, v27

    move-object/from16 v8, v18

    move-object/from16 v13, p1

    .line 846
    invoke-static/range {v4 .. v15}, Lcom/kingsoft/mail/utils/NotificationUtils;->configureLatestEventInfoFromConversation(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/preferences/FolderPreferences;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/database/Cursor;Landroid/app/PendingIntent;Landroid/content/Intent;IILcom/kingsoft/mail/providers/Folder;J)V

    .line 849
    const/16 v21, 0x1

    .line 853
    .end local v9    # "clickIntent":Landroid/app/PendingIntent;
    .end local v10    # "notificationIntent":Landroid/content/Intent;
    .end local v24    # "launchConversationMode":Z
    :cond_11
    const/16 v38, 0x0

    .line 854
    .local v38, "vibrate":Z
    const/16 v33, 0x0

    .line 855
    .local v33, "ringtoneUri":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/kingsoft/mail/preferences/FolderPreferences;->isEveryMessageNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_18

    const/16 v30, 0x1

    .line 857
    .local v30, "notifyOnce":Z
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v34

    .line 858
    .local v34, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 859
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "from NotificationUtils validateNotifications"

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_12
    invoke-virtual/range {v34 .. v34}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getIsSilencePeriodBlocked()Z

    move-result v4

    if-nez v4, :cond_13

    .line 862
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/preferences/AccountPreferences;->isNotificationVibrateEnabled()Z

    move-result v38

    .line 863
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v33

    .line 866
    :cond_13
    if-nez p4, :cond_14

    if-eqz v30, :cond_14

    .line 871
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 878
    :cond_14
    const/16 v20, 0x0

    .line 884
    .local v20, "defaults":I
    if-eqz p3, :cond_16

    const-wide/16 v4, 0x0

    cmp-long v4, v31, v4

    if-nez v4, :cond_16

    .line 885
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/preferences/AccountPreferences;->areNotificationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 886
    if-eqz v38, :cond_15

    .line 887
    or-int/lit8 v20, v20, 0x2

    .line 890
    :cond_15
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 898
    :cond_16
    if-eqz v21, :cond_1a

    .line 899
    or-int/lit8 v20, v20, 0x4

    .line 900
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 902
    const-wide/16 v4, 0x0

    cmp-long v4, v31, v4

    if-eqz v4, :cond_17

    .line 905
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 907
    :cond_17
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v26

    .line 908
    .local v26, "noti":Landroid/app/Notification;
    move-object/from16 v0, v26

    invoke-static {v0, v12}, Lcom/kingsoft/mail/utils/NotificationUtils;->setNotificationMessageCount(Landroid/app/Notification;I)V

    .line 909
    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 914
    .end local v26    # "noti":Landroid/app/Notification;
    :goto_a
    if-eqz v18, :cond_0

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 855
    .end local v20    # "defaults":I
    .end local v30    # "notifyOnce":Z
    .end local v34    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :cond_18
    const/16 v30, 0x0

    goto :goto_8

    .line 890
    .restart local v20    # "defaults":I
    .restart local v30    # "notifyOnce":Z
    .restart local v34    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :cond_19
    :try_start_7
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_9

    .line 911
    :cond_1a
    const-string/jumbo v4, "NotifUtils"

    const-string/jumbo v5, "event info not configured - not notifying"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 914
    .end local v14    # "when":J
    .end local v16    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    .end local v17    # "cancelNotificationIntent":Landroid/content/Intent;
    .end local v19    # "cursorUnseenCount":I
    .end local v20    # "defaults":I
    .end local v21    # "eventInfoConfigured":Z
    .end local v22    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    .end local v23    # "isInbox":Z
    .end local v27    # "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v28    # "notificationId":I
    .end local v30    # "notifyOnce":Z
    .end local v31    # "oldWhen":J
    .end local v33    # "ringtoneUri":Ljava/lang/String;
    .end local v34    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    .end local v37    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v38    # "vibrate":Z
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_1b

    .line 915
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1b
    throw v4
.end method
