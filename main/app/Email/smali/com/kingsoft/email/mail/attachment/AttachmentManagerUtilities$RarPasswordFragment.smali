.class public Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;
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
    name = "RarPasswordFragment"
.end annotation


# instance fields
.field private archive:Lde/innosystec/unrar/Archive;

.field private mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;

.field private mTargetFileName:Ljava/lang/String;

.field private mZippedFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lde/innosystec/unrar/Archive;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    .locals 0
    .param p1, "zippedFileName"    # Ljava/lang/String;
    .param p2, "targetFilePath"    # Ljava/lang/String;
    .param p3, "archive"    # Lde/innosystec/unrar/Archive;
    .param p4, "fi"    # Lcom/kingsoft/email/mail/attachment/FileInfo;

    .prologue
    .line 587
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 588
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mZippedFileName:Ljava/lang/String;

    .line 589
    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->archive:Lde/innosystec/unrar/Archive;

    .line 590
    iput-object p4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;

    .line 591
    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mTargetFileName:Ljava/lang/String;

    .line 592
    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Lde/innosystec/unrar/Archive;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->archive:Lde/innosystec/unrar/Archive;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;Lde/innosystec/unrar/Archive;)Lde/innosystec/unrar/Archive;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;
    .param p1, "x1"    # Lde/innosystec/unrar/Archive;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->archive:Lde/innosystec/unrar/Archive;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mZippedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)Lcom/kingsoft/email/mail/attachment/FileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mFileInfo:Lcom/kingsoft/email/mail/attachment/FileInfo;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->setRetainInstance(Z)V

    .line 584
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 604
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 605
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 607
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040098

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 609
    .local v2, "ll":Landroid/widget/LinearLayout;
    const v4, 0x7f0c0200

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 611
    .local v3, "password":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->mZippedFileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f100204

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f10029f

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;

    invoke-direct {v6, p0, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$2;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f100107

    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$1;

    invoke-direct {v6, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment$1;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 646
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 599
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 600
    return-void
.end method
