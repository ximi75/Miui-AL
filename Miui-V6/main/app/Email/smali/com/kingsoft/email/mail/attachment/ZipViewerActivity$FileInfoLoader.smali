.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ZipViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/kingsoft/email/mail/attachment/FileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAttId:J

.field private mAttUri:Ljava/lang/String;

.field private mFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSortBy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttUri:Ljava/lang/String;

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttId:J

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mSortBy:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v1, -0x1

    .line 128
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttUri:Ljava/lang/String;

    .line 120
    iput-wide v1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttId:J

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mSortBy:I

    .line 129
    if-eqz p2, :cond_0

    .line 130
    const-string/jumbo v0, "attachmentId"

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttId:J

    .line 131
    const-string/jumbo v0, "attachmentUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttUri:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "fiSort"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mSortBy:I

    .line 134
    :cond_0
    return-void
.end method

.method private sortFileInfo(Ljava/util/List;I)V
    .locals 1
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "fileInfo":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 139
    :pswitch_0
    new-instance v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$1;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$2;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 158
    :pswitch_2
    new-instance v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$3;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 166
    :pswitch_3
    new-instance v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$4;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$4;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttId:J

    iget-object v9, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mAttUri:Ljava/lang/String;

    # invokes: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getZippedFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7, v8, v9}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$300(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "mZippedFileName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 183
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 188
    :goto_0
    # invokes: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getCompressedFileInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$400(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    .line 189
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 191
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/FileInfo;

    .line 192
    .local v1, "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "mimeType":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentFormatIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/kingsoft/email/mail/attachment/FileInfo;->setFormatIcon(I)V

    .line 195
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getSize()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/kingsoft/email/mail/attachment/FileInfo;->setDisplaySize(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v1    # "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mSortBy:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 199
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    iget v7, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mSortBy:I

    invoke-direct {p0, v6, v7}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->sortFileInfo(Ljava/util/List;I)V

    .line 204
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    return-object v6
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 216
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 222
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->deliverResult(Ljava/util/List;)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->mFilesInfo:Ljava/util/List;

    if-nez v0, :cond_2

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->forceLoad()V

    .line 231
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 236
    return-void
.end method
