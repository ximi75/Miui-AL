.class Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachmentsCursor"
.end annotation


# instance fields
.field private final mContentUriIndex:I

.field private final mContext:Landroid/content/Context;

.field private final mUriIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 5729
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 5730
    const-string/jumbo v0, "contentUri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->mContentUriIndex:I

    .line 5732
    const-string/jumbo v0, "uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->mUriIndex:I

    .line 5733
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->mContext:Landroid/content/Context;

    .line 5734
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "column"    # I

    .prologue
    .line 5738
    iget v5, p0, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->mContentUriIndex:I

    if-ne p1, v5, :cond_3

    .line 5739
    iget v5, p0, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->mUriIndex:I

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 5740
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 5741
    .local v2, "id":J
    iget-object v5, p0, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 5743
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v0, :cond_0

    .line 5744
    const-string/jumbo v1, ""

    .line 5767
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "id":J
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 5745
    .restart local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2    # "id":J
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5746
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5755
    :cond_1
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string/jumbo v6, "application/vnd.android.package-archive"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5759
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v1

    .local v1, "contentUri":Ljava/lang/String;
    goto :goto_0

    .line 5761
    .end local v1    # "contentUri":Ljava/lang/String;
    :cond_2
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v5, v6, v2, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentUri":Ljava/lang/String;
    goto :goto_0

    .line 5767
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1    # "contentUri":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
