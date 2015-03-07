.class public Lcom/kingsoft/email/provider/FolderPickerActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "FolderPickerActivity.java"

# interfaces
.implements Lcom/kingsoft/email/provider/FolderPickerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
    }
.end annotation


# static fields
.field public static final MAILBOX_TYPE_EXTRA:Ljava/lang/String; = "mailbox_type"

.field private static final TAG:Ljava/lang/String; = "FolderPickerActivity"


# instance fields
.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

.field private mInSetup:Z

.field private mMailboxType:I

.field private mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mInSetup:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/provider/FolderPickerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerActivity;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/provider/FolderPickerActivity;)Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/email/provider/FolderPickerActivity;Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;)Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerActivity;
    .param p1, "x1"    # Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kingsoft/email/provider/FolderPickerActivity;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kingsoft/email/provider/FolderPickerActivity;Lmiui/app/ProgressDialog;)Lmiui/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerActivity;
    .param p1, "x1"    # Lmiui/app/ProgressDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kingsoft/email/provider/FolderPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->startPickerForAccount()V

    return-void
.end method

.method private startPicker(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "headerId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 188
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "header":Ljava/lang/String;
    new-instance v0, Lcom/kingsoft/email/provider/FolderPickerDialog;

    iget-boolean v2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mInSetup:Z

    if-nez v2, :cond_0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/provider/FolderPickerDialog;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/email/provider/FolderPickerCallback;Ljava/lang/String;Z)V

    .line 191
    .local v0, "dialog":Lcom/kingsoft/email/provider/FolderPickerDialog;
    invoke-virtual {v0}, Lcom/kingsoft/email/provider/FolderPickerDialog;->show()V

    .line 192
    return-void

    .end local v0    # "dialog":Lcom/kingsoft/email/provider/FolderPickerDialog;
    :cond_0
    move v5, v1

    .line 189
    goto :goto_0
.end method

.method private startPickerForAccount()V
    .locals 5

    .prologue
    .line 182
    const v0, 0x7f1003b2

    .line 183
    .local v0, "headerId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/uifullfolders/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1, v0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->startPicker(Landroid/net/Uri;I)V

    .line 185
    return-void
.end method

.method private waitForFolders()V
    .locals 4

    .prologue
    .line 170
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    .line 171
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 172
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    const v2, 0x7f1000ba

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->show()V

    .line 176
    new-instance v1, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, p0, v2}, Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;-><init>(Lcom/kingsoft/email/provider/FolderPickerActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    .line 177
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x6

    const/4 v10, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 56
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 61
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_5

    .line 62
    const-string/jumbo v9, "account"

    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 64
    const-string/jumbo v9, "FolderPickerActivity"

    const-string/jumbo v11, "No account # in Uri?"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    .line 113
    .end local v4    # "id":Ljava/lang/String;
    :goto_0
    return-void

    .line 69
    .restart local v4    # "id":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const-string/jumbo v9, "mailbox_type"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mInSetup:Z

    .line 77
    const-string/jumbo v9, "mailbox_type"

    invoke-virtual {v3, v9, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mMailboxType:I

    .line 78
    iget-wide v11, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-static {p0, v11, v12, v13}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    .line 80
    .local v5, "trashMailboxId":J
    const-wide/16 v11, -0x1

    cmp-long v9, v5, v11

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mInSetup:Z

    if-eqz v9, :cond_2

    .line 81
    const-string/jumbo v9, "FolderPickerActivity"

    const-string/jumbo v11, "Trash folder already exists"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    goto :goto_0

    .line 70
    .end local v5    # "trashMailboxId":J
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "FolderPickerActivity"

    const-string/jumbo v11, "Invalid account # in Uri?"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    move v9, v10

    .line 76
    goto :goto_1

    .line 85
    .restart local v5    # "trashMailboxId":J
    :cond_2
    iget-wide v11, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 86
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_3

    .line 87
    const-string/jumbo v9, "FolderPickerActivity"

    const-string/jumbo v11, "No account?"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v9, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    iput-object v9, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountName:Ljava/lang/String;

    .line 92
    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_4

    .line 94
    invoke-direct {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->startPickerForAccount()V

    goto :goto_0

    .line 97
    :cond_4
    invoke-direct {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->waitForFolders()V

    goto :goto_0

    .line 102
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "trashMailboxId":J
    :cond_5
    const-string/jumbo v9, "picker_ui_account"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/providers/Account;

    .line 103
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, v7, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    iput-object v9, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountName:Ljava/lang/String;

    .line 104
    iget-object v9, v7, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    .line 105
    const-string/jumbo v9, "picker_mailbox_type"

    const/4 v11, -0x1

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mMailboxType:I

    .line 106
    const-string/jumbo v9, "picker_header_id"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "headerId":I
    if-nez v2, :cond_6

    .line 108
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    goto/16 :goto_0

    .line 111
    :cond_6
    iget-object v9, v7, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-direct {p0, v9, v2}, Lcom/kingsoft/email/provider/FolderPickerActivity;->startPicker(Landroid/net/Uri;I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 132
    iput-object v2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/kingsoft/email/provider/FolderPickerActivity$AccountObserver;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 136
    iput-object v2, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Lmiui/app/ProgressDialog;

    .line 138
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 118
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 123
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public select(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 11
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v10, 0x0

    .line 196
    iget-object v6, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v6, v6, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "folderId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 198
    .local v2, "id":Ljava/lang/Long;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v5, "values":Landroid/content/ContentValues;
    iget-wide v6, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    iget v8, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mMailboxType:I

    invoke-static {p0, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 202
    .local v4, "ofType":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v4, :cond_0

    .line 203
    const-string/jumbo v6, "type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 211
    .local v3, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v3, :cond_1

    .line 212
    const-string/jumbo v6, "type"

    iget v7, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mMailboxType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 218
    iget-wide v6, p0, Lcom/kingsoft/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 219
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    const-string/jumbo v6, "flags"

    iget v7, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/FolderPickerActivity;->finish()V

    .line 225
    return-void
.end method
