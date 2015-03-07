.class public Lcom/kingsoft/mail/browse/MessageAttachmentBar;
.super Landroid/widget/RelativeLayout;
.source "MessageAttachmentBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/kingsoft/mail/browse/AttachmentViewInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MessageAttachmentBar"


# instance fields
.field private mAccountUri:Landroid/net/Uri;

.field private final mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

.field private mAttachment:Lcom/kingsoft/mail/providers/Attachment;

.field private mAttachmentSizeText:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field private mFormatTypeIcon:Landroid/widget/ImageView;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    .line 92
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    const v1, 0x7f040067

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    .line 102
    .local v0, "view":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    return-object v0
.end method

.method private onClick(ILandroid/view/View;)Z
    .locals 11
    .param p1, "res"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "mAttachment is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 220
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000ed

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 221
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    .line 225
    .local v6, "id":J
    invoke-static {v6, v7}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isCancelingDownload(J)Z

    move-result v8

    .line 226
    .local v8, "isCanceling":Z
    if-eqz v8, :cond_1

    .line 227
    const-string/jumbo v0, "MessageAttachmentBar"

    const-string/jumbo v1, "it is canceling the downloading now, please waiting..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000e8

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 229
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {v6, v7}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isDecoding(J)Z

    move-result v9

    .line 233
    .local v9, "isDecoding":Z
    if-eqz v9, :cond_2

    .line 234
    sget-object v0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "it is decoding the attachment now, please wait..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000e9

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 236
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_2
    const v0, 0x7f0c0290

    if-ne p1, v0, :cond_4

    .line 240
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->previewAttachment()V

    .line 333
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :cond_4
    const v0, 0x7f0c0291

    if-ne p1, v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->canSave()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 245
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "save_attachment"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 249
    :cond_5
    const v0, 0x7f0c0292

    if-ne p1, v0, :cond_6

    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->showDownloadingDialog()V

    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startRedownloadingAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 254
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "redownload_attachment"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 258
    :cond_6
    const v0, 0x7f0c019d

    if-ne p1, v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 261
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "cancel_attachment"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 264
    :cond_7
    const v0, 0x7f0c019b

    if-ne p1, v0, :cond_9

    .line 269
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    if-nez v0, :cond_8

    .line 271
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    .line 272
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12000c

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 274
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 277
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 278
    .local v10, "menu":Landroid/view/Menu;
    const v0, 0x7f0c0290

    invoke-interface {v10, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowPreview()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    const v0, 0x7f0c0291

    invoke-interface {v10, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowSave()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    const v0, 0x7f0c0292

    invoke-interface {v10, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowDownloadAgain()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_1

    .line 285
    .end local v10    # "menu":Landroid/view/Menu;
    :cond_9
    const v0, 0x7f0c0198

    if-ne p1, v0, :cond_c

    .line 287
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 288
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 292
    :cond_a
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->canSave()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 295
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "save_attachment"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 300
    :cond_b
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->processItemClickEvent()Ljava/lang/String;

    goto/16 :goto_1

    .line 303
    :cond_c
    const v0, 0x7f0c019c

    if-ne p1, v0, :cond_d

    .line 304
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 306
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "cancel_attachment"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 309
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 312
    :cond_d
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "mime":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_e

    .line 318
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setViewOnFinish(Z)V

    .line 319
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 321
    const/4 v3, 0x0

    .line 327
    .local v3, "action":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_3

    .line 328
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "view_attachment"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 324
    .end local v3    # "action":Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->processItemClickEvent()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "action":Ljava/lang/String;
    goto :goto_2
.end method

.method private previewAttachment()V
    .locals 7

    .prologue
    .line 456
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->canPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 459
    .local v6, "previewIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 461
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "preview_attachment"

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 465
    .end local v6    # "previewIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private processItemClickEvent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 337
    const/4 v6, 0x0

    .line 339
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showBlockedDialog(Landroid/app/FragmentManager;)V

    .line 342
    const-string/jumbo v6, "attachment_bar_blocked"

    .line 377
    :goto_0
    return-object v6

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/MimeType;->isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->viewAttachment()V

    .line 356
    :goto_1
    const-string/jumbo v6, "attachment_bar"

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-ne v0, v3, :cond_2

    .line 349
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 350
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "cancel_attachment"

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto :goto_1

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->canPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->previewAttachment()V

    .line 361
    const/4 v6, 0x0

    goto :goto_0

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-nez v0, :cond_5

    .line 364
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto :goto_0

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-ne v0, v3, :cond_6

    .line 367
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 369
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "cancel_attachment"

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attachment_bar"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showActivityNotFoundDialog(Landroid/app/FragmentManager;)V

    .line 375
    const-string/jumbo v6, "attachment_bar_no_viewer"

    goto/16 :goto_0
.end method

.method private shouldShowCancel()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->isDownloading()Z

    move-result v0

    return v0
.end method

.method private shouldShowDownloadAgain()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->isDownloadFinishedOrFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowOverflow()Z
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowPreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowSave()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowDownloadAgain()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->shouldShowCancel()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowPreview()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->canPreview()Z

    move-result v0

    return v0
.end method

.method private shouldShowSave()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->canSave()Z

    move-result v0

    return v0
.end method

.method private updateSubtitleText()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v1, v1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-ne v1, v3, :cond_2

    .line 486
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10034e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Attachment;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100357

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachmentSizeText:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mDisplayType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 500
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 497
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachmentSizeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public initialize(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->initialize(Landroid/app/FragmentManager;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->onClick(ILandroid/view/View;)Z

    .line 209
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 197
    const v0, 0x7f0c0199

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mTitle:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0c019a

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0c0196

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFormatTypeIcon:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f0c0198

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    .line 202
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->onClick(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onUpdateStatus()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->updateSubtitleText()V

    .line 470
    return-void
.end method

.method public render(Lcom/kingsoft/mail/providers/Attachment;Landroid/net/Uri;Z)V
    .locals 10
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p2, "accountUri"    # Landroid/net/Uri;
    .param p3, "loaderResult"    # Z

    .prologue
    const/4 v9, 0x0

    .line 111
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAccountUri:Landroid/net/Uri;

    .line 113
    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 114
    .local v8, "prevAttachment":Lcom/kingsoft/mail/providers/Attachment;
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 115
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 117
    sget-object v1, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x1

    iget v6, p1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    iget v6, p1, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p1, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget-object v6, p1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    iget v6, p1, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    .line 123
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f10020c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    iget v2, v8, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-eq v1, v2, :cond_2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachmentSizeText:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/AttachmentUtils;->getDisplayType(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mDisplayType:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->updateSubtitleText()V

    .line 136
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentFormatIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 138
    .local v5, "formatDrawableId":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v1, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentContentUri(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Landroid/net/Uri;

    move-result-object v7

    .line 139
    .local v7, "contentUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 140
    .local v0, "contentUriStr":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 141
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAbsolutePathFromInternalUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_5
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFormatTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0049

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->loadBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIILandroid/content/Context;)V

    .line 156
    .end local v0    # "contentUriStr":Ljava/lang/String;
    .end local v5    # "formatDrawableId":I
    .end local v7    # "contentUri":Landroid/net/Uri;
    :cond_6
    if-eqz v8, :cond_7

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    iget v2, v8, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-eq v1, v2, :cond_8

    .line 159
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    iget v2, p1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setDownloadState(I)V

    .line 160
    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    packed-switch v1, :pswitch_data_0

    .line 185
    sget-object v1, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unknown attachment state"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 190
    :cond_8
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v1, p3}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->updateStatus(Z)V

    .line 191
    return-void

    .line 124
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :cond_a
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v2, 0x7f02018f

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 163
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v1, v9}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    goto :goto_1

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v2, 0x7f02018d

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 167
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    goto :goto_1

    .line 172
    :pswitch_3
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v1, v9}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    goto :goto_1

    .line 176
    :pswitch_4
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    const v2, 0x7f02018e

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setImageResource(I)V

    .line 177
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v1, v9}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    goto :goto_1

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateProgress(Z)V
    .locals 5
    .param p1, "showProgress"    # Z

    .prologue
    .line 474
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSaveStatusIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v1, v1, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v3, v3, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setProgress(I)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public viewAttachment()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 404
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    .line 405
    sget-object v5, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "viewAttachment with null content uri"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 453
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v5, v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentContentUri(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Landroid/net/Uri;

    move-result-object v4

    .line 411
    .local v4, "localFilePath":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->clearDownloadAttachment(Ljava/lang/Long;)V

    .line 413
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1001b1

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v5, v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->moveAttachmentToExternal(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "fp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 423
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, "intent":Landroid/content/Intent;
    const v5, 0x80001

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v3, v4, v0}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    sget-object v5, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "current mime type is "

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 434
    invoke-static {v0}, Lcom/kingsoft/mail/utils/MimeType;->isEmlMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 435
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/kingsoft/mail/browse/EmlViewerActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v5, "extra-account-uri"

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 445
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->updateAttachmentPreviewTime(Landroid/content/Context;J)V

    .line 446
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 447
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->updateAttachmentSnapshotPathOrNOP(Landroid/content/Context;J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showActivityNotFoundDialog(Landroid/app/FragmentManager;)V

    .line 451
    sget-object v5, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Couldn\'t find Activity for intent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v1, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 437
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isHandleableCompressedFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 438
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 439
    const-string/jumbo v5, "attachmentId"

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 440
    sget-object v5, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "switch to Attachment manager"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
