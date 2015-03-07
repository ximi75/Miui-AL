.class Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AccountSettings$1;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Long;

    .prologue
    .line 627
    const/16 v19, 0x0

    .line 628
    .local v19, "result":[Landroid/preference/PreferenceActivity$Header;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 629
    .local v11, "deletingAccountFound":Ljava/lang/Boolean;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 631
    .local v12, "deletingAccountId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 635
    .local v10, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 636
    .local v15, "index":I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v15

    .line 638
    .end local v15    # "index":I
    .local v16, "index":I
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 640
    .local v8, "accountId":J
    cmp-long v2, v8, v12

    if-nez v2, :cond_0

    .line 641
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 642
    goto :goto_0

    .line 644
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 645
    .local v17, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 646
    .local v14, "email":Ljava/lang/String;
    new-instance v18, Landroid/preference/PreferenceActivity$Header;

    invoke-direct/range {v18 .. v18}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 647
    .local v18, "newHeader":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, v18

    iput-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 648
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 649
    move-object/from16 v0, v18

    iput-object v14, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 650
    const-class v2, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 651
    invoke-static {v8, v9, v14}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 654
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    :try_start_2
    aput-object v18, v19, v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v15

    .line 655
    .end local v15    # "index":I
    .restart local v16    # "index":I
    goto :goto_0

    .line 657
    .end local v8    # "accountId":J
    .end local v14    # "email":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "newHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    if-eqz v10, :cond_2

    .line 658
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    return-object v2

    .line 657
    .end local v16    # "index":I
    .restart local v15    # "index":I
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v10, :cond_3

    .line 658
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 657
    .end local v15    # "index":I
    .restart local v16    # "index":I
    :catchall_1
    move-exception v2

    move/from16 v15, v16

    .end local v16    # "index":I
    .restart local v15    # "index":I
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # [Ljava/lang/Object;

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [Landroid/preference/PreferenceActivity$Header;

    move-object v1, v2

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    .line 669
    .local v1, "headers":[Landroid/preference/PreferenceActivity$Header;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 671
    .local v0, "deletingAccountFound":Z
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettings;->invalidateHeaderPreferences([Landroid/preference/PreferenceActivity$Header;)V
    invoke-static {v2, v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->access$600(Lcom/kingsoft/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)V

    .line 672
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2, v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->access$502(Lcom/kingsoft/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;

    .line 673
    if-nez v0, :cond_0

    .line 674
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    const-wide/16 v3, -0x1

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettings;->mDeletingAccountId:J
    invoke-static {v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettings;->access$702(Lcom/kingsoft/email/activity/setup/AccountSettings;J)J

    goto :goto_0
.end method
