.class Lcom/kingsoft/mail/compose/AttachmentsView$3;
.super Ljava/lang/Object;
.source "AttachmentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

.field final synthetic val$attachment:Lcom/kingsoft/mail/providers/Attachment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/AttachmentsView;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 160
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$300(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/compose/ComposeActivity;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->setShowAttachment(Z)V

    .line 161
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v5, "intent":Landroid/content/Intent;
    const v6, 0x80001

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isHandleableCompressedFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v6, "isRarCompressedFile"

    iget-object v7, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isRarCompressedFile(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$300(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    return-void

    .line 177
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 180
    .local v3, "emailAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 181
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 182
    .local v4, "fm":Landroid/app/FragmentManager;
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v7, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v7}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v4, v9, v7}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto :goto_1

    .line 184
    .end local v4    # "fm":Landroid/app/FragmentManager;
    :cond_2
    iget v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    if-ne v6, v9, :cond_4

    .line 185
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$300(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_3

    .line 190
    const v1, 0x7f10034e

    .line 194
    .local v1, "dialogMessage":I
    :goto_2
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_1

    .line 192
    .end local v1    # "dialogMessage":I
    :cond_3
    const v1, 0x7f1001b0

    .restart local v1    # "dialogMessage":I
    goto :goto_2

    .line 197
    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v1    # "dialogMessage":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isHandleableCompressedFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v6, "attachmentId"

    iget-wide v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 209
    .end local v3    # "emailAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$300(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/compose/ComposeActivity;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->setShowAttachment(Z)V

    .line 211
    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Couldn\'t find Activity for intent"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    iget-object v6, p0, Lcom/kingsoft/mail/compose/AttachmentsView$3;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$300(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-virtual {v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showActivityNotFoundDialog(Landroid/app/FragmentManager;)V

    goto/16 :goto_1
.end method
