.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;
.super Ljava/lang/Object;
.source "AttachmentManagerUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->val$password:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 533
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->val$password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFile:Lnet/lingala/zip4j/core/ZipFile;
    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->access$000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Lnet/lingala/zip4j/core/ZipFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v2, v1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->writePassword(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFile:Lnet/lingala/zip4j/core/ZipFile;
    invoke-static {v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->access$000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Lnet/lingala/zip4j/core/ZipFile;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mTargetFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;
    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Lcom/kingsoft/email/mail/attachment/FileInfo;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unzipAndOpenFile(Landroid/content/Context;Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 560
    :cond_1
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    invoke-virtual {v0}, Lnet/lingala/zip4j/exception/ZipException;->getCode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 547
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1003d7

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 553
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    goto :goto_0

    .line 554
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 556
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 557
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
