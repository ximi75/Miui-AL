.class public Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;
.super Landroid/app/DialogFragment;
.source "TurnAutoSyncOnDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    }
.end annotation


# static fields
.field private static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final DIALOG_TAG:Ljava/lang/String; = "auto sync"

.field private static final SYNC_AUTHORITY:Ljava/lang/String; = "syncAuthority"

.field private static sDefaultSyncAuthority:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->sDefaultSyncAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "syncAuthority"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v1, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;-><init>()V

    .line 62
    .local v1, "frag":Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string/jumbo v2, "syncAuthority"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method public static setDefaultSyncAuthority(Ljava/lang/String;)V
    .locals 0
    .param p0, "defaultSyncAuthority"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->sDefaultSyncAuthority:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "account"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 72
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "syncAuthority"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "syncAuthority":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 74
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v2

    .line 75
    .local v2, "isTablet":Z
    const v6, 0x7f1003b8

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    const v5, 0x7f1003a7

    :goto_0
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "bodyText":Ljava/lang/String;
    new-instance v5, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f1003ba

    invoke-virtual {v5, v6}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f1003b9

    new-instance v7, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;

    invoke-direct {v7, p0, v4, v0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;-><init>(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-virtual {v5, v6, v7}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f100107

    new-instance v7, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$1;

    invoke-direct {v7, p0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$1;-><init>(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)V

    invoke-virtual {v5, v6, v7}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 75
    .end local v1    # "bodyText":Ljava/lang/String;
    :cond_0
    const v5, 0x7f1002c6

    goto :goto_0
.end method

.method public setListener(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    .line 118
    return-void
.end method
