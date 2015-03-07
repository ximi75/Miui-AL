.class public Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "EditQuickResponseDialog.java"


# static fields
.field private static final QUICK_RESPONSE_CONTENT_URI:Ljava/lang/String; = "quick_response_content_uri"

.field private static final QUICK_RESPONSE_CREATE:Ljava/lang/String; = "quick_response_create"

.field private static final QUICK_RESPONSE_STRING:Ljava/lang/String; = "quick_response_edited_string"


# instance fields
.field private mDialog:Lmiui/app/AlertDialog;

.field private mQuickResponseEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "create"    # Z

    .prologue
    .line 60
    new-instance v1, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;-><init>()V

    .line 61
    .local v1, "dialog":Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "quick_response_edited_string"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "quick_response_content_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string/jumbo v2, "quick_response_create"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "quick_response_content_uri"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 73
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "quick_response_create"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 75
    .local v1, "create":Z
    const/4 v3, 0x0

    .line 76
    .local v3, "quickResponseSavedString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v7, "quick_response_edited_string"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_0
    if-nez v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "quick_response_edited_string"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04009d

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 86
    .local v6, "wrapper":Landroid/view/View;
    const v7, 0x7f0c0211

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    .line 88
    if-eqz v3, :cond_2

    .line 89
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 93
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$1;

    invoke-direct {v8, p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    new-instance v4, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;

    invoke-direct {v4, p0, v1, v5}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;-><init>(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;ZLandroid/net/Uri;)V

    .line 121
    .local v4, "saveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$3;

    invoke-direct {v2, p0, v5}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$3;-><init>(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;Landroid/net/Uri;)V

    .line 129
    .local v2, "deleteClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "b":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100197

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f100353

    invoke-virtual {v7, v8, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 135
    if-nez v1, :cond_3

    .line 136
    const v7, 0x7f10016a

    invoke-virtual {v0, v7, v2}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 141
    :goto_0
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 142
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mDialog:Lmiui/app/AlertDialog;

    return-object v7

    .line 138
    :cond_3
    const v7, 0x7f100108

    invoke-virtual {v0, v7, v9}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mDialog:Lmiui/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string/jumbo v0, "quick_response_edited_string"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method
