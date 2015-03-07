.class public Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "AttachmentProgressDialogFragment.java"


# static fields
.field public static final ATTACHMENT_KEY:Ljava/lang/String; = "attachment"

.field private static final TAG:Ljava/lang/String; = "AttachmentProgress"


# instance fields
.field private mAttachment:Lcom/kingsoft/mail/providers/Attachment;

.field private mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

.field private mDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Lcom/kingsoft/mail/providers/Attachment;)Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;
    .locals 3
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 47
    new-instance v1, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;-><init>()V

    .line 50
    .local v1, "f":Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "attachment"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public cancelAttachment()V
    .locals 7

    .prologue
    .line 102
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v1

    .line 107
    .local v1, "lAttachmentId":J
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 110
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v0, :cond_2

    .line 111
    const-string/jumbo v4, "AttachmentProgress"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is deleted!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isAttachmentSaved(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f10018b

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {v1, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->setCancelingFlag(J)V

    .line 122
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 123
    .local v3, "params":Landroid/content/ContentValues;
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string/jumbo v4, "contentUri"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingDialogForAttachment(Lcom/kingsoft/mail/providers/Attachment;)Z
    .locals 2
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentCommandHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mCommandHandler:Lcom/kingsoft/mail/browse/AttachmentCommandHandler;

    .line 71
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    .line 97
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->cancelAttachment()V

    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Attachment;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 65
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 75
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    .line 76
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(I)V

    .line 77
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 79
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v1, v1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 90
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->mDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 133
    :cond_0
    return-void
.end method
