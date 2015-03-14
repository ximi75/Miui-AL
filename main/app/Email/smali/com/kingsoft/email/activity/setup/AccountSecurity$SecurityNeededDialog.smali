.class public Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;
.super Landroid/app/DialogFragment;
.source "AccountSecurity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityNeededDialog"
.end annotation


# static fields
.field private static final BUNDLE_KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;-><init>()V

    .line 380
    .local v1, "dialog":Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;->setArguments(Landroid/os/Bundle;)V

    .line 383
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;->dismiss()V

    .line 406
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSecurity;

    .line 407
    .local v0, "activity":Lcom/kingsoft/email/activity/setup/AccountSecurity;
    # getter for: Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->access$000(Lcom/kingsoft/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    .line 428
    :goto_0
    return-void

    .line 412
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 420
    :pswitch_0
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v1, :cond_1

    .line 421
    :cond_1
    const-string/jumbo v1, "Email/AccountSecurity"

    const-string/jumbo v2, "User declines; repost notification"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 423
    # getter for: Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->access$000(Lcom/kingsoft/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-static {v0}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v2

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V
    invoke-static {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->access$100(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V

    .line 425
    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 414
    :pswitch_1
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v1, :cond_2

    .line 415
    :cond_2
    const-string/jumbo v1, "Email/AccountSecurity"

    const-string/jumbo v2, "User accepts; advance to next step"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    # getter for: Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->access$000(Lcom/kingsoft/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 391
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 392
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, "b":Lmiui/app/AlertDialog$Builder;
    const v4, 0x7f100021

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 394
    const v4, 0x7f100020

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 395
    const v4, 0x7f1002a0

    invoke-virtual {v1, v4, p0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 396
    const v4, 0x7f100108

    invoke-virtual {v1, v4, p0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 397
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_0

    .line 398
    :cond_0
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Posting security needed dialog"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
