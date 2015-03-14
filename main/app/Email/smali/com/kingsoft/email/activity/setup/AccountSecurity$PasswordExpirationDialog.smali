.class public Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
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
    name = "PasswordExpirationDialog"
.end annotation


# static fields
.field private static final BUNDLE_KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final BUNDLE_KEY_EXPIRED:Ljava/lang/String; = "expired"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "expired"    # Z

    .prologue
    .line 444
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;-><init>()V

    .line 445
    .local v1, "dialog":Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string/jumbo v2, "expired"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 449
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->dismiss()V

    .line 482
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSecurity;

    .line 483
    .local v0, "activity":Lcom/kingsoft/email/activity/setup/AccountSecurity;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 484
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    .line 487
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    .line 488
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "expired"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 462
    .local v4, "expired":Z
    if-eqz v4, :cond_0

    const v6, 0x7f1002ba

    .line 465
    .local v6, "titleId":I
    :goto_0
    if-eqz v4, :cond_1

    const v2, 0x7f1002b9

    .line 469
    .local v2, "contentId":I
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 470
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 471
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v1, "b":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 473
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 474
    const v7, 0x7f1002a0

    invoke-virtual {v1, v7, p0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 475
    const v7, 0x7f100108

    invoke-virtual {v1, v7, p0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 462
    .end local v1    # "b":Lmiui/app/AlertDialog$Builder;
    .end local v2    # "contentId":I
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "titleId":I
    :cond_0
    const v6, 0x7f1002b6

    goto :goto_0

    .line 465
    .restart local v6    # "titleId":I
    :cond_1
    const v2, 0x7f1002b5

    goto :goto_1
.end method
