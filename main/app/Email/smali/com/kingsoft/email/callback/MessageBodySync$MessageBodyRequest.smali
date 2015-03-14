.class public Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
.super Ljava/lang/Object;
.source "MessageBodySync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/callback/MessageBodySync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBodyRequest"
.end annotation


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public mAccountKey:J

.field public mCallback:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field public mMailboxKey:J

.field public mProtocal:I

.field public mRemote:Ljava/lang/Object;

.field public mServiceIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "accountKey"    # J
    .param p4, "mailboxKey"    # J
    .param p6, "callback"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-wide p2, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccountKey:J

    .line 560
    iput-wide p4, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailboxKey:J

    .line 561
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    .line 562
    iput-object p6, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mCallback:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "callback"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p3, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 546
    iput-object p4, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 547
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    .line 548
    iput-object p5, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mCallback:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    .line 549
    const v0, 0x7f100303

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    const v0, 0x7f100305

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    goto :goto_0

    .line 553
    :cond_2
    const v0, 0x7f100302

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    goto :goto_0
.end method


# virtual methods
.method public getRemote(Landroid/content/Context;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 571
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move v10, v0

    .line 611
    :cond_0
    :goto_0
    return v10

    .line 575
    :cond_1
    const/4 v10, 0x1

    .line 576
    .local v10, "res":Z
    iget v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, p1}, Lcom/kingsoft/email/mail/store/Pop3Store;->newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v9

    .line 580
    .local v9, "remoteStore":Lcom/kingsoft/email/mail/Store;
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    .end local v9    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :catch_0
    move-exception v7

    .line 582
    .local v7, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 583
    const/4 v10, 0x0

    goto :goto_0

    .line 585
    .end local v7    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_2
    iget v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    if-ne v1, v0, :cond_3

    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, p1}, Lcom/kingsoft/email/mail/store/ImapStore;->newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v9

    .line 589
    .restart local v9    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 590
    .end local v9    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :catch_1
    move-exception v7

    .line 591
    .restart local v7    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 592
    const/4 v10, 0x0

    goto :goto_0

    .line 594
    .end local v7    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_3
    iget v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 595
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, "protocol":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 597
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v5

    .line 598
    .local v5, "extras":Landroid/os/Bundle;
    new-instance v2, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v2, v0, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .local v2, "acct":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    new-instance v6, Landroid/content/SyncResult;

    invoke-direct {v6}, Landroid/content/SyncResult;-><init>()V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getEasSyncHandler(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)Lcom/kingsoft/exchange/service/EasSyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    .line 603
    .end local v2    # "acct":Landroid/accounts/Account;
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 604
    const/4 v10, 0x0

    goto :goto_0

    .line 607
    .end local v8    # "protocol":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "MessageBodySync"

    const-string/jumbo v1, "\u65e0\u6548\u7684\u8d26\u6237\u534f\u8bae\u7c7b\u578b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 608
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 619
    iget-wide v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailboxKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 620
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-wide v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccountKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 623
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "protocol":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    const v1, 0x7f100303

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    const/4 v1, 0x1

    iput v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    goto :goto_0

    .line 628
    :cond_2
    const v1, 0x7f100305

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 629
    const/4 v1, 0x2

    iput v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    goto :goto_0

    .line 630
    :cond_3
    const v1, 0x7f100302

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const/4 v1, 0x3

    iput v1, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    goto :goto_0
.end method

.method public useCache(Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;)V
    .locals 1
    .param p1, "cache"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .prologue
    .line 640
    iget-object v0, p1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    .line 641
    iget-object v0, p1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 642
    iget-object v0, p1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 643
    iget v0, p1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    iput v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    .line 644
    return-void
.end method
