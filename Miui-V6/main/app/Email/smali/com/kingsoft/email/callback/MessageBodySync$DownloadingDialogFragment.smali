.class public Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessageBodySync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/callback/MessageBodySync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadingDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadingDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 670
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 674
    invoke-virtual {p0}, Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 676
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 677
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {v1, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 678
    const v2, 0x7f10021b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual {v1, v3}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 681
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 686
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 687
    return-void
.end method
