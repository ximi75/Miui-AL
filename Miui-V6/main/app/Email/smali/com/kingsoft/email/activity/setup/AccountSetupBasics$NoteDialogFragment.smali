.class public Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteDialogFragment"
.end annotation


# static fields
.field private static final BUNDLE_KEY_NOTE:Ljava/lang/String; = "NoteDialogFragment.Note"

.field static final TAG:Ljava/lang/String; = "NoteDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1326
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1327
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    .locals 3
    .param p0, "note"    # Ljava/lang/String;

    .prologue
    .line 1333
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;-><init>()V

    .line 1334
    .local v1, "f":Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1335
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "NoteDialogFragment.Note"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1337
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1343
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "NoteDialogFragment.Note"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, "note":Ljava/lang/String;
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1002a0

    new-instance v4, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100108

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
