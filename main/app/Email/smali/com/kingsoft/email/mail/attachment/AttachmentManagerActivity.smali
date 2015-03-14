.class public Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;,
        Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;,
        Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;,
        Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/ui/BaseActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;"
    }
.end annotation


# static fields
.field private static final ATTACHMENT_LOADER:I = 0xa

.field private static final LATEST_SORT_CHOICE:Ljava/lang/String; = "latestSortChoice"

.field private static final LOG_TAG:Ljava/lang/String; = "AttachmentManager"

.field private static final MAILBOX_LOADER:I = 0xb

.field private static final PREF_FILENAME:Ljava/lang/String; = "AttachmentManager"

.field private static mJointProjection:[Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarView:Landroid/view/View;

.field private mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

.field private mAllInboxIds:Ljava/lang/String;

.field private mAttachmentActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

.field private mCheckedMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentSortCmd:I

.field private mEmptyGroup:Landroid/widget/LinearLayout;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

.field private mIsCombineAccount:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mListview:Landroid/widget/ListView;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mNoAttachment:Landroid/widget/ImageView;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPreviewTimeQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchActionMode:Landroid/view/ActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchWidgetAnchorView:Landroid/view/View;

.field private mSelectedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefrences:Landroid/content/SharedPreferences;

.field private mSortAlertDialog:Lmiui/app/AlertDialog;

.field private mStrSearchFilter:Ljava/lang/String;

.field private strSelectAll:Ljava/lang/String;

.field private strSelectNone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_MGR_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->JOINT_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->mergeProjection([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mJointProjection:[Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mIsCombineAccount:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;

    .line 105
    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mStrSearchFilter:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;

    .line 510
    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionMode:Landroid/view/ActionMode;

    .line 512
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    .line 667
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 759
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$8;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$8;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 768
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$9;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$9;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mPreviewTimeQueue:Ljava/util/ArrayList;

    .line 890
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAttachmentActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mNoAttachment:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->sort(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchWidgetAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->strSelectAll:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->strSelectNone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->forwardAttachmentByEmail(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->share(Ljava/util/ArrayList;)V

    return-void
.end method

.method private declared-synchronized addAttachmentPreviewTime(J)V
    .locals 7
    .param p1, "attId"    # J

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mPreviewTimeQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;JJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    monitor-exit p0

    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private buildActionSubTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "strSearchFilter"    # Ljava/lang/String;
    .param p2, "strSortCmd"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string/jumbo v0, ""

    .line 646
    .local v0, "subtitleContentString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 647
    move-object v0, p1

    .line 651
    :goto_0
    return-object v0

    .line 649
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private buildActionTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strSearchFilter"    # Ljava/lang/String;
    .param p2, "strSortCmd"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string/jumbo v0, ""

    .line 637
    .local v0, "titleContentString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 638
    const v1, 0x7f10035b

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    .line 640
    :cond_0
    const v1, 0x7f1000ec

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private customizeActionbar()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 367
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    .line 371
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    const v4, 0x7f0c00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 373
    .local v2, "title":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    const v4, 0x7f0c00e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    .local v1, "subtitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "searchAttachment"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10035b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "searchAttachment"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    const v4, 0x7f0c00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 384
    .local v0, "backIcon":Landroid/widget/ImageView;
    new-instance v3, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$4;

    invoke-direct {v3, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$4;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 394
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 395
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 396
    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 398
    .end local v0    # "backIcon":Landroid/widget/ImageView;
    .end local v1    # "subtitle":Landroid/widget/TextView;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private forwardAttachmentByEmail(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "attIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 784
    :cond_0
    const-string/jumbo v1, "AttachmentManager"

    const-string/jumbo v2, "no attachment!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 791
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 790
    .local v0, "selectedAccount":Lcom/kingsoft/mail/providers/Account;
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->composeForAttSharing(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "selectedAccount":Lcom/kingsoft/mail/providers/Account;
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getLastViewedAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 797
    return-object v0
.end method

.method private getCursorLoader(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/CursorLoader;
    .locals 12
    .param p1, "accout"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "strSearchFilter"    # Ljava/lang/String;
    .param p3, "strSenderEmail"    # Ljava/lang/String;
    .param p4, "isDefaultSort"    # Z

    .prologue
    .line 904
    const-string/jumbo v10, " 1 = 1"

    .line 906
    .local v10, "specialSelection":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v7, "lstParam":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 908
    new-instance v9, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildEscapeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 910
    .local v9, "sbParam":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildSearchSelection()Ljava/lang/String;

    move-result-object v10

    .line 911
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    invoke-direct {p0, v0, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateActionbarTitle(ILjava/lang/String;)V

    .line 920
    .end local v9    # "sbParam":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    const-string/jumbo v8, ""

    .line 921
    .local v8, "previewTimeSelection":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 922
    const-string/jumbo v8, "previewTime desc,"

    .line 926
    :cond_1
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mJointProjection:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAllInboxIds:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildFilterSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mIsCombineAccount:Z

    invoke-static {v5, p1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildAccountEmailSelection(ZLcom/kingsoft/mail/providers/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v7, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, "recvTime"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, " desc"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 915
    .end local v8    # "previewTimeSelection":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    invoke-static {p3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildSenderEmailSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private getMailboxIdsByType(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 18
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p1, "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1030
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v3, "inboxIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1032
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1034
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;

    .line 1035
    .local v8, "mr":Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;
    iget-wide v10, v8, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mParentKey:J

    .line 1036
    .local v10, "parentKey":J
    iget-wide v5, v8, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mId:J

    .line 1037
    .local v5, "mailId":J
    iget v7, v8, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mType:I

    .line 1039
    .local v7, "mailType":I
    :goto_1
    const-wide/16 v13, -0x1

    cmp-long v13, v10, v13

    if-eqz v13, :cond_1

    .line 1040
    move-wide v5, v10

    .line 1041
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;

    .line 1042
    .local v9, "next":Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;
    if-eqz v9, :cond_1

    .line 1043
    iget-wide v10, v9, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mParentKey:J

    .line 1044
    iget v7, v9, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mType:I

    .line 1050
    goto :goto_1

    .line 1052
    .end local v9    # "next":Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;
    :cond_1
    move/from16 v0, p2

    if-ne v7, v0, :cond_0

    .line 1053
    const-string/jumbo v13, "AttachmentManager"

    const-string/jumbo v14, "Got it: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1054
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1059
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;>;"
    .end local v5    # "mailId":J
    .end local v7    # "mailType":I
    .end local v8    # "mr":Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;
    .end local v10    # "parentKey":J
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1061
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1074
    :cond_3
    :goto_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 1063
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 1064
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1065
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 1066
    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1071
    .end local v2    # "i":I
    :cond_5
    const-string/jumbo v13, "AttachmentManager"

    const-string/jumbo v14, "there is no inbox folder!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method private inflateSearchView(Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)Landroid/view/View;
    .locals 4
    .param p1, "activity"    # Lmiui/app/Activity;
    .param p2, "searchCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 336
    invoke-virtual {p1}, Lmiui/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiui/R$layout;->search_stub:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "searchView":Landroid/view/View;
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    return-object v0
.end method

.method private share(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v7, 0x7f10036d

    .line 571
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    :cond_0
    const-string/jumbo v4, "AttachmentManager"

    const-string/jumbo v5, "empty"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 573
    invoke-static {p0, v7}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 592
    :goto_0
    return-void

    .line 577
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 579
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 580
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    .end local v2    # "uri":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildSendFile(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 586
    .local v1, "shareIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 587
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10037e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    :cond_4
    invoke-static {p0, v7}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 6
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 835
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->addAttachmentPreviewTime(J)V

    .line 837
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->showAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showActivityNotFoundDialog(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 846
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 847
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "attId"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 848
    const/16 v2, 0x105

    iput v2, v1, Landroid/os/Message;->what:I

    .line 849
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    invoke-virtual {v2, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->sendMessage(Landroid/os/Message;)Z

    .line 850
    const v2, 0x7f1001b1

    invoke-static {p0, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private sort(I)V
    .locals 3
    .param p1, "sortCmd"    # I

    .prologue
    .line 654
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    if-eq v0, p1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 659
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    .line 660
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 665
    :cond_0
    return-void
.end method

.method private updateActionbarTitle(ILjava/lang/String;)V
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "strSearchFilter"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f100251

    const v7, 0x7f1000df

    const v6, 0x7f1000de

    const v5, 0x7f1000dd

    const v4, 0x7f1000dc

    .line 595
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 598
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBarView:Landroid/view/View;

    const v3, 0x7f0c00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 600
    .local v0, "subtitle":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 633
    .end local v0    # "subtitle":Landroid/widget/TextView;
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 602
    .restart local v0    # "subtitle":Landroid/widget/TextView;
    .restart local v1    # "title":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionSubTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 608
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p0, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionSubTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-virtual {p0, v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionSubTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {p0, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionSubTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 626
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {p0, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->buildActionSubTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized updateAllPreviewTime()V
    .locals 7

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mPreviewTimeQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;

    .line 821
    .local v1, "pt":Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->mAttachmentId:J
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->access$2100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;)J

    move-result-wide v3

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->mPreviewTime:J
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->access$2200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->updateAttachmentPreviewTime(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 820
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pt":Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 825
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mPreviewTimeQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public deleteCheckFiles()V
    .locals 4

    .prologue
    .line 501
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 503
    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAttachmentActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->deleteAttachment(Ljava/lang/Long;)V

    goto :goto_0

    .line 507
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f1001af

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 508
    return-void
.end method

.method public executeSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-boolean v1, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isLocalSearchEabled:Z

    if-eqz v1, :cond_0

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    const-string/jumbo v1, "searchAttachment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 357
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 1102
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iput-object p0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    .line 127
    const-string/jumbo v0, "AttachmentManager"

    invoke-virtual {p0, v0, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    .line 129
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100388

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isRestoreSortStateEabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "latestSortChoice"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    new-instance v4, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    invoke-virtual {v1, v2, v0, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;

    .line 138
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mActionBar:Landroid/app/ActionBar;

    .line 139
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->customizeActionbar()V

    .line 142
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoaderManager:Landroid/app/LoaderManager;

    .line 143
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    invoke-direct {v0, p0, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    .line 145
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-direct {v0, p0, v3}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAttachmentActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    .line 148
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    const v2, 0x7f040030

    sget-object v4, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATT_FROM_COLUMNS:[Ljava/lang/String;

    sget-object v5, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATT_TO_VIEWS:[I

    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILjava/util/Set;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    .line 152
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setHandler(Landroid/os/Handler;)V

    .line 154
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-direct {p0, p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->inflateSearchView(Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchWidgetAnchorView:Landroid/view/View;

    .line 155
    const v0, 0x7f0c00c3

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    .line 156
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 161
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 173
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 308
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 310
    const v0, 0x7f0c00bf

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyGroup:Landroid/widget/LinearLayout;

    .line 311
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 312
    const v0, 0x7f0c00c2

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0c00c0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 314
    const v0, 0x7f0c00c1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mNoAttachment:Landroid/widget/ImageView;

    .line 316
    sget-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isRestoreSortStateEabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "latestSortChoice"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :cond_0
    iput v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    .line 318
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 319
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 321
    return-void

    :cond_1
    move v0, v6

    .line 129
    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 856
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 857
    const/4 v7, 0x0

    .line 858
    .local v7, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getLastViewedAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    .line 859
    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mIsCombineAccount:Z

    .line 862
    const-string/jumbo v8, ""

    .line 864
    .local v8, "strSenderEmail":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 865
    const-string/jumbo v0, "senderAddress"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 867
    const-string/jumbo v0, "searchAttachment"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mStrSearchFilter:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f100290

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 870
    :cond_0
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    invoke-direct {p0, v0, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateActionbarTitle(ILjava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mStrSearchFilter:Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v7, v0, v8, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getCursorLoader(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/CursorLoader;

    move-result-object v0

    .line 886
    .end local v7    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v8    # "strSenderEmail":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 859
    .restart local v7    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local v8    # "strSenderEmail":Ljava/lang/String;
    :cond_2
    move v1, v5

    .line 872
    goto :goto_1

    .line 875
    .end local v7    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v8    # "strSenderEmail":Ljava/lang/String;
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 876
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v3, v5

    const-string/jumbo v5, "type"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v5, "parentKey"

    aput-object v5, v3, v1

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 885
    :cond_4
    const-string/jumbo v0, "AttachmentManager"

    const-string/jumbo v2, "An invalid loader id: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v2, v1}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v4

    .line 886
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 466
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f120001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 467
    const v2, 0x7f0c0261

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 468
    .local v1, "sortItem":Landroid/view/MenuItem;
    new-instance v2, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$5;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$5;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 479
    const/4 v2, 0x1

    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateAllPreviewTime()V

    .line 831
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onDestroy()V

    .line 832
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 20
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v11

    .line 942
    .local v11, "id":I
    move-object/from16 v9, p2

    .line 943
    .local v9, "c":Landroid/database/Cursor;
    const/16 v2, 0xa

    if-ne v11, v2, :cond_3

    .line 944
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    if-eqz v2, :cond_0

    .line 945
    const-string/jumbo v15, "recvTime"

    .line 946
    .local v15, "sortCondition":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    packed-switch v2, :pswitch_data_0

    .line 960
    const-string/jumbo v2, "AttachmentManager"

    const-string/jumbo v3, "weird loader id:%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 963
    :goto_0
    new-instance v9, Lcom/kingsoft/email/mail/attachment/SortCursor;

    .end local v9    # "c":Landroid/database/Cursor;
    move-object/from16 v0, p2

    invoke-direct {v9, v0, v15}, Lcom/kingsoft/email/mail/attachment/SortCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 966
    .end local v15    # "sortCondition":Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mStrSearchFilter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 967
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mStrSearchFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateActionbarTitle(ILjava/lang/String;)V

    .line 972
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    invoke-virtual {v2, v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    const/16 v3, 0x104

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1026
    :cond_1
    :goto_2
    return-void

    .line 948
    .restart local v15    # "sortCondition":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v15, "mimeType"

    .line 949
    goto :goto_0

    .line 951
    :pswitch_1
    const-string/jumbo v15, "fileName"

    .line 952
    goto :goto_0

    .line 954
    :pswitch_2
    const-string/jumbo v15, "senderAddress"

    .line 955
    goto :goto_0

    .line 957
    :pswitch_3
    const-string/jumbo v15, "recvTime"

    .line 958
    goto :goto_0

    .line 969
    .end local v15    # "sortCondition":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCurrentSortCmd:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateActionbarTitle(ILjava/lang/String;)V

    goto :goto_1

    .line 977
    :cond_3
    const/16 v2, 0xb

    if-ne v11, v2, :cond_a

    .line 978
    if-eqz v9, :cond_1

    .line 979
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 981
    .local v13, "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;>;"
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 982
    const-wide/16 v4, 0x0

    .line 983
    .local v4, "mailId":J
    const/4 v6, -0x1

    .line 984
    .local v6, "mailType":I
    const-wide/16 v7, 0x0

    .line 986
    .local v7, "mailParentKey":J
    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 987
    .local v12, "idIdx":I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_4

    .line 988
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 990
    :cond_4
    const-string/jumbo v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 991
    .local v16, "typeIdx":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_5

    .line 992
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 995
    :cond_5
    const-string/jumbo v2, "parentKey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 996
    .local v14, "parentKeyIdx":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_6

    .line 997
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1000
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    new-instance v2, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;JIJ)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1003
    .end local v4    # "mailId":J
    .end local v6    # "mailType":I
    .end local v7    # "mailParentKey":J
    .end local v12    # "idIdx":I
    .end local v14    # "parentKeyIdx":I
    .end local v16    # "typeIdx":I
    :catch_0
    move-exception v10

    .line 1004
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getMailboxIdsByType(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAllInboxIds:Ljava/lang/String;

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAllInboxIds:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAllInboxIds:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1014
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAllInboxIds:Ljava/lang/String;

    .line 1017
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v3, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_2

    .line 1008
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1023
    .end local v13    # "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;>;"
    :cond_a
    const-string/jumbo v2, "AttachmentManager"

    const-string/jumbo v3, "invalid loader id: %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1081
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 484
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 487
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 497
    :goto_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 489
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->onBackPressed()V

    goto :goto_0

    .line 492
    :sswitch_1
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0262 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 326
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 327
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 332
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 333
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStop()V

    .line 363
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 364
    return-void
.end method

.method public updateTopTitles(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const v3, 0x102001a

    .line 1084
    if-nez p1, :cond_0

    .line 1097
    .end local p1    # "mode":Landroid/view/ActionMode;
    :goto_0
    return-void

    .line 1087
    .restart local p1    # "mode":Landroid/view/ActionMode;
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0018

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1091
    check-cast p1, Lmiui/view/EditActionMode;

    .end local p1    # "mode":Landroid/view/ActionMode;
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->strSelectNone:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1094
    .restart local p1    # "mode":Landroid/view/ActionMode;
    :cond_1
    check-cast p1, Lmiui/view/EditActionMode;

    .end local p1    # "mode":Landroid/view/ActionMode;
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->strSelectAll:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
