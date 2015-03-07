.class Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;
.super Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMailboxId:J

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;J)V
    .locals 1
    .param p2, "mailboxId"    # J

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .line 190
    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$000(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 191
    iput-wide p2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    .line 192
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .line 197
    .local v0, "c":Landroid/content/Context;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    iget-wide v4, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    # setter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v1, v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$102(Lcom/kingsoft/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 198
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # setter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMaxLookback:I
    invoke-static {v1, v6}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$202(Lcom/kingsoft/email/activity/setup/MailboxSettings;I)I

    .line 199
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->POLICY_KEY_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$300()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v8

    .line 204
    .local v8, "policyKey":Ljava/lang/Long;
    if-eqz v8, :cond_0

    .line 205
    iget-object v9, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$400()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMaxLookback:I
    invoke-static {v9, v1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$202(Lcom/kingsoft/email/activity/setup/MailboxSettings;I)I

    .line 210
    .end local v8    # "policyKey":Ljava/lang/Long;
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->finish()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$500(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$600(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # invokes: Lcom/kingsoft/email/activity/setup/MailboxSettings;->onDataLoaded()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$700(Lcom/kingsoft/email/activity/setup/MailboxSettings;)V

    .line 222
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # getter for: Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    # invokes: Lcom/kingsoft/email/activity/setup/MailboxSettings;->enablePreferences(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->access$800(Lcom/kingsoft/email/activity/setup/MailboxSettings;Z)V

    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
