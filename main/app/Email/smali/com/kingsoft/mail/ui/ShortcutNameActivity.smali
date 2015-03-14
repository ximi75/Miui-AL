.class public Lcom/kingsoft/mail/ui/ShortcutNameActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "ShortcutNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field static final EXTRA_FOLDER_CLICK_INTENT:Ljava/lang/String; = "extra_folder_click_intent"

.field static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "extra_shortcut_name"


# instance fields
.field private mFolderName:Ljava/lang/String;

.field private mFolderText:Landroid/widget/EditText;

.field private mShortcutClickIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->finish()V

    .line 129
    return-void
.end method

.method private doCreateShortcut()V
    .locals 5

    .prologue
    .line 109
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 111
    .local v2, "userShortcutName":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v3, "extra_folder_click_intent"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "shortcutName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->finish()V

    .line 124
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 91
    .local v0, "id":I
    const v1, 0x7f0c005f

    if-ne v1, v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->doCreateShortcut()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const v1, 0x7f0c005e

    if-ne v1, v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->doCancel()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f0400a9

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_folder_click_intent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_shortcut_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderName:Ljava/lang/String;

    .line 60
    const v2, 0x7f0c022c

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    .line 61
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 65
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 66
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->mFolderText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 67
    .local v1, "editableText":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 69
    const v2, 0x7f0c005f

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f0c005e

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 73
    const v2, 0x7f030002

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ShortcutNameActivity;->doCreateShortcut()V

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 80
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 85
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 86
    return-void
.end method
