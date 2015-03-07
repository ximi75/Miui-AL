.class Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavascriptInterfaceForInlineImage"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JSForInlineImage"


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;Lcom/kingsoft/mail/ui/SecureConversationViewController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/SecureConversationViewController$1;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    return-void
.end method

.method private downloadDeletedInline(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 3
    .param p1, "deletedInline"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 553
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 554
    const-string/jumbo v0, "JSForInlineImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 590
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100202

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 560
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$2;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 8
    .param p1, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v7, 0x0

    .line 455
    if-nez p1, :cond_0

    .line 456
    const-string/jumbo v4, "JSForInlineImage"

    const-string/jumbo v5, "The attachment is invalid!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 473
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->showAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v3

    .line 465
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f10028a

    .line 467
    .local v1, "dialogMessage":I
    const v2, 0x7f10028b

    .line 468
    .local v2, "dialogTitle":I
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_0

    .line 471
    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v1    # "dialogMessage":I
    .end local v2    # "dialogTitle":I
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string/jumbo v4, "JSForInlineImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is missing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public downloadInlineWithContentId(Ljava/lang/String;)V
    .locals 4
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/MessageWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingsoft/email/service/AttachmentDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "messageKey"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationMessage;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string/jumbo v1, "contentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/MessageWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 451
    return-void
.end method

.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const-string/jumbo v2, "JSForInlineImage"

    const-string/jumbo v3, "An invalid inline image!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    :goto_0
    return-void

    .line 489
    :cond_0
    if-nez p2, :cond_2

    .line 490
    const-string/jumbo v2, "cid:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v2, v3, v4, v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentByContentIdAndMessageId(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 506
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_1
    if-nez v0, :cond_3

    .line 507
    const-string/jumbo v2, "JSForInlineImage"

    const-string/jumbo v3, "The inline image is missing!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 497
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentByContentUri(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .restart local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    goto :goto_1

    .line 501
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v2, p2, v3, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentByContentIdAndMessageId(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .restart local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    goto :goto_1

    .line 512
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 513
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->downloadDeletedInline(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_0

    .line 518
    :cond_4
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 519
    const-string/jumbo v2, "JSForInlineImage"

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 520
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->moveAttachmentToExternal(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "contentUri":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 523
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage$1;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 547
    .end local v1    # "contentUri":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto/16 :goto_0
.end method
