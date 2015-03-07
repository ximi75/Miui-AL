.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;
.super Ljava/lang/Object;
.source "ZipViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

.field final synthetic val$fi:Lcom/kingsoft/email/mail/attachment/FileInfo;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->val$fi:Lcom/kingsoft/email/mail/attachment/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v5, v5, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v6, v6, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttId:J
    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$600(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v8, v8, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v4, v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    # invokes: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getZippedFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$300(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "zippedFile":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 341
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 350
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 351
    .local v2, "isRarCompressedFile":Z
    const/4 v0, 0x0

    .line 353
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_1
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v4, v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isRarCompressedFile"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v4, v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isRarCompressedFile"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 365
    :goto_1
    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isRarCompressedFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v4, v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->val$fi:Lcom/kingsoft/email/mail/attachment/FileInfo;

    invoke-static {v4, v3, v5, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unRarAndOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :goto_2
    return-void

    .line 344
    .end local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "isRarCompressedFile":Z
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 359
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2    # "isRarCompressedFile":Z
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v4, v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v5, v5, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttId:J
    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$600(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    goto :goto_1

    .line 373
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->this$1:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    iget-object v4, v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;->val$fi:Lcom/kingsoft/email/mail/attachment/FileInfo;

    invoke-static {v4, v3, v5, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unzipAndOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 377
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
