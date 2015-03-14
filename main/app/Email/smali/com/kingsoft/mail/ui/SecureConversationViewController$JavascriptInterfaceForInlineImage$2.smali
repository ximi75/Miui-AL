.class Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->downloadDeletedInline(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

.field final synthetic val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 563
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 564
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "uiState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string/jumbo v1, "flags"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string/jumbo v1, "uiDestination"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "contentId=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mAttachmentLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$500(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " data-cid=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    .line 576
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 579
    const-string/jumbo v1, "htmlContent"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "messageKey=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationMessage;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->val$deletedInline:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->downloadInlineWithContentId(Ljava/lang/String;)V

    .line 587
    const-string/jumbo v1, "JSForInlineImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start downloadInlineImage, mMessage.id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 588
    return-void

    .line 576
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
