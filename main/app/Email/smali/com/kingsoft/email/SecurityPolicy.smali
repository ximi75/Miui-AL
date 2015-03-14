.class public Lcom/kingsoft/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static final DEVICE_ADMIN_MESSAGE_DISABLED:I = 0x2

.field private static final DEVICE_ADMIN_MESSAGE_ENABLED:I = 0x1

.field private static final DEVICE_ADMIN_MESSAGE_PASSWORD_CHANGED:I = 0x3

.field private static final DEVICE_ADMIN_MESSAGE_PASSWORD_EXPIRING:I = 0x4

.field private static final HAS_PASSWORD_EXPIRATION:Ljava/lang/String; = "passwordExpirationDays>0"

.field public static final INACTIVE_NEED_ACTIVATION:I = 0x1

.field public static final INACTIVE_NEED_CONFIGURATION:I = 0x2

.field public static final INACTIVE_NEED_ENCRYPTION:I = 0x8

.field public static final INACTIVE_NEED_PASSWORD:I = 0x4

.field public static final INACTIVE_PROTOCOL_POLICIES:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Email/SecurityPolicy"

.field private static sInstance:Lcom/kingsoft/email/SecurityPolicy;


# instance fields
.field private final mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/SecurityPolicy;->sInstance:Lcom/kingsoft/email/SecurityPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 90
    iput-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/kingsoft/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 92
    iput-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 93
    return-void
.end method

.method public static clearAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v0, 0x0

    .line 517
    invoke-static {p0, p1, v0, v0}, Lcom/kingsoft/email/SecurityPolicy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method static findShortestExpiration(Landroid/content/Context;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 778
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "passwordExpirationDays>0"

    const/4 v4, 0x0

    const-string/jumbo v5, "passwordExpirationDays ASC"

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 781
    .local v8, "policyId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    move-wide v0, v10

    .line 782
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-class v1, Lcom/kingsoft/email/SecurityPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/SecurityPolicy;->sInstance:Lcom/kingsoft/email/SecurityPolicy;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/kingsoft/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingsoft/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/SecurityPolicy;->sInstance:Lcom/kingsoft/email/SecurityPolicy;

    .line 82
    :cond_0
    sget-object v0, Lcom/kingsoft/email/SecurityPolicy;->sInstance:Lcom/kingsoft/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # I

    .prologue
    .line 826
    invoke-static {p0}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v0

    .line 827
    .local v0, "instance":Lcom/kingsoft/email/SecurityPolicy;
    packed-switch p1, :pswitch_data_0

    .line 845
    :goto_0
    return-void

    .line 829
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 832
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 837
    :pswitch_2
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 839
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/NotificationController;->cancelPasswordExpirationNotifications()V

    goto :goto_0

    .line 842
    :pswitch_3
    iget-object v1, v0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingsoft/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 745
    invoke-static {p1}, Lcom/kingsoft/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v3

    .line 748
    .local v3, "nextExpiringAccountId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 754
    .local v0, "expirationDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v0, v8

    .line 755
    .local v5, "timeUntilExpiration":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    const/4 v2, 0x1

    .line 756
    .local v2, "expired":Z
    :goto_1
    if-nez v2, :cond_3

    .line 759
    iget-object v8, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/kingsoft/email/NotificationController;->showPasswordExpiringNotification(J)V

    goto :goto_0

    .line 755
    .end local v2    # "expired":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 763
    .restart local v2    # "expired":Z
    :cond_3
    invoke-static {p1}, Lcom/kingsoft/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;)Z

    move-result v7

    .line 764
    .local v7, "wiped":Z
    if-eqz v7, :cond_0

    .line 765
    iget-object v8, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/kingsoft/email/NotificationController;->showPasswordExpiredNotification(J)V

    goto :goto_0
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "newState"    # Z

    .prologue
    .line 459
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 460
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 461
    invoke-static {p0, v0, p3}, Lcom/kingsoft/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 462
    if-eqz p3, :cond_0

    .line 467
    :cond_0
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "newState"    # Z

    .prologue
    .line 478
    if-eqz p2, :cond_0

    .line 479
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 483
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 486
    return-void

    .line 481
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto :goto_0
.end method

