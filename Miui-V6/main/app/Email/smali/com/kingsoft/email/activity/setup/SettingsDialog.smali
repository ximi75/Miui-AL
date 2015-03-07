.class public Lcom/kingsoft/email/activity/setup/SettingsDialog;
.super Landroid/app/Dialog;
.source "SettingsDialog.java"


# static fields
.field private static final DEFAULT_MARG_DISMENS:I = 0x32


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogButtonPanel:Landroid/widget/LinearLayout;

.field private mEditText:Landroid/widget/EditText;

.field private mMessage:Landroid/widget/TextView;

.field private mNegative:Landroid/widget/Button;

.field private mPositive:Landroid/widget/Button;

.field private mTitleTextView:Landroid/widget/TextView;

.field private margDismens:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const v0, 0x7f11007c

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;-><init>(Landroid/content/Context;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->margDismens:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->margDismens:I

    .line 43
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mNegative:Landroid/widget/Button;

    return-object v0
.end method

.method public getPostiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mPositive:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->setContentView(I)V

    .line 60
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0c0228

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0c0139

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mPositive:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0c0137

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mNegative:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0c0227

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 66
    const v0, 0x7f0c0136

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mDialogButtonPanel:Landroid/widget/LinearLayout;

    .line 78
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ac"    # Landroid/app/Activity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mActivity:Landroid/app/Activity;

    .line 125
    return-void
.end method

.method public setEdit(Ljava/lang/String;)V
    .locals 2
    .param p1, "edit"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 103
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setEditVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 168
    return-void
.end method

.method public setNegativeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public setNoButton()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mDialogButtonPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 163
    return-void
.end method

.method public setPositveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public setTitile(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 131
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 133
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 135
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/kingsoft/email/activity/setup/SettingsDialog;->margDismens:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 136
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method
