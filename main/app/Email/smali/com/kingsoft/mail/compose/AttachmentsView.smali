.class Lcom/kingsoft/mail/compose/AttachmentsView;
.super Landroid/widget/LinearLayout;
.source "AttachmentsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;,
        Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mAttachmentLayout:Landroid/widget/LinearLayout;

.field private final mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListener:Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

.field private mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

.field private mShowAllAttachments:Z

.field private mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

.field private mTotalAtts:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    .line 87
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/AttachmentsView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/compose/AttachmentsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/AttachmentsView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mShowAllAttachments:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/compose/AttachmentsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/AttachmentsView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->updateAttachmentFooter()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/AttachmentsView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 518
    const/4 v6, 0x0

    .line 520
    .local v6, "result":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 524
    :goto_0
    return-object v6

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, 0x0

    .line 491
    const/4 v2, -0x1

    .line 492
    .local v2, "size":I
    const/4 v1, 0x0

    .line 494
    .local v1, "file":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string/jumbo v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    long-to-int v2, v3

    .line 500
    if-eqz v1, :cond_0

    .line 501
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :cond_0
    :goto_0
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error closing file opened to obtain size."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v3, Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error opening file to obtain size."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    if-eqz v1, :cond_0

    .line 501
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 503
    :catch_2
    move-exception v0

    .line 504
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error closing file opened to obtain size."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 499
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 500
    if-eqz v1, :cond_1

    .line 501
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 505
    :cond_1
    :goto_1
    throw v3

    .line 503
    :catch_3
    move-exception v0

    .line 504
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error closing file opened to obtain size."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private retrieveMimeTypeFromAttTable(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 430
    const/4 v7, 0x0

    .line 431
    .local v7, "contentType":Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "mimeType"

    aput-object v0, v2, v5

    const-string/jumbo v3, "contentUri=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 435
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 437
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string/jumbo v0, "mimeType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 443
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_1
    :goto_0
    return-object v7

    .line 440
    :catch_0
    move-exception v8

    .line 441
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateAttachmentFooter()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 259
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    iget-boolean v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mShowAllAttachments:Z

    if-eqz v1, :cond_0

    .line 262
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->showTopXAttachments(I)V

    .line 263
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTotalAtts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/AttachmentsView;->showTopXAttachments(I)V

    .line 268
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100279

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTotalAtts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)J
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/compose/AttachmentsView;->generateLocalAttachment(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J
    .locals 5
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Settings;->getMaxAttachmentSize()I

    move-result v0

    .line 476
    .local v0, "maxSize":I
    iget v1, p2, Lcom/kingsoft/mail/providers/Attachment;->size:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-le v1, v0, :cond_1

    .line 477
    :cond_0
    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string/jumbo v2, "Attachment too large to attach"

    const v3, 0x7f1003b1

    invoke-direct {v1, v2, v3}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getTotalAttachmentsSize()J

    move-result-wide v1

    iget v3, p2, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 481
    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string/jumbo v2, "Attachment too large to attach"

    const v3, 0x7f1003af

    invoke-direct {v1, v2, v3}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 484
    :cond_2
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 487
    iget v1, p2, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v1, v1

    return-wide v1
.end method

.method public addAttachment(Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 4
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v3, -0x1

    .line 139
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->setVisibility(I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->expandView()V

    .line 146
    new-instance v0, Lcom/kingsoft/mail/compose/AttachmentComposeView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingsoft/mail/compose/AttachmentComposeView;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)V

    .line 149
    .local v0, "attachmentView":Lcom/kingsoft/mail/compose/AttachmentComposeView;
    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/kingsoft/mail/compose/AttachmentsView$2;-><init>(Lcom/kingsoft/mail/compose/AttachmentsView;Lcom/kingsoft/mail/compose/AttachmentComposeView;Lcom/kingsoft/mail/providers/Attachment;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->addDeleteListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$3;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/mail/compose/AttachmentsView$3;-><init>(Lcom/kingsoft/mail/compose/AttachmentsView;Lcom/kingsoft/mail/providers/Attachment;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mChangeListener:Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mChangeListener:Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    invoke-interface {v1}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;->onAttachmentAdded()V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->updateAttachmentFooter()V

    .line 226
    return-void
.end method

.method public deleteAllAttachments()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->removeAllViews()V

    .line 308
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 309
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->setVisibility(I)V

    .line 310
    return-void
.end method

.method protected deleteAttachment(Landroid/view/View;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 1
    .param p1, "attachmentView"    # Landroid/view/View;
    .param p2, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mChangeListener:Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mChangeListener:Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;->onAttachmentDeleted()V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->updateAttachmentFooter()V

    .line 256
    return-void
.end method

.method public expandView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public focusLastAttachment()V
    .locals 5

    .prologue
    .line 528
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Attachment;

    .line 529
    .local v1, "lastAttachment":Lcom/kingsoft/mail/providers/Attachment;
    const/4 v2, 0x0

    .line 530
    .local v2, "lastView":Landroid/view/View;
    const/4 v0, 0x0

    .line 531
    .local v0, "last":I
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AttachmentTile;->isTiledAttachment(Lcom/kingsoft/mail/providers/Attachment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 533
    if-lez v0, :cond_0

    .line 534
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 542
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 543
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 545
    :cond_1
    return-void

    .line 537
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 538
    if-lez v0, :cond_0

    .line 539
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public generateLocalAttachment(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Attachment;
    .locals 11
    .param p1, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "contentType":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/compose/AttachmentsView;->retrieveMimeTypeFromAttTable(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    :cond_1
    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string/jumbo v2, "Failed to create local attachment"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_2
    if-nez v7, :cond_3

    const-string/jumbo v7, ""

    .line 360
    :cond_3
    new-instance v6, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v6}, Lcom/kingsoft/mail/providers/Attachment;-><init>()V

    .line 361
    .local v6, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iput-object v3, v6, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 362
    invoke-virtual {v6, v3}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 363
    iput v2, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 364
    iput-object p1, v6, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 365
    iput-object p1, v6, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 367
    const/4 v10, 0x0

    .line 369
    .local v10, "metadataCursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "_size"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 372
    if-eqz v10, :cond_5

    .line 374
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 376
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :cond_4
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 417
    :cond_5
    :goto_0
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 420
    :cond_6
    iget v1, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-nez v1, :cond_7

    .line 422
    invoke-static {p1, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 425
    :cond_7
    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 426
    return-object v6

    .line 379
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 382
    :catch_0
    move-exception v9

    .line 391
    .local v9, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string/jumbo v1, "_display_name"

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 393
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 394
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 397
    :cond_8
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_9
    :try_start_5
    const-string/jumbo v1, "_size"

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 404
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 405
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 411
    :goto_1
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 397
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 408
    :cond_b
    :try_start_6
    invoke-static {p1, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 411
    :catchall_2
    move-exception v1

    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v1

    .line 413
    .end local v9    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 414
    .local v8, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;

    const-string/jumbo v2, "Security Exception from attachment uri"

    invoke-direct {v1, v2, v8}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J
    .locals 3
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 241
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "contentUri":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getAttachmentPreviews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->getAttachmentPreviews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalAttachmentsSize()J
    .locals 6

    .prologue
    .line 316
    const-wide/16 v2, 0x0

    .line 317
    .local v2, "totalSize":J
    iget-object v4, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 318
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 319
    goto :goto_0

    .line 320
    .end local v0    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    :cond_0
    return-wide v2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    const v0, 0x7f0c0101

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    .line 95
    const v0, 0x7f0c0102

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 96
    const v0, 0x7f0c012c

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    .line 97
    const v0, 0x7f0c012d

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTotalAtts:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/kingsoft/mail/compose/AttachmentsView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/compose/AttachmentsView$1;-><init>(Lcom/kingsoft/mail/compose/AttachmentsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public setAttachmentChangesListener(Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mChangeListener:Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    .line 131
    return-void
.end method

.method public setAttachmentPreviews(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "previews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mTileGrid:Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->setAttachmentPreviews(Ljava/util/ArrayList;)V

    .line 300
    return-void
.end method

.method public showTopXAttachments(I)V
    .locals 5
    .param p1, "topXVisibleAttachments"    # I

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 230
    .local v0, "childViewCounts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 231
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    if-ge v1, p1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 238
    :cond_1
    return-void
.end method