.method public static setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p3, "securitySyncKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 532
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_1

    .line 536
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 538
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "policyKey"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "securitySyncKey"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :goto_0
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 556
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 563
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 564
    invoke-static {p0, p1}, Lcom/kingsoft/email/SecurityPolicy;->syncAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    :goto_1
    return-void

    .line 547
    :cond_1
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "securitySyncKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "policyKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Exception setting account policy."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static syncAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v7, 0x1

    .line 574
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v2

    .line 576
    .local v2, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v0, Landroid/accounts/Account;

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v4, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, "amAccount":Landroid/accounts/Account;
    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 579
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "force"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    const-string/jumbo v3, "do_not_retry"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    const-string/jumbo v3, "expedited"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 582
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/kingsoft/mail/preferences/MailPrefs;->setAccountSynced(Ljava/lang/String;Z)V

    .line 584
    return-void
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 793
    const/4 v12, 0x0

    .line 794
    .local v12, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "passwordExpirationDays>0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 796
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 798
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 800
    .local v10, "policyId":J
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v7

    .line 801
    .local v7, "accountId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    .line 802
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 803
    .local v6, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_0

    .line 805
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/kingsoft/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 807
    const-string/jumbo v0, "uiaccountdata"

    invoke-static {v0, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 808
    .local v13, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    const/4 v12, 0x1

    goto :goto_0

    .line 814
    .end local v6    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v7    # "accountId":J
    .end local v10    # "policyId":J
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_2
    return v12

    .line 814
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/NotificationController;->cancelSecurityNeededNotification()V

    .line 657
    return-void
.end method

.method computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const v12, 0x7fffffff

    const/high16 v11, -0x80000000

    const/4 v10, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    .local v8, "policiesFound":Z
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 123
    .local v6, "aggregate":Lcom/android/emailcommon/provider/Policy;
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 124
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 125
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 126
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 127
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 128
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 129
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 130
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 131
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 136
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 138
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    .local v7, "c":Landroid/database/Cursor;
    new-instance v9, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 141
    .local v9, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v7, :cond_7

    .line 143
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {v9, v7}, Lcom/android/emailcommon/provider/Policy;->restore(Landroid/database/Cursor;)V

    .line 145
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "Email/SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Aggregate from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    :cond_0
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 150
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 151
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-lez v0, :cond_1

    .line 152
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 155
    :cond_1
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v0, :cond_2

    .line 156
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 159
    :cond_2
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v0, :cond_3

    .line 160
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 163
    :cond_3
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v0, :cond_4

    .line 164
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 167
    :cond_4
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v0, :cond_5

    .line 168
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 171
    :cond_5
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 172
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 173
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 177
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_7
    if-eqz v8, :cond_10

    .line 182
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v0, v11, :cond_8

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 183
    :cond_8
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v11, :cond_9

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 184
    :cond_9
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v0, v12, :cond_a

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 185
    :cond_a
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v0, v12, :cond_b

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 186
    :cond_b
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v0, v11, :cond_c

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 187
    :cond_c
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v0, v12, :cond_d

    .line 188
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 189
    :cond_d
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v0, v11, :cond_e

    .line 190
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 191
    :cond_e
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 192
    const-string/jumbo v0, "Email/SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calculated Aggregate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    .end local v6    # "aggregate":Lcom/android/emailcommon/provider/Policy;
    :cond_f
    :goto_1
    return-object v6

    .line 177
    .restart local v6    # "aggregate":Lcom/android/emailcommon/provider/Policy;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 196
    :cond_10
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 197
    const-string/jumbo v0, "Email/SecurityPolicy"

    const-string/jumbo v1, "Calculated Aggregate: no policy"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    :cond_11
    sget-object v6, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    goto :goto_1
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 703
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 705
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "policyKey IS NOT NULL AND policyKey!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 707
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 709
    :try_start_0
    const-string/jumbo v1, "Email/SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " secured account(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 711
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 713
    .local v6, "accountId":J
    const-string/jumbo v1, "uiaccountdata"

    invoke-static {v1, v6, v7}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 714
    .local v9, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 717
    .end local v6    # "accountId":J
    .end local v9    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->policiesUpdated()V

    .line 721
    return-void
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I
    .locals 14
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object p1

    .line 327
    :cond_0
    sget-object v10, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    if-ne p1, v10, :cond_2

    .line 328
    const/4 v7, 0x0

    .line 399
    :cond_1
    :goto_0
    return v7

    .line 330
    :cond_2
    const/4 v7, 0x0

    .line 331
    .local v7, "reasons":I
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 332
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 334
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-lez v10, :cond_3

    .line 335
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ge v10, v11, :cond_3

    .line 336
    or-int/lit8 v7, v7, 0x4

    .line 339
    :cond_3
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-lez v10, :cond_5

    .line 340
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 341
    or-int/lit8 v7, v7, 0x4

    .line 343
    :cond_4
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v10

    if-nez v10, :cond_5

    .line 344
    or-int/lit8 v7, v7, 0x4

    .line 347
    :cond_5
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v10, :cond_6

    .line 349
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    iget v12, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 350
    or-int/lit8 v7, v7, 0x2

    .line 353
    :cond_6
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v10, :cond_9

    .line 355
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 356
    .local v0, "currentTimeout":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_8

    .line 358
    :cond_7
    or-int/lit8 v7, v7, 0x4

    .line 361
    :cond_8
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 362
    .local v4, "expirationDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v4, v10

    .line 363
    .local v8, "timeUntilExpiration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_e

    const/4 v6, 0x1

    .line 364
    .local v6, "expired":Z
    :goto_1
    if-eqz v6, :cond_9

    .line 365
    or-int/lit8 v7, v7, 0x4

    .line 368
    .end local v0    # "currentTimeout":J
    .end local v4    # "expirationDate":J
    .end local v6    # "expired":Z
    .end local v8    # "timeUntilExpiration":J
    :cond_9
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v10, :cond_a

    .line 369
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ge v10, v11, :cond_a

    .line 371
    or-int/lit8 v7, v7, 0x2

    .line 374
    :cond_a
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v10, :cond_b

    .line 375
    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ge v10, v11, :cond_b

    .line 376
    or-int/lit8 v7, v7, 0x4

    .line 379
    :cond_b
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v10, :cond_c

    .line 380
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 381
    .local v3, "encryptionStatus":I
    const/4 v10, 0x3

    if-eq v3, v10, :cond_c

    .line 382
    or-int/lit8 v7, v7, 0x8

    .line 385
    .end local v3    # "encryptionStatus":I
    :cond_c
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 386
    or-int/lit8 v7, v7, 0x2

    .line 391
    :cond_d
    iget-object v10, p1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 392
    or-int/lit8 v7, v7, 0x10

    goto/16 :goto_0

    .line 363
    .restart local v0    # "currentTimeout":J
    .restart local v4    # "expirationDate":J
    .restart local v8    # "timeUntilExpiration":J
    :cond_e
    const/4 v6, 0x0

    goto :goto_1

    .line 399
    .end local v0    # "currentTimeout":J
    .end local v4    # "expirationDate":J
    .end local v8    # "timeUntilExpiration":J
    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 6
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v0

    .line 253
    .local v0, "reasons":I
    sget-boolean v3, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActive for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "FALSE -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 257
    const-string/jumbo v3, "no_admin "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 260
    const-string/jumbo v3, "config "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 263
    const-string/jumbo v3, "password "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 266
    const-string/jumbo v3, "encryption "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_4

    .line 269
    const-string/jumbo v3, "protocol "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_4
    const-string/jumbo v3, "Email/SecurityPolicy"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    if-nez v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public isActiveAdmin()Z
    .locals 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 682
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 731
    :cond_0
    return-void
.end method

.method public policiesRequired(J)V
    .locals 6
    .param p1, "accountId"    # J

    .prologue
    .line 497
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 499
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 502
    .local v1, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v1, :cond_0

    .line 505
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/kingsoft/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 508
    iget-object v2, v1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/NotificationController;->showSecurityUnsupportedNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0
.end method

.method public declared-synchronized policiesUpdated()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 228
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->setActivePolicies()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reducePolicies()V
    .locals 3

    .prologue
    .line 238
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "Email/SecurityPolicy"

    const-string/jumbo v1, "reducePolicies"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->policiesUpdated()V

    .line 242
    return-void
.end method

.method public remoteWipe()V
    .locals 4

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 665
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not remote wipe because not device admin."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 591
    iget-object v6, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 592
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    const/4 v1, 0x0

    .line 593
    .local v1, "oldPolicy":Lcom/android/emailcommon/provider/Policy;
    if-nez v0, :cond_0

    .line 595
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAccountPolicy; cannot find account which id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", it maight have been deleted!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 649
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 601
    iget-object v6, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 605
    :cond_1
    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    .line 606
    iget-boolean v6, v1, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v7, p3, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v6, v7, :cond_2

    iget v6, v1, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v7, p3, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-eq v6, v7, :cond_3

    .line 608
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p3}, Lcom/android/emailcommon/provider/Policy;->setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 612
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 613
    .local v2, "policyChanged":Z
    :goto_1
    if-nez v2, :cond_6

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-static {p4, v6}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 615
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "setAccountPolicy; policy unchanged"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 621
    :goto_2
    const/4 v3, 0x0

    .line 622
    .local v3, "setHold":Z
    iget-object v6, p3, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 624
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Notify policies for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 626
    const/4 v3, 0x1

    .line 627
    iget-object v5, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/kingsoft/email/NotificationController;->showSecurityUnsupportedNotification(Lcom/android/emailcommon/provider/Account;)V

    .line 630
    const-string/jumbo v5, "uiaccountdata"

    invoke-static {v5, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 631
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_3
    iget-object v5, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v3}, Lcom/kingsoft/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    goto/16 :goto_0

    .end local v2    # "policyChanged":Z
    .end local v3    # "setHold":Z
    :cond_5
    move v2, v5

    .line 612
    goto :goto_1

    .line 617
    .restart local v2    # "policyChanged":Z
    :cond_6
    iget-object v6, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p3, p4}, Lcom/kingsoft/email/SecurityPolicy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->policiesUpdated()V

    goto :goto_2

    .line 632
    .restart local v3    # "setHold":Z
    :cond_7
    invoke-virtual {p0, p3}, Lcom/kingsoft/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 633
    if-eqz v2, :cond_8

    .line 634
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Notify policies changed."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 639
    :cond_8
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Policy is active and unchanged; do not notify."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 642
    :cond_9
    const/4 v3, 0x1

    .line 643
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Notify policies are not being enforced."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method public setActivePolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 410
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 412
    .local v0, "aggregatePolicy":Lcom/android/emailcommon/provider/Policy;
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    if-ne v0, v2, :cond_2

    .line 413
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 414
    const-string/jumbo v2, "Email/SecurityPolicy"

    const-string/jumbo v3, "setActivePolicies: none, remove admin"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 419
    const-string/jumbo v2, "Email/SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActivePolicies: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 425
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 426
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 428
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 430
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 432
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 435
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 441
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 442
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 443
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 445
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 448
    iget-object v2, p0, Lcom/kingsoft/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method public syncAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/kingsoft/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kingsoft/email/SecurityPolicy;->syncAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 588
    return-void
.end method
