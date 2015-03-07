.class public Lcom/kingsoft/email/activity/InsertQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "InsertQuickResponseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;)Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getCallback()Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;

    move-result-object v0

    return-object v0
.end method

.method private getCallback()Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 158
    .local v0, "targetFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 159
    check-cast v0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;

    .line 161
    .end local v0    # "targetFragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "targetFragment":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Fragment;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/email/activity/InsertQuickResponseDialog;
    .locals 5
    .param p0, "callbackFragment"    # Landroid/app/Fragment;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 69
    new-instance v1, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;-><init>()V

    .line 72
    .local v1, "dialog":Lcom/kingsoft/email/activity/InsertQuickResponseDialog;
    if-eqz p0, :cond_1

    .line 73
    instance-of v2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement Callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 80
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v12

    .line 90
    .local v12, "targetFragment":Landroid/app/Fragment;
    if-eqz v12, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement Callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 99
    .local v9, "context":Landroid/content/Context;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04009e

    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v5, "quickResponse"

    aput-object v5, v4, v6

    new-array v5, v13, [I

    const v13, 0x7f0c0211

    aput v13, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 104
    .local v0, "adapter":Landroid/widget/SimpleCursorAdapter;
    new-instance v11, Landroid/widget/ListView;

    invoke-direct {v11, v9}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    new-instance v1, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;

    invoke-direct {v1, p0, v11}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;-><init>(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;Landroid/widget/ListView;)V

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/providers/Account;

    .line 120
    .local v7, "account":Lcom/kingsoft/mail/providers/Account;
    new-instance v8, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v8, v9}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v8, "b":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100108

    new-instance v4, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$2;-><init>(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;)V

    invoke-virtual {v1, v2, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v8}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v10

    .line 132
    .local v10, "dlg":Lmiui/app/AlertDialog;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;

    invoke-direct {v2, p0, v7, v0, v10}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;-><init>(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;Lcom/kingsoft/mail/providers/Account;Landroid/widget/SimpleCursorAdapter;Lmiui/app/AlertDialog;)V

    invoke-virtual {v1, v6, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 153
    return-object v10
.end method
