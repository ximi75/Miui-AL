.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;
.super Ljava/lang/Object;
.source "AttachmentManagerUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->val$password:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 618
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->val$password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 621
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    new-instance v3, Lde/innosystec/unrar/Archive;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mZippedFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    # setter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->archive:Lde/innosystec/unrar/Archive;
    invoke-static {v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->access$402(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;Lde/innosystec/unrar/Archive;)Lde/innosystec/unrar/Archive;

    .line 624
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v2, v1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->writePassword(Ljava/lang/String;)V

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->archive:Lde/innosystec/unrar/Archive;
    invoke-static {v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->access$400(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Lde/innosystec/unrar/Archive;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mZippedFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mTargetFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->access$600(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;
    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Lcom/kingsoft/email/mail/attachment/FileInfo;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unRarAndOpenFile(Landroid/content/Context;Lde/innosystec/unrar/Archive;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_1
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1003d7

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
