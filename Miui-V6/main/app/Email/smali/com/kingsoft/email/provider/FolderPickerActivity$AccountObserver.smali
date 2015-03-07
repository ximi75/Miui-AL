.class Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
.super Landroid/database/ContentObserver;
.source "FolderPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/FolderPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/provider/FolderPickerActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    .line 144
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 145
    iput-object p2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # getter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J
    invoke-static {v2}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$000(Lcom/kingsoft/email/provider/FolderPickerActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 152
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget v1, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # getter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
    invoke-static {v1}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$100(Lcom/kingsoft/email/provider/FolderPickerActivity;)Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # getter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
    invoke-static {v2}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$100(Lcom/kingsoft/email/provider/FolderPickerActivity;)Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # setter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
    invoke-static {v1, v4}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$102(Lcom/kingsoft/email/provider/FolderPickerActivity;Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;)Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    .line 157
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # getter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;
    invoke-static {v1}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$200(Lcom/kingsoft/email/provider/FolderPickerActivity;)Lmiui/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # getter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;
    invoke-static {v1}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$200(Lcom/kingsoft/email/provider/FolderPickerActivity;)Lmiui/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # setter for: Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;
    invoke-static {v1, v4}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$202(Lcom/kingsoft/email/provider/FolderPickerActivity;Lmiui/app/ProgressDialog;)Lmiui/app/ProgressDialog;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/kingsoft/email/provider/FolderPickerActivity;

    # invokes: Lcom/kingsoft/email/provider/FolderPickerActivity;->startPickerForAccount()V
    invoke-static {v1}, Lcom/kingsoft/email/provider/FolderPickerActivity;->access$300(Lcom/kingsoft/email/provider/FolderPickerActivity;)V

    .line 163
    :cond_1
    return-void
.end method
