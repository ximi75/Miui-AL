.class public Lcom/kingsoft/mail/ui/FolderSelectionActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "FolderSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/mail/ui/ControllableActivity;
.implements Lcom/kingsoft/mail/ui/FolderChangeListener;
.implements Lcom/kingsoft/mail/ui/FolderSelector;


# static fields
.field private static final CONFIGURE:I = 0x0

.field public static final EXTRA_ACCOUNT_SHORTCUT:Ljava/lang/String; = "account-shortcut"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VIEW:I = 0x1


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountController:Lcom/kingsoft/mail/ui/AccountController;

.field private mAppWidgetId:I

.field private mConfigureShortcut:Z

.field protected mConfigureWidget:Z

.field private final mDrawerObservers:Landroid/database/DataSetObservable;

.field private mMode:I

.field private mNavigatedFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mMode:I

    .line 72
    new-instance v0, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v1, "Drawer"

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;

    .line 74
    new-instance v0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;-><init>(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method private createFolderListFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 213
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0c01ed

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 214
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 215
    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->setResult(I)V

    .line 255
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->finish()V

    .line 256
    return-void
.end method


# virtual methods
.method protected createWidget(ILcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "selectedFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 262
    iget v3, p3, Lcom/kingsoft/mail/providers/Folder;->type:I

    iget-object v0, p3, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v5, p3, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 265
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v7, "result":Landroid/content/Intent;
    const-string/jumbo v0, "appWidgetId"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v7}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->finish()V

    .line 269
    return-void
.end method

.method public getAccountController()Lcom/kingsoft/mail/ui/AccountController;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    return-object v0
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 338
    return-object p0
.end method

.method public getConversationItemAreaClickListener()Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConversationListHelper()Lcom/kingsoft/mail/ui/ConversationListHelper;
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorListener()Lcom/kingsoft/mail/ui/ErrorListener;
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getExcludedFolderTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getFolderChangeListener()Lcom/kingsoft/mail/ui/FolderChangeListener;
    .locals 0

    .prologue
    .line 353
    return-object p0
.end method

.method public getFolderController()Lcom/kingsoft/mail/ui/FolderController;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderSelector()Lcom/kingsoft/mail/ui/FolderSelector;
    .locals 0

    .prologue
    .line 369
    return-object p0
.end method

.method public getFragmentLauncher()Lcom/kingsoft/mail/ui/FragmentLauncher;
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingToastOperation()Lcom/kingsoft/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpOrBackController()Lcom/kingsoft/mail/ui/UpOrBackController;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewMode()Lcom/kingsoft/mail/ui/ViewMode;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 380
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0
    .param p1, "animatedAdapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 419
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 273
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 275
    iget v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->createWidget(ILcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->doCancel()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 244
    .local v0, "id":I
    const v1, 0x7f0c01fe

    if-ne v0, v1, :cond_0

    .line 245
    iget v1, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mMode:I

    if-nez v1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->doCancel()V

    .line 251
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v4, 0x7f040088

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->setContentView(I)V

    .line 171
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 172
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    .line 174
    const-string/jumbo v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    .line 175
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    if-nez v4, :cond_0

    .line 176
    sget-object v4, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "unexpected intent: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    :cond_0
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    if-eqz v4, :cond_5

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 180
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 181
    const v4, 0x7f030002

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 183
    :cond_2
    iput v7, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mMode:I

    .line 188
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    :goto_0
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    if-eqz v4, :cond_3

    .line 189
    const-string/jumbo v4, "appWidgetId"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    .line 191
    iget v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    if-nez v4, :cond_3

    .line 192
    sget-object v4, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "invalid widgetId"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    :cond_3
    const-string/jumbo v4, "account-shortcut"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/Account;

    iput-object v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 197
    const v4, 0x7f0c01fe

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 198
    .local v2, "firstButton":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mMode:I

    if-ne v4, v8, :cond_4

    .line 201
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    :cond_4
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->getExcludedFolderTypes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->ofTopLevelTree(Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->createFolderListFragment(Landroid/app/Fragment;)V

    .line 206
    return-void

    .line 185
    .end local v2    # "firstButton":Landroid/widget/Button;
    :cond_5
    iput v8, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mMode:I

    goto :goto_0
.end method

.method public onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 7
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "force"    # Z

    .prologue
    .line 283
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v4}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 285
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v2, "resultIntent":Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v4, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {p0, v4, v5}, Lcom/kingsoft/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    const-string/jumbo v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f030002

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v4, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 307
    .local v1, "humanFolderName":Ljava/lang/CharSequence;
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 314
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/kingsoft/mail/ui/ShortcutNameActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v3, "shortcutNameIntent":Landroid/content/Intent;
    const/high16 v4, 0x42000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    const-string/jumbo v4, "extra_folder_click_intent"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v4, "extra_shortcut_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->finish()V

    .line 328
    .end local v0    # "clickIntent":Landroid/content/Intent;
    .end local v1    # "humanFolderName":Ljava/lang/CharSequence;
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "shortcutNameIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 324
    .restart local v2    # "resultIntent":Landroid/content/Intent;
    :cond_1
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    if-eqz v4, :cond_0

    .line 325
    iget v4, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v4, v5, v6}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->createWidget(ILcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 365
    return-void
.end method

.method public onFooterViewErrorActionClick(Lcom/kingsoft/mail/providers/Folder;I)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "errorStatus"    # I

    .prologue
    .line 429
    return-void
.end method

.method public onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 434
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 238
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 230
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method public onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 0
    .param p1, "undoOp"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 385
    return-void
.end method

.method public setPendingToastOperation(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 0
    .param p1, "op"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 405
    return-void
.end method

.method public startDragMode()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public stopDragMode()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method
