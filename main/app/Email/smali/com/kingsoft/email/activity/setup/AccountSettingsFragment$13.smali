.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->createDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$mAccountNameEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->val$mAccountNameEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1405
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->val$mAccountNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1406
    .local v2, "summary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iget-object v2, v3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 1409
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->isRepetitions(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$2100(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1411
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1412
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1413
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1424
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v3, p1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1425
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$2200(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e9

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1446
    :goto_1
    return-void

    .line 1414
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 1417
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1420
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1428
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1429
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1430
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1441
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_2
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$2300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1442
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    const-string/jumbo v4, "account_description"

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v3, v4, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$1900(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1443
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 1444
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 1431
    :catch_3
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 1434
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 1437
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 1439
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method
