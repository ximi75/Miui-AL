.class public Lcom/kingsoft/email/activity/setup/AccountSecurity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/kingsoft/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "ACCOUNT_ID"

.field private static final EXTRA_PASSWORD_EXPIRED:Ljava/lang/String; = "EXPIRED"

.field private static final EXTRA_PASSWORD_EXPIRING:Ljava/lang/String; = "EXPIRING"

.field private static final EXTRA_SHOW_DIALOG:Ljava/lang/String; = "SHOW_DIALOG"

.field private static final REQUEST_ENABLE:I = 0x1

.field private static final REQUEST_ENCRYPTION:I = 0x3

.field private static final REQUEST_PASSWORD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Email/AccountSecurity"


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetPassword:Z

.field private needFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 71
    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 72
    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->needFinish:Z

    .line 435
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSecurity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "x1"    # Lcom/kingsoft/email/SecurityPolicy;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "expired"    # Z

    .prologue
    .line 111
    new-instance v0, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    if-eqz p3, :cond_0

    const-string/jumbo v1, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    return-object v0

    .line 113
    :cond_0
    const-string/jumbo v1, "EXPIRING"

    goto :goto_0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "showDialog"    # Z

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    return-object v0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "showDialog"    # Z

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method private static repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "security"    # Lcom/kingsoft/email/SecurityPolicy;

    .prologue
    .line 354
    if-nez p0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSecurity$1;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$1;-><init>(Lcom/kingsoft/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private toMainEmail(Z)V
    .locals 2
    .param p1, "needPW"    # Z

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "ii":Landroid/content/Intent;
    const-string/jumbo v1, "NEED_PASSWD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super/range {p0 .. p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 123
    .local v11, "i":Landroid/content/Intent;
    const-string/jumbo v17, "ACCOUNT_ID"

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 124
    .local v3, "accountId":J
    const-string/jumbo v17, "SHOW_DIALOG"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 125
    .local v16, "showDialog":Z
    const-string/jumbo v17, "EXPIRING"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 127
    .local v14, "passwordExpiring":Z
    const-string/jumbo v17, "EXPIRED"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 130
    .local v13, "passwordExpired":Z
    :try_start_0
    const-string/jumbo v17, "NEED_FINISH"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSecurity;->needFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    const-string/jumbo v17, "EMAIL"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "email":Ljava/lang/String;
    const/4 v8, 0x0

    .line 137
    .local v8, "flag":Z
    if-nez v7, :cond_0

    .line 138
    const/4 v8, 0x1

    .line 140
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v15

    .line 141
    .local v15, "security":Lcom/kingsoft/email/SecurityPolicy;
    invoke-virtual {v15}, Lcom/kingsoft/email/SecurityPolicy;->clearNotification()V

    .line 142
    if-eqz v8, :cond_7

    .line 143
    const-wide/16 v17, -0x1

    cmp-long v17, v3, v17

    if-nez v17, :cond_2

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    .line 194
    :cond_1
    :goto_1
    return-void

    .line 131
    .end local v7    # "email":Ljava/lang/String;
    .end local v8    # "flag":Z
    .end local v15    # "security":Lcom/kingsoft/email/SecurityPolicy;
    :catch_0
    move-exception v6

    .line 132
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "email":Ljava/lang/String;
    .restart local v8    # "flag":Z
    .restart local v15    # "security":Lcom/kingsoft/email/SecurityPolicy;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_1

    .line 155
    :cond_3
    if-nez v14, :cond_4

    if-eqz v13, :cond_6

    .line 156
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    .line 157
    .local v9, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v17, "password_expiration"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v17

    if-nez v17, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v5

    .line 161
    .local v5, "dialog":Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    sget-boolean v17, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v17, :cond_5

    .line 162
    :cond_5
    const-string/jumbo v17, "Email/AccountSecurity"

    const-string/jumbo v18, "Showing password expiration dialog"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    const-string/jumbo v17, "password_expiration"

    move-object/from16 v0, v17

    invoke-virtual {v5, v9, v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v5    # "dialog":Lcom/kingsoft/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .end local v9    # "fm":Landroid/app/FragmentManager;
    :cond_6
    const-string/jumbo v17, "MyMsg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mAccount.mPolicyKey===============>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v10

    .line 174
    .local v10, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v17, "android.app.action.ADD_DEVICE_ADMIN"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v15}, Lcom/kingsoft/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v17, "android.app.extra.ADD_EXPLANATION"

    const v18, 0x7f100022

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v10, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 184
    .end local v10    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_7
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v17, "android.app.action.ADD_DEVICE_ADMIN"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v15}, Lcom/kingsoft/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v17, "android.app.extra.ADD_EXPLANATION"

    const v18, 0x7f100022

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 199
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 204
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method public tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 234
    invoke-static {p0}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v3

    .line 236
    .local v3, "security":Lcom/kingsoft/email/SecurityPolicy;
    invoke-virtual {v3}, Lcom/kingsoft/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v4

    if-nez v4, :cond_6

    .line 237
    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v4, :cond_2

    .line 238
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_0

    .line 239
    :cond_0
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Not active admin: repost notification"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    invoke-static {p1, v3}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V

    .line 242
    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->needFinish:Z

    if-nez v4, :cond_1

    .line 243
    invoke-direct {p0, v8}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->toMainEmail(Z)V

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    .line 347
    :goto_0
    return-void

    .line 247
    :cond_2
    iput-boolean v9, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 249
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 250
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_4

    .line 251
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_3

    .line 252
    :cond_3
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "No HostAuth: repost notification"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    invoke-static {p1, v3}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V

    .line 255
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 257
    :cond_4
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_5

    .line 258
    :cond_5
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Not active admin: post initial notification"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3}, Lcom/kingsoft/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    const-string/jumbo v4, "android.app.extra.ADD_EXPLANATION"

    const v5, 0x7f100022

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v2, v9}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 275
    .end local v0    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {v3, v5}, Lcom/kingsoft/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 276
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_7

    .line 277
    :cond_7
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Security active; clear holds"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v3, p1}, Lcom/kingsoft/email/SecurityPolicy;->syncAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 281
    invoke-virtual {v3}, Lcom/kingsoft/email/SecurityPolicy;->clearNotification()V

    .line 282
    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->needFinish:Z

    if-nez v4, :cond_8

    .line 283
    invoke-direct {p0, v8}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->toMainEmail(Z)V

    .line 285
    :cond_8
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 290
    :cond_9
    invoke-virtual {v3}, Lcom/kingsoft/email/SecurityPolicy;->setActivePolicies()V

    .line 294
    invoke-virtual {v3, v5}, Lcom/kingsoft/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v1

    .line 297
    .local v1, "inactiveReasons":I
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_d

    .line 298
    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    if-eqz v4, :cond_b

    .line 299
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_a

    .line 300
    :cond_a
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Password needed; repost notification"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    invoke-static {p1, v3}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V

    .line 306
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 308
    :cond_b
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_c

    .line 309
    :cond_c
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Password needed; request it via DPM"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    iput-boolean v9, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 313
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v2    # "intent":Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 320
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_11

    .line 321
    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    if-eqz v4, :cond_f

    .line 322
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_e

    .line 323
    :cond_e
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Encryption needed; repost notification"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 325
    invoke-static {p1, v3}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V

    .line 326
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 328
    :cond_f
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_10

    .line 329
    :cond_10
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Encryption needed; request it via DPM"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    iput-boolean v9, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 333
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v2    # "intent":Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 340
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_11
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_12

    .line 341
    :cond_12
    const-string/jumbo v4, "Email/AccountSecurity"

    const-string/jumbo v5, "Policies enforced; clear holds"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v3, p1}, Lcom/kingsoft/email/SecurityPolicy;->syncAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 345
    invoke-virtual {v3}, Lcom/kingsoft/email/SecurityPolicy;->clearNotification()V

    .line 346
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method
