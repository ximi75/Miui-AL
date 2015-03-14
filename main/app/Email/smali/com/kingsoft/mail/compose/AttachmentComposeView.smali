.class Lcom/kingsoft/mail/compose/AttachmentComposeView;
.super Landroid/widget/RelativeLayout;
.source "AttachmentComposeView.java"

# interfaces
.implements Lcom/kingsoft/mail/compose/AttachmentDeletionInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAttachment:Lcom/kingsoft/mail/providers/Attachment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 52
    sget-object v3, Lcom/kingsoft/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "attachStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Attachment;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    sget-object v3, Lcom/kingsoft/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "attachment view: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 62
    .end local v0    # "attachStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 64
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f040034

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->populateAttachmentData(Landroid/content/Context;)V

    .line 66
    return-void

    .line 56
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    .restart local v0    # "attachStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Attachment;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private populateAttachmentData(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0c00e9

    const v4, 0x7f0c00e6

    .line 101
    const v1, 0x7f0c00e8

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentFormatIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 104
    .local v5, "formatDrawableId":I
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "localFileContentUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0049

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->loadBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIILandroid/content/Context;)V

    .line 138
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v1, v1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-lez v1, :cond_3

    .line 139
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v2, v2, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_1
    return-void

    .line 115
    :cond_0
    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getFilePathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    sget-object v1, Lcom/kingsoft/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/AttachmentComposeView;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v7

    .line 128
    .local v7, "emailAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    .end local v7    # "emailAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addDeleteListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    const v1, 0x7f0c00ea

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 71
    .local v0, "deleteButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public getFilePathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 75
    const/4 v6, 0x0

    .line 77
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 78
    .local v2, "project":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    if-eqz v6, :cond_1

    .line 81
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 82
    .local v8, "idxFilePath":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 92
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    .end local v2    # "project":[Ljava/lang/String;
    .end local v8    # "idxFilePath":I
    :cond_0
    :goto_0
    return-object v0

    .line 92
    .restart local v2    # "project":[Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2    # "project":[Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v0, v9

    .line 97
    goto :goto_0

    .line 88
    :catch_0
    move-exception v7

    .line 89
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-eqz v6, :cond_2

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 92
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
