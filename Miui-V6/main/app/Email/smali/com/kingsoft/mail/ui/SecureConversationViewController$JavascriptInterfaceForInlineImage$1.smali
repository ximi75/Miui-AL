.class Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->onClick(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

.field final synthetic val$att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$src:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 526
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 527
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 528
    .local v0, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 529
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 530
    .local v2, "cv":Landroid/content/ContentValues;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 531
    .local v3, "html":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\\s+(?i)src=\"(?-i)\\Q"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$src:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\E\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "contentIdRe":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " src=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->val$att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "srcContentUri":Ljava/lang/String;
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    const-string/jumbo v5, "htmlContent"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 542
    .end local v0    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v1    # "contentIdRe":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "html":Ljava/lang/String;
    .end local v4    # "srcContentUri":Ljava/lang/String;
    :cond_0
    return-void
.end method
