.class public Lcom/kingsoft/mail/browse/MessageAttachmentTile;
.super Lcom/kingsoft/mail/ui/AttachmentTile;
.source "MessageAttachmentTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/mail/browse/AttachmentViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/MessageAttachmentTile$ViewIndexDistanceComparator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

.field private mAttachmentsListUri:Landroid/net/Uri;

.field private mPhotoIndex:I

.field private mTextContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    .line 82
    return-void
.end method

.method private attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 211
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :goto_0
    const/4 v3, 0x1

    .line 222
    .end local v1    # "inStream":Ljava/io/InputStream;
    :goto_1
    return v3

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 219
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 220
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

    .line 212
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kingsoft/mail/browse/MessageAttachmentTile;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    const v1, 0x7f040068

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;

    .line 108
    .local v0, "view":Lcom/kingsoft/mail/browse/MessageAttachmentTile;
    return-object v0
.end method

.method private onClick()Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->showAndDownloadAttachments()V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method private showAndDownloadAttachments()V
    .locals 8

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/ui/AttachmentTileGrid;

    .line 133
    .local v5, "tileGrid":Lcom/kingsoft/mail/ui/AttachmentTileGrid;
    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v0

    .line 135
    .local v0, "childCount":I
    new-instance v3, Ljava/util/PriorityQueue;

    new-instance v6, Lcom/kingsoft/mail/browse/MessageAttachmentTile$ViewIndexDistanceComparator;

    iget v7, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mPhotoIndex:I

    invoke-direct {v6, v7}, Lcom/kingsoft/mail/browse/MessageAttachmentTile$ViewIndexDistanceComparator;-><init>(I)V

    invoke-direct {v3, v0, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 137
    .local v3, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/kingsoft/mail/browse/MessageAttachmentTile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    invoke-virtual {v5, v1}, Lcom/kingsoft/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/browse/MessageAttachmentTile;

    .line 139
    .local v4, "tile":Lcom/kingsoft/mail/browse/MessageAttachmentTile;
    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "tile":Lcom/kingsoft/mail/browse/MessageAttachmentTile;
    :cond_0
    move v2, v0

    .line 144
    .local v2, "maxAdditionalPriority":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 146
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/browse/MessageAttachmentTile;

    .line 147
    .restart local v4    # "tile":Lcom/kingsoft/mail/browse/MessageAttachmentTile;
    sub-int v7, v2, v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v4, v7, v6}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->downloadAttachment(IZ)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 150
    .end local v4    # "tile":Lcom/kingsoft/mail/browse/MessageAttachmentTile;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->viewAttachment()V

    .line 151
    return-void
.end method


# virtual methods
.method public downloadAttachment(IZ)V
    .locals 2
    .param p1, "additionalPriority"    # I
    .param p2, "delayDownload"    # Z

    .prologue
    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(IIIZ)V

    .line 161
    :cond_0
    return-void
.end method

.method public getAttachmentId()J
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
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

.method public initialize(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->initialize(Landroid/app/FragmentManager;)V

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->onClick()Z

    .line 124
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->onFinishInflate()V

    .line 116
    const v0, 0x7f0c019f

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mTextContainer:Landroid/view/View;

    .line 118
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public onUpdateStatus()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public render(Lcom/kingsoft/mail/providers/Attachment;Landroid/net/Uri;ILcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V
    .locals 2
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p2, "attachmentsListUri"    # Landroid/net/Uri;
    .param p3, "index"    # I
    .param p4, "attachmentPreviewCache"    # Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;
    .param p5, "loaderResult"    # Z

    .prologue
    .line 96
    invoke-super/range {p0 .. p5}, Lcom/kingsoft/mail/ui/AttachmentTile;->render(Lcom/kingsoft/mail/providers/Attachment;Landroid/net/Uri;ILcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V

    .line 98
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachmentsListUri:Landroid/net/Uri;

    .line 99
    iput p3, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mPhotoIndex:I

    .line 101
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, p5}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->updateStatus(Z)V

    .line 103
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AttachmentTile;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 251
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mTextContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    return-void
.end method

.method public setThumbnailToDefault()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->setThumbnailToDefault()V

    .line 245
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mTextContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    return-void
.end method

.method public thumbnailLoadFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->thumbnailLoadFailed()V

    .line 258
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/AttachmentUtils;->canDownloadAttachment(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(IIIZ)V

    .line 264
    :cond_0
    return-void
.end method

.method public updateProgress(Z)V
    .locals 0
    .param p1, "showDeterminateProgress"    # Z

    .prologue
    .line 236
    return-void
.end method

.method public viewAttachment()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 166
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getAttachmentId()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->updateAttachmentPreviewTime(Landroid/content/Context;J)V

    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "mime":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "view_attachment"

    const-string/jumbo v3, "attachment_tile"

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v4, v4, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 176
    invoke-static {v2}, Lcom/kingsoft/ex/photo/util/ImageUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachmentsListUri:Landroid/net/Uri;

    iget v3, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mPhotoIndex:I

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/photo/MailPhotoViewActivity;->startMailPhotoViewActivity(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 202
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v7, "intent":Landroid/content/Intent;
    const v0, 0x80001

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v7, v0, v2}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v6

    .line 194
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Couldn\'t find Activity for intent"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 197
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getAttachmentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->clearDownloadAttachment(Ljava/lang/Long;)V

    .line 199
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001b1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
