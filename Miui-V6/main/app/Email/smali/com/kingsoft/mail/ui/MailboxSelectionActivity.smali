.class public Lcom/kingsoft/mail/ui/MailboxSelectionActivity;
.super Lcom/kingsoft/mail/ui/BaseListActivity;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/ui/BaseListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT:Ljava/lang/String; = "name"

.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final CREATE_SHORTCUT_KEY:Ljava/lang/String; = "createShortcut"

.field private static final CREATE_WIDGET_KEY:Ljava/lang/String; = "createWidget"

.field private static final LOADER_ACCOUNT_CURSOR:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String;

.field private static final RESULT_CREATE_ACCOUNT:I = 0x2

.field private static final RESULT_CREATE_SHORTCUT_OR_WIDGET:I = 0x1

.field private static final TAG_WAIT:Ljava/lang/String; = "wait-fragment"

.field private static final WAITING_FOR_ADD_ACCOUNT_RESULT_KEY:Ljava/lang/String; = "waitingForAddAccountResult"

.field private static final WIDGET_ID_KEY:Ljava/lang/String; = "widgetId"


# instance fields
.field private final VIEW_IDS:[I

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mAppWidgetId:I

.field private mConfigureWidget:Z

.field private mContent:Landroid/view/View;

.field private mCreateShortcut:Z

.field private mHandler:Landroid/os/Handler;

.field private mResumed:Z

.field private mWait:Landroid/view/View;

.field mWaitingForAddAccountResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseListActivity;-><init>()V

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0c01f6

    aput v1, v0, v2

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->VIEW_IDS:[I

    .line 71
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 72
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 74
    iput v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    .line 79
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 82
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mResumed:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailboxSelectionActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->completeSetupWithAccounts(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailboxSelectionActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->updateAccountList(Landroid/database/Cursor;)V

    return-void
.end method

.method private completeSetupWithAccounts(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "accounts"    # Landroid/database/Cursor;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;-><init>(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragment;
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "wait-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/WaitFragment;

    return-object v0
.end method

.method private replaceFragment(Landroid/app/Fragment;ILjava/lang/String;)I
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 371
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 372
    const v2, 0x7f0c023f

    invoke-virtual {v0, v2, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 373
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v1

    .line 374
    .local v1, "transactionId":I
    return v1
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    const-string/jumbo v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 181
    :cond_0
    const-string/jumbo v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string/jumbo v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 184
    :cond_1
    const-string/jumbo v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const-string/jumbo v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    .line 187
    :cond_2
    const-string/jumbo v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    const-string/jumbo v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 190
    :cond_3
    return-void
.end method

.method private selectAccount(Lcom/kingsoft/mail/providers/Account;Z)V
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "isSingleAccount"    # Z

    .prologue
    .line 280
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v1, :cond_4

    .line 282
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getFolderSelectionActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v1, :cond_1

    .line 288
    const-string/jumbo v1, "appWidgetId"

    iget v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    :cond_1
    const-string/jumbo v1, "account-shortcut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    if-eqz p2, :cond_3

    .line 292
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->finish()V

    .line 302
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 285
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    goto :goto_0

    .line 296
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 300
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->finish()V

    goto :goto_1
.end method

.method private setupWithAccounts()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$1;-><init>(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    return-void
.end method

.method private showWaitFragment(Lcom/kingsoft/mail/providers/Account;)V
    .locals 4
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v0

    .line 345
    .local v0, "fragment":Lcom/kingsoft/mail/ui/WaitFragment;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/WaitFragment;->updateAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/kingsoft/mail/ui/WaitFragment;->newInstance(Lcom/kingsoft/mail/providers/Account;Z)Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v1

    const/16 v2, 0x1001

    const-string/jumbo v3, "wait-fragment"

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;)I

    goto :goto_0
.end method

.method private updateAccountList(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "accounts"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 223
    const/4 v8, 0x1

    .line 225
    .local v8, "displayAccountList":Z
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_3

    .line 226
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 231
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getNoAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 232
    .local v9, "noAccountIntent":Landroid/content/Intent;
    if-eqz v9, :cond_2

    .line 233
    const/4 v0, 0x2

    invoke-virtual {p0, v9, v0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    :cond_2
    const/4 v8, 0x0

    .line 240
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 252
    .end local v9    # "noAccountIntent":Landroid/content/Intent;
    :cond_3
    :goto_0
    if-eqz v8, :cond_5

    .line 253
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mResumed:Z

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setVisible(Z)V

    .line 260
    :cond_4
    new-instance v0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$3;

    const v3, 0x7f04008f

    sget-object v5, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->VIEW_IDS:[I

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$3;-><init>(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    :cond_5
    return-void

    .line 241
    :cond_6
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 242
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    new-instance v0, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    invoke-direct {p0, v0, v2}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->selectAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    .line 248
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getFolderSelectionActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 308
    const-class v0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 322
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 324
    if-eq p2, v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->finish()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 330
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->showWaitFragment(Lcom/kingsoft/mail/providers/Account;)V

    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 334
    if-ne p2, v1, :cond_0

    .line 336
    invoke-virtual {p0, v1, p3}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 337
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 413
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->finish()V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 314
    .local v0, "id":I
    const v1, 0x7f0c01fe

    if-ne v0, v1, :cond_0

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setResult(I)V

    .line 316
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->finish()V

    .line 318
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f040090

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setContentView(I)V

    .line 91
    const v1, 0x7f0c0120

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    .line 92
    const v1, 0x7f0c023f

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    .line 93
    if-eqz p1, :cond_3

    .line 94
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->restoreState(Landroid/os/Bundle;)V

    .line 108
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v1, :cond_2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 111
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 112
    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 115
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    const v1, 0x7f0c01fe

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setVisible(Z)V

    .line 120
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setResult(I)V

    .line 121
    return-void

    .line 96
    :cond_3
    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    .line 101
    iget v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v1, :cond_0

    .line 102
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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
    const/4 v4, 0x0

    .line 357
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 362
    :goto_0
    return-object v0

    .line 359
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 276
    new-instance v1, Lcom/kingsoft/mail/providers/Account;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->selectAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    .line 277
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "data"    # Landroid/database/Cursor;
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
    .local p1, "cursor":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    .line 384
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, "initializedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v0, p2}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    .line 391
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->isAccountReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 397
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 399
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->updateAccountList(Landroid/database/Cursor;)V

    .line 407
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    .end local v2    # "initializedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    :cond_2
    :goto_0
    return-void

    .line 403
    .restart local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v1    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    .restart local v2    # "initializedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Account;

    move-object v0, v3

    .line 404
    :goto_1
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->showWaitFragment(Lcom/kingsoft/mail/providers/Account;)V

    goto :goto_0

    .line 403
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 380
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseListActivity;->onPause()V

    .line 164
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mResumed:Z

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseListActivity;->onResume()V

    .line 152
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mResumed:Z

    .line 156
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->setupWithAccounts()V

    .line 159
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string/jumbo v0, "createShortcut"

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string/jumbo v0, "createWidget"

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    iget v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "widgetId"

    iget v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    :cond_0
    const-string/jumbo v0, "waitingForAddAccountResult"

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseListActivity;->onStart()V

    .line 139
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/analytics/Tracker;->activityStart(Landroid/app/Activity;)V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseListActivity;->onStop()V

    .line 146
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/analytics/Tracker;->activityStop(Landroid/app/Activity;)V

    .line 147
    return-void
.end method
