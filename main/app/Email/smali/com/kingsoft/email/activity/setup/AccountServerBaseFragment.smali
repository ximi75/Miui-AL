.class public abstract Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;
.super Landroid/app/Fragment;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;,
        Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_ACTIVITY_TITLE:Ljava/lang/String; = "AccountServerBaseFragment.title"

.field private static final BUNDLE_KEY_SETTINGS:Ljava/lang/String; = "AccountServerBaseFragment.settings"


# instance fields
.field mBaseScheme:Ljava/lang/String;

.field protected mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

.field protected mContext:Landroid/app/Activity;

.field protected final mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

.field mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

.field mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mProceedButton:Landroid/widget/Button;

.field private mProceedButtonPressed:Z

.field protected mSettingsMode:Z

.field protected mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 71
    const-string/jumbo v0, "protocol"

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 270
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 118
    return-void
.end method

.method public static getArgs(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3
    .param p0, "settingsMode"    # Ljava/lang/Boolean;

    .prologue
    .line 113
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 114
    .local v0, "setupModeArgs":Landroid/os/Bundle;
    const-string/jumbo v1, "AccountServerBaseFragment.settings"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    return-object v0
.end method


# virtual methods
.method protected clearButtonBounce()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 296
    return-void
.end method

.method public enableNextButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    .line 226
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    invoke-interface {v0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;->onEnableProceedButtons(Z)V

    .line 227
    return-void
.end method

.method public haveSettingsChanged()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 341
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v7}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 342
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 343
    .local v1, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v7, v1}, Lcom/android/emailcommon/provider/HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 344
    .local v2, "recvChanged":Z
    :goto_0
    const/4 v4, 0x0

    .line 345
    .local v4, "sendChanged":Z
    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const v8, 0x7f100302

    invoke-virtual {p0, v8}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 346
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 347
    .local v3, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/provider/HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v5

    .line 352
    .end local v3    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v6, v5

    :cond_2
    return v6

    .end local v2    # "recvChanged":Z
    .end local v4    # "sendChanged":Z
    :cond_3
    move v2, v6

    .line 343
    goto :goto_0

    .restart local v2    # "recvChanged":Z
    .restart local v3    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4    # "sendChanged":Z
    :cond_4
    move v4, v6

    .line 347
    goto :goto_1
.end method

.method protected makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 238
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 252
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    .line 154
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "AccountServerBaseFragment.title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;

    .line 158
    .local v0, "container":Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;
    invoke-interface {v0}, Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;->getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 160
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 3
    .param p1, "settingsResult"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 306
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 307
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 193
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 201
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 129
    if-eqz p1, :cond_1

    .line 130
    const-string/jumbo v0, "AccountServerBaseFragment.settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 134
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->setHasOptionsMenu(Z)V

    .line 135
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    goto :goto_0
.end method

.method protected onCreateViewSettingsMode(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_0

    .line 142
    const v0, 0x7f0c005e

    invoke-static {p1, v0}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0c005f

    invoke-static {p1, v0}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 174
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 175
    return-void
.end method

.method public abstract onNext()V
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 182
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 184
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    const-string/jumbo v1, "AccountServerBaseFragment.title"

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "AccountServerBaseFragment.settings"

    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public abstract saveSettingsAfterEdit()V
.end method

.method public abstract saveSettingsAfterSetup()V
.end method

.method public setCallback(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    .prologue
    .line 210
    if-nez p1, :cond_0

    sget-object p1, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    .end local p1    # "callback":Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 211
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    .line 212
    return-void
.end method
