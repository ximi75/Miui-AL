.class public Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;
.super Landroid/app/DialogFragment;
.source "AttachmentManagerUtilities.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordFragment"
.end annotation


# instance fields
.field private mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;

.field private mTargetFileName:Ljava/lang/String;

.field private mZippedFile:Lnet/lingala/zip4j/core/ZipFile;

.field private mZippedFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/core/ZipFile;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    .locals 0
    .param p1, "zippedFileName"    # Ljava/lang/String;
    .param p2, "targetFilePath"    # Ljava/lang/String;
    .param p3, "zippedFile"    # Lnet/lingala/zip4j/core/ZipFile;
    .param p4, "fi"    # Lcom/kingsoft/email/mail/attachment/FileInfo;

    .prologue
    .line 502
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFileName:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFile:Lnet/lingala/zip4j/core/ZipFile;

    .line 505
    iput-object p4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;

    .line 506
    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mTargetFileName:Ljava/lang/String;

    .line 507
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Lnet/lingala/zip4j/core/ZipFile;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFile:Lnet/lingala/zip4j/core/ZipFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)Lcom/kingsoft/email/mail/attachment/FileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 498
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->setRetainInstance(Z)V

    .line 499
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 519
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 522
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040098

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 524
    .local v2, "ll":Landroid/widget/LinearLayout;
    const v4, 0x7f0c0200

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 526
    .local v3, "password":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->mZippedFileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f100204

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f10029f

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;

    invoke-direct {v6, p0, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$2;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f100107

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$1;

    invoke-direct {v6, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment$1;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 568
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 514
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 515
    return-void
.end method
