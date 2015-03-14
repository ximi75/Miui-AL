.class public Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AttachmentManagerAdapter.java"


# static fields
.field public static final MODE_CAB:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AttachmentMgrAdapter"


# instance fields
.field private iCheckedPos:Ljava/lang/Integer;

.field private iRemovedPos:Ljava/lang/Integer;

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

.field private final mContext:Landroid/content/Context;

.field private mFormatIconHeight:I

.field private mFormatIconWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field private setEnterCab:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private setExitCab:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILjava/util/Set;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "mCheckedMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 63
    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iRemovedPos:Ljava/lang/Integer;

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setEnterCab:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setExitCab:Ljava/util/Set;

    .line 64
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    .line 65
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mCheckedMap:Ljava/util/Set;

    .line 69
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mFormatIconWidth:I

    .line 70
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mFormatIconHeight:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->sendMessageByHandler(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private openFile(J)V
    .locals 4
    .param p1, "attachmentId"    # J

    .prologue
    .line 381
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 383
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isHandleableCompressedFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    const-string/jumbo v2, "attachmentId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 391
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_0
.end method

.method private sendMessageByHandler(II)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "attId"    # I

    .prologue
    .line 442
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->sendMessageByHandler(III)V

    .line 443
    return-void
.end method

.method private sendMessageByHandler(III)V
    .locals 3
    .param p1, "cmdId"    # I
    .param p2, "attId"    # I
    .param p3, "attSize"    # I

    .prologue
    .line 446
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 447
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 448
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "attId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 452
    const-string/jumbo v2, "attSize"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 455
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 402
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, "intent":Landroid/content/Intent;
    const v6, 0x80001

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v6, v7, v8}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->updateAttachmentSnapshotPathOrNOP(Landroid/content/Context;J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f10028a

    .line 424
    .local v1, "dialogMessage":I
    const v2, 0x7f10028b

    .line 425
    .local v2, "dialogTitle":I
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_0

    .line 428
    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v1    # "dialogMessage":I
    .end local v2    # "dialogTitle":I
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 429
    .local v5, "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "attId"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const/16 v6, 0x105

    iput v6, v5, Landroid/os/Message;->what:I

    .line 433
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f1001b1

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "strs"    # [Ljava/lang/String;

    .prologue
    .line 483
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v3, "sbString":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 485
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public clearCabSet()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setEnterCab:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 473
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setExitCab:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 474
    return-void
.end method

.method public clearPosition()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 477
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setRemovedPos(Ljava/lang/Integer;)V

    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setCheckedPos(Ljava/lang/Integer;)V

    .line 479
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mMode:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 36
    .param p1, "position"    # I
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v22

    .line 122
    .local v22, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    if-nez p2, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040030

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    .line 129
    .local v24, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v33, Lcom/kingsoft/email/mail/attachment/ViewHolder;

    invoke-direct/range {v33 .. v33}, Lcom/kingsoft/email/mail/attachment/ViewHolder;-><init>()V

    .line 130
    .local v33, "viewHolder":Lcom/kingsoft/email/mail/attachment/ViewHolder;
    const v5, 0x7f0c00ca

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 132
    .local v21, "attachmentView":Landroid/view/View;
    const v5, 0x7f0c00d5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attName:Landroid/widget/TextView;

    .line 134
    const v5, 0x7f0c00d6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attSender:Landroid/widget/TextView;

    .line 136
    const v5, 0x7f0c00d7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->recvTime:Landroid/widget/TextView;

    .line 138
    const v5, 0x7f0c00d8

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attSize:Landroid/widget/TextView;

    .line 140
    const v5, 0x7f0c00cd

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    .line 142
    const v5, 0x7f0c00d3

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->formatIcon:Landroid/widget/ImageView;

    .line 146
    const v5, 0x7f0c00cf

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mimeType:Landroid/widget/TextView;

    .line 148
    const v5, 0x7f0c00c6

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    .line 149
    const v5, 0x7f0c00c8

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletePlaceHolder:Landroid/view/View;

    .line 150
    const v5, 0x7f0c00c7

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    .line 151
    const v5, 0x7f0c00c9

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    .line 153
    const v5, 0x7f0c00ca

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    .line 154
    const/16 v5, 0x64

    move-object/from16 v0, v33

    iput v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    .line 155
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 161
    .end local v21    # "attachmentView":Landroid/view/View;
    :goto_0
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 162
    .local v10, "attAttIdIndex":I
    const-string/jumbo v5, "fileName"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 163
    .local v15, "attNameIndex":I
    const-string/jumbo v5, "mimeType"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 164
    .local v14, "attMimeIndex":I
    const-string/jumbo v5, "size"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 165
    .local v19, "attSizeIndex":I
    const-string/jumbo v5, "uiState"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 167
    .local v20, "attStateIndex":I
    const-string/jumbo v5, "uiDownloadedSize"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 169
    .local v12, "attDownloadedSizeIndex":I
    const-string/jumbo v5, "recvTime"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 171
    .local v16, "attRecvTimeIndex":I
    const-string/jumbo v5, "senderDisplayName"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 174
    .local v18, "attSenderNameIndex":I
    const-string/jumbo v5, "senderAddress"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 177
    .local v17, "attSenderAddress":I
    const-string/jumbo v5, "contentUri"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 179
    .local v11, "attContentUriIdx":I
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 180
    .local v31, "strSenderAddress":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 182
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 183
    .local v32, "totalSize":I
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 184
    .local v23, "downloadedSize":I
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentFormatIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 186
    .local v8, "formatDrawableId":I
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentSaveStatusIcon(Z)I

    move-result v30

    .line 188
    .local v30, "stateDrawableId":I
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 189
    .local v29, "state":I
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 190
    .local v13, "attId":I
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "contentUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAbsolutePathFromInternalUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 198
    :cond_0
    const-string/jumbo v5, "mailboxKey"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v33

    iput v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailboxKey:I

    .line 199
    const-string/jumbo v5, "messageKey"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v33

    iput v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->messageKey:I

    .line 200
    const-string/jumbo v5, "accountKey"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v33

    iput v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->accountKey:I

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)V

    .line 204
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attName:Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    move-object/from16 v0, v33

    iput v13, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attId:I

    .line 206
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 207
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v6, v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;Lcom/kingsoft/email/mail/attachment/ViewHolder;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 220
    .local v28, "recTimeStr":Ljava/lang/String;
    if-eqz v28, :cond_1

    .line 222
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->recvTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-static {v6, v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-static {v6, v7}, Lcom/kingsoft/email/mail/attachment/StringUtil;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attSender:Landroid/widget/TextView;

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-static {v6, v0, v1}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "mime":Ljava/lang/String;
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mimeType:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    move-object/from16 v25, v0

    .line 238
    .local v25, "imageView":Lcom/kingsoft/email/mail/attachment/ProgressImageView;
    const/16 v26, 0x0

    .line 241
    .local v26, "isCheckMode":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mCheckedMap:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iRemovedPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setExitCab:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setExitCab:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string/jumbo v5, "AttachmentMgrAdapter"

    const-string/jumbo v6, "Exit CAB mode"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setTag(Ljava/lang/Object;)V

    .line 288
    :cond_2
    :goto_2
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->formatIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mFormatIconWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mFormatIconHeight:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static/range {v3 .. v9}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->loadBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIILandroid/content/Context;)V

    .line 291
    if-eqz v26, :cond_e

    .line 292
    const/4 v5, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setDownloadState(I)V

    .line 293
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setClickable(Z)V

    .line 363
    :goto_3
    sget-boolean v5, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isSenderAddressOff:Z

    if-nez v5, :cond_3

    .line 364
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attSender:Landroid/widget/TextView;

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v6, v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_3
    return-object v24

    .line 157
    .end local v3    # "contentUri":Ljava/lang/String;
    .end local v4    # "mime":Ljava/lang/String;
    .end local v8    # "formatDrawableId":I
    .end local v10    # "attAttIdIndex":I
    .end local v11    # "attContentUriIdx":I
    .end local v12    # "attDownloadedSizeIndex":I
    .end local v13    # "attId":I
    .end local v14    # "attMimeIndex":I
    .end local v15    # "attNameIndex":I
    .end local v16    # "attRecvTimeIndex":I
    .end local v17    # "attSenderAddress":I
    .end local v18    # "attSenderNameIndex":I
    .end local v19    # "attSizeIndex":I
    .end local v20    # "attStateIndex":I
    .end local v23    # "downloadedSize":I
    .end local v24    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v25    # "imageView":Lcom/kingsoft/email/mail/attachment/ProgressImageView;
    .end local v26    # "isCheckMode":Z
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "recTimeStr":Ljava/lang/String;
    .end local v29    # "state":I
    .end local v30    # "stateDrawableId":I
    .end local v31    # "strSenderAddress":Ljava/lang/String;
    .end local v32    # "totalSize":I
    .end local v33    # "viewHolder":Lcom/kingsoft/email/mail/attachment/ViewHolder;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .restart local v33    # "viewHolder":Lcom/kingsoft/email/mail/attachment/ViewHolder;
    move-object/from16 v24, p2

    .line 158
    check-cast v24, Landroid/widget/FrameLayout;

    .restart local v24    # "frameLayout":Landroid/widget/FrameLayout;
    goto/16 :goto_0

    .line 186
    .restart local v8    # "formatDrawableId":I
    .restart local v10    # "attAttIdIndex":I
    .restart local v11    # "attContentUriIdx":I
    .restart local v12    # "attDownloadedSizeIndex":I
    .restart local v14    # "attMimeIndex":I
    .restart local v15    # "attNameIndex":I
    .restart local v16    # "attRecvTimeIndex":I
    .restart local v17    # "attSenderAddress":I
    .restart local v18    # "attSenderNameIndex":I
    .restart local v19    # "attSizeIndex":I
    .restart local v20    # "attStateIndex":I
    .restart local v23    # "downloadedSize":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v31    # "strSenderAddress":Ljava/lang/String;
    .restart local v32    # "totalSize":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 249
    .restart local v3    # "contentUri":Ljava/lang/String;
    .restart local v4    # "mime":Ljava/lang/String;
    .restart local v13    # "attId":I
    .restart local v25    # "imageView":Lcom/kingsoft/email/mail/attachment/ProgressImageView;
    .restart local v26    # "isCheckMode":Z
    .restart local v28    # "recTimeStr":Ljava/lang/String;
    .restart local v29    # "state":I
    .restart local v30    # "stateDrawableId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mCheckedMap:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 250
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iRemovedPos:Ljava/lang/Integer;

    goto :goto_2

    .line 253
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mCheckedMap:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 254
    const-string/jumbo v5, "AttachmentMgrAdapter"

    const-string/jumbo v6, "Enter CAB mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setTag(Ljava/lang/Object;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setEnterCab:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setEnterCab:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_9

    .line 259
    const v5, 0x7f0200e8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 264
    :cond_8
    :goto_4
    const/16 v26, 0x1

    goto/16 :goto_2

    .line 261
    :cond_9
    const v5, 0x7f0200e7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto :goto_4

    .line 269
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mCheckedMap:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p1

    if-ne v0, v5, :cond_b

    .line 271
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    .line 272
    const v5, 0x7f0200e8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 286
    :goto_5
    const/16 v26, 0x1

    goto/16 :goto_2

    .line 274
    :cond_b
    const v5, 0x7f0200e8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto :goto_5

    .line 277
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iRemovedPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p1

    if-ne v0, v5, :cond_d

    .line 278
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iRemovedPos:Ljava/lang/Integer;

    .line 279
    const v5, 0x7f0200e7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto :goto_5

    .line 281
    :cond_d
    const v5, 0x7f0200e7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 283
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 295
    :cond_e
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 296
    move/from16 v0, v23

    int-to-double v5, v0

    const-wide/high16 v34, 0x4024000000000000L

    mul-double v5, v5, v34

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v5, v5, v34

    const-wide/high16 v34, 0x4024000000000000L

    mul-double v5, v5, v34

    double-to-int v5, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setProgress(I)V

    .line 298
    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setClickable(Z)V

    .line 300
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v33

    invoke-direct {v6, v0, v1, v2, v13}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;ILcom/kingsoft/email/mail/attachment/ViewHolder;I)V

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const/4 v5, 0x3

    move/from16 v0, v29

    if-ne v0, v5, :cond_f

    .line 319
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setDownloadState(I)V

    .line 320
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v6, 0x7f02018d

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 327
    :cond_f
    const/4 v5, 0x2

    move/from16 v0, v29

    if-ne v0, v5, :cond_10

    .line 328
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setDownloadState(I)V

    .line 330
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    .line 331
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setClickable(Z)V

    .line 332
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v6, 0x7f02018c

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 334
    :cond_10
    if-nez v29, :cond_11

    .line 336
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    .line 337
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setDownloadState(I)V

    .line 338
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setClickable(Z)V

    .line 339
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v6, 0x7f02018f

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 347
    :cond_11
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setClickable(Z)V

    .line 348
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v6, 0x7f02018e

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 351
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setDownloadState(I)V

    goto/16 :goto_3
.end method

.method public setCheckedPos(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "iCheckedPos"    # Ljava/lang/Integer;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iCheckedPos:Ljava/lang/Integer;

    .line 469
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mHandler:Landroid/os/Handler;

    .line 461
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mMode:I

    .line 75
    return-void
.end method

.method public setRemovedPos(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "iRemovedPos"    # Ljava/lang/Integer;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->iRemovedPos:Ljava/lang/Integer;

    .line 465
    return-void
.end method

.method setState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string/jumbo v0, "AttachmentMgrAdapter"

    const-string/jumbo v1, "view holder is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string/jumbo v0, "AttachmentMgrAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    iget v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    packed-switch v0, :pswitch_data_0

    .line 114
    const-string/jumbo v0, "AttachmentMgrAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid ui state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    iget-object v0, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    iget v2, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailboxKey:I

    iget v3, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->accountKey:I

    iget v4, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->messageKey:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->drawMail(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
