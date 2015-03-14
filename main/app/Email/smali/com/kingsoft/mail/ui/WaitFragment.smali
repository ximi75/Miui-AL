.class public Lcom/kingsoft/mail/ui/WaitFragment;
.super Lmiui/app/Fragment;
.source "WaitFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final DEFAULT_KEY:Ljava/lang/String; = "isDefault"

.field private static final MANUAL_SYNC_LOADER:I = 0x0

.field public static final NEED_FINISH:Ljava/lang/String; = "NEED_FINISH"


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mDefault:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 70
    return-void
.end method

.method private getContent(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v11, v11, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    and-int/lit8 v11, v11, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_0

    .line 110
    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0400b6

    const/4 v13, 0x0

    invoke-virtual {v11, v12, p1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 112
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f0c0241

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v11, 0x7f0c0242

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :goto_0
    return-object v10

    .line 115
    .end local v10    # "view":Landroid/view/View;
    :cond_0
    iget-boolean v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mDefault:Z

    if-eqz v11, :cond_1

    .line 116
    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0400b5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, p1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .restart local v10    # "view":Landroid/view/View;
    goto :goto_0

    .line 118
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0400b7

    const/4 v13, 0x0

    invoke-virtual {v11, v12, p1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 119
    .restart local v10    # "view":Landroid/view/View;
    const v11, 0x7f0c0243

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 120
    .local v9, "sync_layout":Landroid/view/View;
    const v11, 0x7f0c0244

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, "active_layout":Landroid/view/View;
    move-object v11, v10

    .line 123
    check-cast v11, Landroid/view/ViewGroup;

    const v12, 0x7f0c0248

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 125
    .local v4, "btn":Landroid/widget/Button;
    new-instance v11, Lcom/kingsoft/mail/ui/WaitFragment$1;

    invoke-direct {v11, p0}, Lcom/kingsoft/mail/ui/WaitFragment$1;-><init>(Lcom/kingsoft/mail/ui/WaitFragment;)V

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f100016

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 146
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v11, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 152
    .local v1, "accountId":J
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 154
    .local v0, "acc":Lcom/android/emailcommon/provider/Account;
    const/4 v5, 0x0

    .line 155
    .local v5, "flags":I
    if-eqz v0, :cond_3

    .line 156
    iget v5, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v8

    .line 161
    .local v8, "security":Lcom/kingsoft/email/SecurityPolicy;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/kingsoft/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v6

    .line 162
    .local v6, "inactiveReasons":I
    and-int/lit8 v11, v6, 0x4

    if-eqz v11, :cond_4

    const/4 v7, 0x1

    .line 163
    .local v7, "needPasswd":Z
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->isActivity()Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v7, :cond_5

    .line 164
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 162
    .end local v7    # "needPasswd":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 167
    .restart local v7    # "needPasswd":Z
    :cond_5
    and-int/lit8 v11, v5, 0x20

    if-eqz v11, :cond_6

    .line 168
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 171
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized isActivity(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 186
    const-class v4, Lcom/kingsoft/mail/ui/WaitFragment;

    monitor-enter v4

    const/4 v2, 0x0

    .line 187
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/kingsoft/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v1, "mAdminName":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 190
    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    move-object v2, v0

    .line 193
    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    monitor-exit v4

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 186
    .end local v1    # "mAdminName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private isZh()Z
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    const/4 v1, 0x1

    .line 245
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/ui/WaitFragment;
    .locals 1
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/ui/WaitFragment;->newInstance(Lcom/kingsoft/mail/providers/Account;Z)Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/kingsoft/mail/providers/Account;Z)Lcom/kingsoft/mail/ui/WaitFragment;
    .locals 3
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "def"    # Z

    .prologue
    .line 77
    new-instance v1, Lcom/kingsoft/mail/ui/WaitFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/WaitFragment;-><init>()V

    .line 79
    .local v1, "fragment":Lcom/kingsoft/mail/ui/WaitFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    const-string/jumbo v2, "isDefault"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/WaitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method

.method private setWaitSyncTxt4Eac(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method


# virtual methods
.method getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method declared-synchronized isActivity()Z
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/ui/WaitFragment;->isActivity(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 265
    .local v0, "id":I
    const v2, 0x7f0c0242

    if-ne v0, v2, :cond_1

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/WaitFragment;->startActivity(Landroid/content/Intent;)V

    .line 274
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const v2, 0x7f0c0241

    if-ne v0, v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 91
    const-string/jumbo v1, "isDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mDefault:Z

    .line 92
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 280
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    iget-object v1, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400b4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    .local v0, "wrapper":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/WaitFragment;->getContent(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "arg1"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/WaitFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public updateAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/kingsoft/mail/ui/WaitFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 250
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 253
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/WaitFragment;->getContent(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    :cond_0
    return-void
.end method
