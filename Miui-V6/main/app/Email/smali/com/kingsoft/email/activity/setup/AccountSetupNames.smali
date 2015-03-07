.class public Lcom/kingsoft/email/activity/setup/AccountSetupNames;
.super Lcom/kingsoft/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;,
        Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# static fields
.field private static final PROFILE_URI:Landroid/net/Uri;

.field private static final REQUEST_SECURITY:I


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mIsCompleting:Z

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;

.field private mRequiresName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mRequiresName:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mIsCompleting:Z

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->onNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 4
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 74
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/kingsoft/email/EmailApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;

    invoke-direct {v1, p1, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/kingsoft/email/activity/setup/SetupData;Landroid/app/Activity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method private finishActivity()V
    .locals 5

    .prologue
    .line 237
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 238
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedWithResult(Landroid/app/Activity;)V

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->finish()V

    .line 254
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v1, "ii":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void

    .line 239
    .end local v1    # "ii":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 243
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V

    .line 245
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V

    .line 247
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->getUIAccount(J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastViewedAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mIsCompleting:Z

    .line 295
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 296
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "description":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 306
    new-instance v2, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask;

    invoke-direct {v2, p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/Account;)V

    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 308
    return-void
.end method

.method public static onNext2(Lcom/kingsoft/email/activity/setup/SetupData;Landroid/content/Context;)V
    .locals 8
    .param p0, "mSetupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 382
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    const-string/jumbo v1, ""

    .line 383
    .local v1, "displayName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 385
    .local v2, "senderName":Ljava/lang/String;
    :try_start_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 386
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 394
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 396
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;

    invoke-direct {v3, v0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;-><init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    sget-object v4, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 398
    return-void

    .line 389
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private prefillNameFromProfile()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;

    invoke-direct {v1, p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupNames;Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->executeParallel([Ljava/lang/Object;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    .line 205
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x1

    .line 214
    .local v0, "enableNextButton":Z
    iget-boolean v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mRequiresName:Z

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "userName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const/4 v0, 0x0

    .line 218
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f10008c

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 223
    .end local v1    # "userName":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    return-void

    .line 220
    .restart local v1    # "userName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getUIAccount(J)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p1, "accountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v7, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    if-eqz v6, :cond_0

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_0
    return-object v7

    .line 276
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    goto :goto_0

    .line 279
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 375
    return-void

    .line 372
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mIsCompleting:Z

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->finishActivity()V

    .line 234
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 84
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0}, Lcom/kingsoft/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 101
    const v6, 0x7f040021

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 102
    const v6, 0x7f0c0072

    invoke-static {p0, v6}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 103
    const v6, 0x7f0c0074

    invoke-static {p0, v6}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 104
    const v6, 0x7f0c0073

    invoke-static {p0, v6}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "accountNameLabel":Landroid/view/View;
    const v6, 0x7f0c0068

    invoke-static {p0, v6}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 107
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    new-instance v7, Lcom/kingsoft/email/activity/setup/AccountSetupNames$2;

    invoke-direct {v7, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v5, Lcom/kingsoft/email/activity/setup/AccountSetupNames$3;

    invoke-direct {v5, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V

    .line 130
    .local v5, "validationTextWatcher":Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    sget-object v7, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v9, v7}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 134
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 135
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 136
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "unexpected null account"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_0
    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v6, :cond_1

    .line 139
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "unexpected null hostauth"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    .line 144
    .local v3, "flowMode":I
    if-eq v3, v8, :cond_2

    if-eq v3, v10, :cond_2

    .line 146
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 147
    .local v1, "accountEmail":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 157
    .end local v1    # "accountEmail":Ljava/lang/String;
    :cond_2
    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v6, :cond_4

    .line 182
    :cond_3
    :goto_0
    return-void

    .line 158
    :cond_4
    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v4

    .line 160
    .local v4, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-boolean v6, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-nez v6, :cond_6

    .line 161
    iput-boolean v9, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mRequiresName:Z

    .line 162
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 163
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 179
    if-ne v3, v8, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->onNext()V

    goto :goto_0

    .line 165
    :cond_6
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 166
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 167
    :cond_7
    if-eq v3, v8, :cond_5

    if-eq v3, v10, :cond_5

    .line 171
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->prefillNameFromProfile()V

    goto :goto_1
.end method
