.class public Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginWarningDialog"
.end annotation


# static fields
.field private static final BUNDLE_KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final BUNDLE_KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"


# instance fields
.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 995
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;J)Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 1001
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;-><init>()V

    .line 1002
    .local v1, "dialog":Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1003
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v2, "account_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1005
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1006
    iput-object p1, v1, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->mReason:Ljava/lang/String;

    .line 1007
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->dismiss()V

    .line 1051
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1054
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "account_name"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "accountName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "account_id"

    const-wide/16 v16, -0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1013
    .local v5, "id":J
    const-wide/16 v14, -0x64

    cmp-long v14, v5, v14

    if-eqz v14, :cond_0

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v8

    .line 1015
    .local v8, "nc":Lcom/kingsoft/email/NotificationController;
    invoke-virtual {v8, v5, v6}, Lcom/kingsoft/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 1017
    .end local v8    # "nc":Lcom/kingsoft/email/NotificationController;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1018
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1019
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v3, "b":Lmiui/app/AlertDialog$Builder;
    const v14, 0x7f100037

    invoke-virtual {v3, v14}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 1021
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->mReason:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 1022
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v7, "message":Landroid/widget/TextView;
    const v14, 0x7f100036

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->mReason:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, "alert":Ljava/lang/String;
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1027
    .local v12, "spannableAlertString":Landroid/text/SpannableString;
    const/4 v14, 0x3

    invoke-static {v12, v14}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1029
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    const v14, 0x7f0d00b1

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1033
    .local v13, "textSize":I
    int-to-float v14, v13

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1034
    const v14, 0x7f0d00af

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1035
    .local v9, "paddingLeft":I
    const v14, 0x7f0d00b0

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1036
    .local v10, "paddingOther":I
    invoke-virtual {v7, v9, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1037
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1038
    invoke-virtual {v3, v7}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 1043
    .end local v2    # "alert":Ljava/lang/String;
    .end local v7    # "message":Landroid/widget/TextView;
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingOther":I
    .end local v12    # "spannableAlertString":Landroid/text/SpannableString;
    .end local v13    # "textSize":I
    :goto_0
    const v14, 0x7f1002a0

    move-object/from16 v0, p0

    invoke-virtual {v3, v14, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1044
    const v14, 0x7f100108

    move-object/from16 v0, p0

    invoke-virtual {v3, v14, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1045
    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v14

    return-object v14

    .line 1040
    :cond_1
    const v14, 0x7f100035

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    goto :goto_0
.end method
