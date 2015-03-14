.class public Lcom/kingsoft/mail/browse/ConversationPagerAdapter;
.super Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;
.source "ConversationPagerAdapter.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationPagerAdapter$ListObserver;
    }
.end annotation


# static fields
.field private static final BUNDLE_DETACHED_MODE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "ConvPager"

.field private static mInitialConversation:Lcom/kingsoft/mail/providers/Conversation;


# instance fields
.field private final mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mCommonFragmentArgs:Landroid/os/Bundle;

.field private mController:Lcom/kingsoft/mail/ui/ActivityController;

.field private mDetachedMode:Z

.field private final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

.field private mInDataSetChange:Z

.field private mLastKnownCount:I

.field private final mListObserver:Landroid/database/DataSetObserver;

.field private mPager:Lcom/kingsoft/mail/browse/ViewPager;

.field private mResources:Landroid/content/res/Resources;

.field private mSanitizedHtml:Z

.field private mSingletonMode:Z

.field private mStopListeningMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-detachedmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->BUNDLE_DETACHED_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p5, "initialConversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p2, v2}, Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;-><init>(Landroid/app/FragmentManager;Z)V

    .line 59
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$ListObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$ListObserver;-><init>(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;Lcom/kingsoft/mail/browse/ConversationPagerAdapter$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    .line 60
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$1;-><init>(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 75
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    .line 79
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    .line 83
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    .line 100
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    .line 124
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mResources:Landroid/content/res/Resources;

    .line 125
    invoke-static {p3}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->makeBasicArgs(Lcom/kingsoft/mail/providers/Account;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mCommonFragmentArgs:Landroid/os/Bundle;

    .line 126
    sput-object p5, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 127
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 128
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 129
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSanitizedHtml:Z

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)Lcom/kingsoft/mail/browse/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    return-object v0
.end method

.method private getConversationViewFragment(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .locals 2
    .param p1, "c"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 213
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSanitizedHtml:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mCommonFragmentArgs:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->newInstance(Landroid/os/Bundle;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/ConversationViewFragment;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mCommonFragmentArgs:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->newInstance(Landroid/os/Bundle;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v0

    .line 218
    .local v0, "f":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    goto :goto_0
.end method

.method private getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-eqz v1, :cond_0

    .line 180
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-nez v1, :cond_1

    .line 175
    const-string/jumbo v1, "ConvPager"

    const-string/jumbo v2, "Pager adapter has a null controller. If the conversation view is going away, this is fine.  Otherwise, the state is inconsistent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 388
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    :goto_0
    if-nez v0, :cond_0

    .line 389
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 391
    :cond_0
    return-object v0

    .line 387
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInitialConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method private toastLargeMail(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 20
    .param p1, "c"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 513
    const/4 v15, 0x0

    .line 514
    .local v15, "messageCursor":Landroid/database/Cursor;
    const-string/jumbo v2, "uimessage"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 515
    .local v3, "msgUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 518
    const/16 v16, 0x0

    .line 520
    .local v16, "uiMessage":Lcom/kingsoft/mail/providers/Message;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    new-instance v17, Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16    # "uiMessage":Lcom/kingsoft/mail/providers/Message;
    .local v17, "uiMessage":Lcom/kingsoft/mail/providers/Message;
    move-object/from16 v16, v17

    .line 527
    .end local v17    # "uiMessage":Lcom/kingsoft/mail/providers/Message;
    .restart local v16    # "uiMessage":Lcom/kingsoft/mail/providers/Message;
    :cond_0
    if-eqz v15, :cond_1

    .line 528
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_1
    :goto_0
    if-nez v16, :cond_4

    .line 572
    :cond_2
    :goto_1
    return-void

    .line 524
    :catch_0
    move-exception v13

    .line 525
    .local v13, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    if-eqz v15, :cond_1

    .line 528
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 527
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    .line 528
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 534
    :cond_4
    const/4 v11, 0x0

    .line 535
    .local v11, "bodyCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 536
    .local v12, "bodyLengthInDB":I
    const/4 v14, 0x0

    .line 537
    .local v14, "messageBodyLength":I
    const/4 v10, 0x0

    .line 538
    .local v10, "bodyColumn":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 539
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    .line 540
    const-string/jumbo v10, "htmlContent"

    .line 548
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "length("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string/jumbo v7, "messageKey = ?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 551
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 552
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 553
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    .line 558
    :cond_5
    if-eqz v11, :cond_6

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_6
    :goto_3
    move-object/from16 v0, v16

    iget v2, v0, Lcom/kingsoft/mail/providers/Message;->turncated:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    if-le v12, v14, :cond_2

    .line 563
    :cond_7
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$2;-><init>(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 541
    :cond_8
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 542
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    .line 543
    const-string/jumbo v10, "textContent"

    goto/16 :goto_2

    .line 555
    :catch_1
    move-exception v13

    .line 556
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 558
    if-eqz v11, :cond_6

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 558
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_9

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method


# virtual methods
.method public getConversationPosition(Lcom/kingsoft/mail/providers/Conversation;)I
    .locals 11
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v3, -0x2

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 395
    if-nez p1, :cond_0

    .line 425
    :goto_0
    return v3

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 400
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->isPagingDisabled(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getDefaultConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 402
    .local v1, "def":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {p1, v1}, Lcom/kingsoft/mail/providers/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 403
    const-string/jumbo v5, "ConvPager"

    const-string/jumbo v6, "unable to find conversation in singleton mode. c=%s def=%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v1, v7, v9

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 407
    :cond_1
    const-string/jumbo v5, "ConvPager"

    const-string/jumbo v6, "in CPA.getConversationPosition returning 0, conv=%s this=%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p0, v7, v9

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v4

    .line 409
    goto :goto_0

    .line 415
    .end local v1    # "def":Lcom/kingsoft/mail/providers/Conversation;
    :cond_2
    const/4 v3, -0x2

    .line 416
    .local v3, "result":I
    iget-wide v5, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationPosition(J)I

    move-result v2

    .line 417
    .local v2, "pos":I
    if-ltz v2, :cond_3

    .line 418
    const-string/jumbo v5, "ConvPager"

    const-string/jumbo v6, "pager adapter found repositioned convo %s at pos=%d"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 420
    move v3, v2

    .line 423
    :cond_3
    const-string/jumbo v5, "ConvPager"

    const-string/jumbo v6, "in CPA.getConversationPosition (normal), conv=%s pos=%s this=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    aput-object p0, v7, v10

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 224
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    if-eqz v2, :cond_2

    .line 225
    const-string/jumbo v2, "ConvPager"

    invoke-static {v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 227
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "ConvPager"

    const-string/jumbo v3, "IN CPA.getCount stopListeningMode, returning lastKnownCount=%d. cursor=%s real count=%s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v1

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    .line 241
    :goto_1
    return v1

    .line 227
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string/jumbo v1, "N/A"

    goto :goto_0

    .line 235
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 236
    .restart local v0    # "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->isPagingDisabled(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    const-string/jumbo v2, "ConvPager"

    const-string/jumbo v3, "IN CPA.getCount, returning 1 (effective singleton). cursor=%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 241
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_1
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    .line 188
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->isPagingDisabled(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string/jumbo v3, "ConvPager"

    const-string/jumbo v4, "pager cursor is null and position is non-zero: %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getDefaultConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 196
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    iput v7, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 207
    :goto_0
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getConversationViewFragment(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    move-result-object v2

    .line 208
    .local v2, "f":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    const-string/jumbo v3, "ConvPager"

    const-string/jumbo v4, "IN PagerAdapter.getItem, frag=%s conv=%s this=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    aput-object p0, v5, v9

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "f":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    :goto_1
    return-object v2

    .line 198
    :cond_1
    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    const-string/jumbo v3, "ConvPager"

    const-string/jumbo v4, "unable to seek to ConversationCursor pos=%d (%s)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    const/4 v2, 0x0

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyUIPositionChange()V

    .line 204
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 205
    .restart local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    iput p1, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 246
    instance-of v1, p1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    if-nez v1, :cond_0

    .line 247
    const-string/jumbo v1, "ConvPager"

    const-string/jumbo v2, "getItemPosition received unexpected item: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    move-object v0, p1

    .line 250
    check-cast v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .line 251
    .local v0, "fragment":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v1

    return v1
.end method

.method public isDetached()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    return v0
.end method

.method public isPagingDisabled(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingletonMode()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    return v0
.end method

.method public matches(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/providers/Account;->matches(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 319
    iget-boolean v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    if-eqz v7, :cond_0

    .line 320
    const-string/jumbo v7, "ConvPager"

    const-string/jumbo v8, "CPA ignoring dataset change generated during dataset change"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 377
    :goto_0
    return-void

    .line 324
    :cond_0
    iput-boolean v12, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    .line 335
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    if-eqz v7, :cond_5

    .line 336
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v7}, Lcom/kingsoft/mail/ui/ActivityController;->getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 337
    .local v1, "currConversation":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v6

    .line 338
    .local v6, "pos":I
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v3

    .line 339
    .local v3, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    const/4 v7, -0x2

    if-ne v6, v7, :cond_3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 342
    invoke-virtual {p0, v12}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setDetachedMode(Z)V

    .line 343
    const-string/jumbo v7, "ConvPager"

    const-string/jumbo v8, "CPA: current conv is gone, reverting to detached mode. c=%s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 346
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ViewPager;->getCurrentItem()I

    move-result v2

    .line 348
    .local v2, "currentItem":I
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .line 351
    .local v5, "fragment":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    if-eqz v5, :cond_2

    .line 352
    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onDetachedModeEntered()V

    .line 375
    .end local v1    # "currConversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "currentItem":I
    .end local v3    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    .end local v5    # "fragment":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .end local v6    # "pos":I
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;->notifyDataSetChanged()V

    .line 376
    iput-boolean v11, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    goto :goto_0

    .line 354
    .restart local v1    # "currConversation":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v2    # "currentItem":I
    .restart local v3    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    .restart local v5    # "fragment":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .restart local v6    # "pos":I
    :cond_2
    const-string/jumbo v7, "ConvPager"

    const-string/jumbo v8, "CPA: notifyDataSetChanged: fragment null, current item: %d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 361
    .end local v2    # "currentItem":I
    .end local v5    # "fragment":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    :cond_3
    if-nez v3, :cond_4

    const/4 v4, 0x0

    .line 363
    .local v4, "frag":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v3, v6}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->isUserVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 365
    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 366
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iput v6, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 367
    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 368
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v7, v0}, Lcom/kingsoft/mail/ui/ActivityController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_1

    .line 361
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v4    # "frag":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    :cond_4
    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    move-object v4, v7

    goto :goto_2

    .line 372
    .end local v1    # "currConversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v3    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    .end local v6    # "pos":I
    :cond_5
    const-string/jumbo v7, "ConvPager"

    const-string/jumbo v8, "in CPA.notifyDataSetChanged, doing nothing. this=%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p0, v9, v11

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 577
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 482
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 486
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-nez v5, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v2

    .line 490
    .local v2, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 497
    .local v0, "aac":Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSecureConversationViewFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v4

    .line 498
    .local v4, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    if-eqz v4, :cond_2

    .line 499
    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getmViewController()Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->saveQuickReplyCache()V

    .line 501
    :cond_2
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 502
    .local v1, "c":Lcom/kingsoft/mail/providers/Conversation;
    iput p1, v1, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 503
    const-string/jumbo v5, "ConvPager"

    const-string/jumbo v6, "pager adapter setting current conv: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 504
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v5, v1}, Lcom/kingsoft/mail/ui/ActivityController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .line 506
    .local v3, "f":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    if-eqz v3, :cond_3

    .line 507
    sget-object v5, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v5, v5, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onSelected(J)V

    .line 509
    :cond_3
    sput-object v1, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/kingsoft/mail/providers/Conversation;

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 275
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Landroid/os/Bundle;

    .line 277
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 278
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->BUNDLE_DETACHED_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 279
    .local v1, "detached":Z
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setDetachedMode(Z)V

    .line 281
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "detached":Z
    :cond_0
    const-string/jumbo v2, "ConvPager"

    const-string/jumbo v3, "OUT PagerAdapter.restoreState. this=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 282
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 263
    const-string/jumbo v1, "ConvPager"

    const-string/jumbo v2, "IN PagerAdapter.saveState. this=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 264
    invoke-super {p0}, Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 265
    .local v0, "state":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "state":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .restart local v0    # "state":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->BUNDLE_DETACHED_MODE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    return-object v0
.end method

.method public setActivityController(Lcom/kingsoft/mail/ui/ActivityController;)V
    .locals 3
    .param p1, "controller"    # Lcom/kingsoft/mail/ui/ActivityController;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 440
    .local v0, "wasNull":Z
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/ui/ActivityController;->unregisterConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 442
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/ui/ActivityController;->unregisterFolderObserver(Landroid/database/DataSetObserver;)V

    .line 444
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    .line 445
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    if-nez v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/ui/ActivityController;->registerConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 447
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/FolderObserver;->initialize(Lcom/kingsoft/mail/ui/FolderController;)Lcom/kingsoft/mail/providers/Folder;

    .line 448
    if-nez v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 455
    :cond_1
    return-void

    .line 439
    .end local v0    # "wasNull":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDetachedMode(Z)V
    .locals 1
    .param p1, "detached"    # Z

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-ne v0, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    .line 289
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->setDetachedMode()V

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setItemVisible(Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "item"    # Landroid/app/Fragment;
    .param p2, "visible"    # Z

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;->setItemVisible(Landroid/app/Fragment;Z)V

    move-object v0, p1

    .line 382
    check-cast v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .line 383
    .local v0, "fragment":Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->setExtraUserVisibleHint(Z)V

    .line 384
    return-void
.end method

.method public setPager(Lcom/kingsoft/mail/browse/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Lcom/kingsoft/mail/browse/ViewPager;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ViewPager;->setOnPageChangeListener(Lcom/kingsoft/mail/browse/ViewPager$OnPageChangeListener;)V

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    .line 433
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/browse/ViewPager;->setOnPageChangeListener(Lcom/kingsoft/mail/browse/ViewPager$OnPageChangeListener;)V

    .line 436
    :cond_1
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 256
    const-string/jumbo v0, "ConvPager"

    const-string/jumbo v1, "IN PagerAdapter.setPrimaryItem, pos=%d, frag=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/utils/FragmentStatePagerAdapter2;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public setSingletonMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    if-eq v0, p1, :cond_0

    .line 142
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    .line 143
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 461
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    if-eqz v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ActivityController;->unregisterConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 472
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    .line 475
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    .line 476
    const-string/jumbo v0, "ConvPager"

    const-string/jumbo v1, "CPA.stopListening, this=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    const-string/jumbo v1, " detachedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v1, " singletonMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v1, " mController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v1, " mPager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v1, " mStopListening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v1, " mLastKnownCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v1, " cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
