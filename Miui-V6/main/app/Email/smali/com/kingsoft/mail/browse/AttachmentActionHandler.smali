.class public Lcom/kingsoft/mail/browse/AttachmentActionHandler;
.super Ljava/lang/Object;
.source "AttachmentActionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "attachment-progress"


# instance fields
.field private mAttachment:Lcom/kingsoft/mail/providers/Attachment;

.field private final mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

.field private final mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

.field private mViewOnFinish:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    .line 70
    iput-object p2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    .line 71
    iput-object p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mHandler:Landroid/os/Handler;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mViewOnFinish:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/AttachmentActionHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/AttachmentActionHandler;Ljava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V

    return-void
.end method

.method private attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 449
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 452
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :goto_0
    const/4 v3, 0x1

    .line 463
    .end local v1    # "inStream":Ljava/io/InputStream;
    :goto_1
    return v3

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 460
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 461
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "attachmentExists RuntimeException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 453
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private cancelOrClearAttachment(Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 6
    .param p1, "iCmd"    # Ljava/lang/Integer;
    .param p2, "lAttachmentId"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x0

    .line 255
    if-nez p2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 259
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x102

    if-ne v2, v3, :cond_3

    .line 260
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 263
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v0, :cond_1

    .line 264
    const-string/jumbo v2, "attachment-progress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attachment id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is deleted!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    .end local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_0
    return-void

    .line 268
    .restart local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isAttachmentSaved(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f10018b

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isAttachmentDownloading(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    const-string/jumbo v2, "attachment-progress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAttachment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kingsoft/email/service/AttachmentDownloadService;->setCancelingFlag(J)V

    .line 277
    .end local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 278
    .local v1, "params":Landroid/content/ContentValues;
    const-string/jumbo v2, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string/jumbo v2, "contentUri"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v2, "downloadedSize"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENTURI_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private startDownloadingAttachment(Lcom/kingsoft/mail/providers/Attachment;IIIZ)V
    .locals 3
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p2, "destination"    # I
    .param p3, "rendition"    # I
    .param p4, "additionalPriority"    # I
    .param p5, "delayDownload"    # Z

    .prologue
    .line 121
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 122
    .local v0, "params":Landroid/content/ContentValues;
    const-string/jumbo v1, "state"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string/jumbo v1, "destination"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string/jumbo v1, "rendition"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string/jumbo v1, "additionalPriority"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string/jumbo v1, "delayDownload"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 129
    return-void
.end method

.method private startDownloadingAttachment(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V
    .locals 5
    .param p1, "lAttachmentId"    # Ljava/lang/Long;
    .param p2, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p3, "destination"    # I
    .param p4, "rendition"    # I
    .param p5, "additionalPriority"    # I
    .param p6, "delayDownload"    # Z

    .prologue
    .line 161
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 162
    .local v0, "params":Landroid/content/ContentValues;
    const-string/jumbo v1, "state"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v1, "destination"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string/jumbo v1, "rendition"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string/jumbo v1, "additionalPriority"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string/jumbo v1, "delayDownload"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENTURI_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENTURI_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private startDownloadingAttachmentAlertDialog(Ljava/lang/Long;ILcom/kingsoft/mail/providers/Attachment;IIIZZ)V
    .locals 15
    .param p1, "lAttachmentId"    # Ljava/lang/Long;
    .param p2, "attachmentSize"    # I
    .param p3, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p4, "destination"    # I
    .param p5, "rendition"    # I
    .param p6, "additionalPriority"    # I
    .param p7, "delayDownload"    # Z
    .param p8, "isShowDownloadingDialog"    # Z

    .prologue
    .line 187
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v12

    .line 189
    .local v12, "networkType":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/kingsoft/email/service/AttachmentDownloadService;

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 195
    :cond_1
    const/4 v1, 0x1

    if-eq v12, v1, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    .line 196
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100185

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100184

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f1002a0

    new-instance v1, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;-><init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;IZLjava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V

    invoke-virtual {v13, v14, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100108

    new-instance v3, Lcom/kingsoft/mail/browse/AttachmentActionHandler$1;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler$1;-><init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v11

    .line 232
    .local v11, "alertDialog":Lmiui/app/AlertDialog;
    invoke-virtual {v11}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0

    .line 234
    .end local v11    # "alertDialog":Lmiui/app/AlertDialog;
    :cond_2
    move/from16 v0, p2

    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isEligibleForDownloadExternal(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f100175

    invoke-static {v1, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 239
    invoke-direct/range {v1 .. v7}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V

    goto :goto_0
.end method

.method private viewAttachment()V
    .locals 8

    .prologue
    .line 421
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "mime":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 427
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, "intent":Landroid/content/Intent;
    const v4, 0x80001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 436
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "attachment-progress"

    const-string/jumbo v5, "Couldn\'t find Activity for intent"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 441
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->clearDownloadAttachment(Ljava/lang/Long;)V

    .line 442
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f1001b1

    invoke-static {v4, v5}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAttachment(Ljava/lang/Long;)V
    .locals 1
    .param p1, "lAttachmentId"    # Ljava/lang/Long;

    .prologue
    .line 245
    const/16 v0, 0x102

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->cancelOrClearAttachment(Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 247
    return-void
.end method

.method public clearDownloadAttachment(Ljava/lang/Long;)V
    .locals 1
    .param p1, "lAttachmentId"    # Ljava/lang/Long;

    .prologue
    .line 250
    const/16 v0, 0x105

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->cancelOrClearAttachment(Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 252
    return-void
.end method

.method public deleteAttachment(Ljava/lang/Long;)V
    .locals 7
    .param p1, "lAttachmentId"    # Ljava/lang/Long;

    .prologue
    .line 287
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 290
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteExternalAttachment(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteInternalAttachment(Landroid/content/Context;JJ)V

    .line 295
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 296
    .local v1, "params":Landroid/content/ContentValues;
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string/jumbo v2, "isDeleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENTURI_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 303
    return-void
.end method

.method public initialize(Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    .line 78
    return-void
.end method

.method public isProgressDialogVisible()Z
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "attachment-progress"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 470
    .local v0, "dialog":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 0
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 82
    return-void
.end method

.method public setViewOnFinish(Z)V
    .locals 0
    .param p1, "viewOnFinish"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mViewOnFinish:Z

    .line 86
    return-void
.end method

.method public shareAttachment()V
    .locals 7

    .prologue
    .line 474
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 492
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x80001

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->normalizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 483
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "attachment-progress"

    const-string/jumbo v4, "Couldn\'t find Activity for intent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public shareAttachments(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 499
    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "attachment-progress"

    const-string/jumbo v3, "Couldn\'t find Activity for intent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public showAttachment(I)V
    .locals 1
    .param p1, "destination"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    if-ne v0, p1, :cond_2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/AttachmentViewInterface;->viewAttachment()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    goto :goto_0
.end method

.method public showDownloadingDialog()V
    .locals 5

    .prologue
    .line 318
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 319
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v4, "attachment-progress"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 321
    .local v2, "prev":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 324
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 327
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v3}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->newInstance(Lcom/kingsoft/mail/providers/Attachment;)Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;

    move-result-object v1

    .line 329
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const-string/jumbo v3, "attachment-progress"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public startDownloadingAttachment(I)V
    .locals 2
    .param p1, "destination"    # I

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(IIIZ)V

    .line 110
    return-void
.end method

.method public startDownloadingAttachment(IIIZ)V
    .locals 6
    .param p1, "destination"    # I
    .param p2, "rendition"    # I
    .param p3, "additionalPriority"    # I
    .param p4, "delayDownload"    # Z

    .prologue
    .line 114
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Lcom/kingsoft/mail/providers/Attachment;IIIZ)V

    .line 116
    return-void
.end method

.method public startDownloadingAttachment(JIIIZ)V
    .locals 4
    .param p1, "attachmentId"    # J
    .param p3, "destination"    # I
    .param p4, "rendition"    # I
    .param p5, "additionalPriority"    # I
    .param p6, "delayDownload"    # Z

    .prologue
    .line 147
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .local v0, "params":Landroid/content/ContentValues;
    const-string/jumbo v2, "state"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string/jumbo v2, "destination"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string/jumbo v2, "rendition"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string/jumbo v2, "additionalPriority"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string/jumbo v2, "delayDownload"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENTURI_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    invoke-virtual {v2, v1, v0}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 156
    return-void
.end method

.method public startDownloadingAttachment(Ljava/lang/Long;IIIIZ)V
    .locals 9
    .param p1, "lAttachmentId"    # Ljava/lang/Long;
    .param p2, "attachmentSize"    # I
    .param p3, "destination"    # I
    .param p4, "rendition"    # I
    .param p5, "additionalPriority"    # I
    .param p6, "delayDownload"    # Z

    .prologue
    .line 140
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachmentAlertDialog(Ljava/lang/Long;ILcom/kingsoft/mail/providers/Attachment;IIIZZ)V

    .line 143
    return-void
.end method

.method public startDownloadingAttachment(Ljava/lang/Long;IIIZ)V
    .locals 7
    .param p1, "lAttachmentId"    # Ljava/lang/Long;
    .param p2, "destination"    # I
    .param p3, "rendition"    # I
    .param p4, "additionalPriority"    # I
    .param p5, "delayDownload"    # Z

    .prologue
    .line 133
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Ljava/lang/Long;IIIIZ)V

    .line 135
    return-void
.end method

.method public startRedownloadingAttachment(Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 3
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 306
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 307
    .local v0, "params":Landroid/content/ContentValues;
    const-string/jumbo v1, "state"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string/jumbo v1, "destination"

    iget v2, p1, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 311
    return-void
.end method

.method public updateStatus()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 378
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Attachment;->shouldShowProgress()Z

    move-result v4

    .line 380
    .local v4, "showProgress":Z
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v7, "attachment-progress"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;

    .line 383
    .local v1, "dialog":Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1, v6}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->isShowingDialogForAttachment(Lcom/kingsoft/mail/providers/Attachment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 384
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v6, v6, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {v1, v6}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->setProgress(I)V

    .line 389
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->isIndeterminate()Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    .line 391
    .local v3, "indeterminate":Z
    :goto_0
    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->setIndeterminate(Z)V

    .line 393
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Attachment;->isDownloadFinishedOrFailed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 394
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/kingsoft/mail/browse/AttachmentActionHandler$4;

    invoke-direct {v7, p0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler$4;-><init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v6, v6, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 404
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->viewAttachment()V

    .line 417
    .end local v3    # "indeterminate":Z
    :cond_1
    :goto_1
    return-void

    .line 389
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 405
    .restart local v3    # "indeterminate":Z
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v6, v6, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-ne v6, v5, :cond_1

    .line 406
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_4

    .line 409
    const v2, 0x7f10034e

    .line 413
    .local v2, "dialogMessage":I
    :goto_2
    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_1

    .line 411
    .end local v2    # "dialogMessage":I
    :cond_4
    const v2, 0x7f1001b0

    .restart local v2    # "dialogMessage":I
    goto :goto_2
.end method

.method public updateStatus(Z)V
    .locals 5
    .param p1, "loaderResult"    # Z

    .prologue
    .line 338
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    if-nez v3, :cond_0

    .line 375
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Attachment;->shouldShowProgress()Z

    move-result v2

    .line 344
    .local v2, "showProgress":Z
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v4, "attachment-progress"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;

    .line 346
    .local v0, "dialog":Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->isShowingDialogForAttachment(Lcom/kingsoft/mail/providers/Attachment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 347
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v3, v3, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->setProgress(I)V

    .line 352
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->isIndeterminate()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 354
    .local v1, "indeterminate":Z
    :goto_1
    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->setIndeterminate(Z)V

    .line 356
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Attachment;->isDownloadFinishedOrFailed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/kingsoft/mail/browse/AttachmentActionHandler$3;

    invoke-direct {v4, p0, v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler$3;-><init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v3, v3, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mViewOnFinish:Z

    if-eqz v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/AttachmentViewInterface;->viewAttachment()V

    .line 374
    .end local v1    # "indeterminate":Z
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/AttachmentViewInterface;->onUpdateStatus()V

    goto :goto_0

    .line 352
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 369
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mView:Lcom/kingsoft/mail/browse/AttachmentViewInterface;

    invoke-interface {v3, v2}, Lcom/kingsoft/mail/browse/AttachmentViewInterface;->updateProgress(Z)V

    goto :goto_2
.end method
