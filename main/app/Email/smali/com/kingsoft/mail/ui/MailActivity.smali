.class public Lcom/kingsoft/mail/ui/MailActivity;
.super Lcom/kingsoft/mail/ui/AbstractMailActivity;
.source "MailActivity.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ControllableActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/MailActivity$1;,
        Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;
    }
.end annotation


# static fields
.field protected static sAccountName:Ljava/lang/String;


# instance fields
.field private mAccessibilityEnabled:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mController:Lcom/kingsoft/mail/ui/ActivityController;

.field protected mConversationListHelper:Lcom/kingsoft/mail/ui/ConversationListHelper;

.field private final mNdefHandler:Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;

.field private mPendingToastOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

.field private mViewMode:Lcom/kingsoft/mail/ui/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;-><init>()V

    .line 112
    new-instance v0, Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;-><init>(Lcom/kingsoft/mail/ui/MailActivity$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mNdefHandler:Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;

    .line 116
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationListHelper;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/ConversationListHelper;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mConversationListHelper:Lcom/kingsoft/mail/ui/ConversationListHelper;

    .line 117
    return-void
.end method

.method public static setNfcMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 228
    sput-object p0, Lcom/kingsoft/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v2, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 124
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doNothingClickHandler(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 411
    return-void
.end method

.method public getAccountController()Lcom/kingsoft/mail/ui/AccountController;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getActionbarController()Lcom/kingsoft/mail/ui/ActivityController;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getConversationItemAreaClickListener()Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public final getConversationListHelper()Lcom/kingsoft/mail/ui/ConversationListHelper;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mConversationListHelper:Lcom/kingsoft/mail/ui/ConversationListHelper;

    return-object v0
.end method

.method public getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getErrorListener()Lcom/kingsoft/mail/ui/ErrorListener;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getFolderChangeListener()Lcom/kingsoft/mail/ui/FolderChangeListener;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getFolderController()Lcom/kingsoft/mail/ui/FolderController;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getFolderSelector()Lcom/kingsoft/mail/ui/FolderSelector;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getFragmentLauncher()Lcom/kingsoft/mail/ui/FragmentLauncher;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getPendingToastOperation()Lcom/kingsoft/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mPendingToastOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

    return-object v0
.end method

.method public getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method

.method public getUpOrBackController()Lcom/kingsoft/mail/ui/UpOrBackController;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public getViewMode()Lcom/kingsoft/mail/ui/ViewMode;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    return-object v0
.end method

.method public getmController()Lcom/kingsoft/mail/ui/ActivityController;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    return-object v0
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/mail/ui/ActivityController;->handleDrop(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)V

    .line 370
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    .line 464
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onAccessibilityStateChanged()V

    .line 465
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingsoft/mail/ui/ActivityController;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 1
    .param p1, "animatedAdapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    .line 416
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onBackPressed()V

    .line 154
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    new-instance v2, Lcom/kingsoft/mail/ui/ViewMode;

    invoke-direct {v2}, Lcom/kingsoft/mail/ui/ViewMode;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    .line 170
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    .line 171
    .local v1, "tabletUi":Z
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-static {p0, v2, v1}, Lcom/kingsoft/mail/ui/ControllerFactory;->forActivity(Lcom/kingsoft/mail/ui/MailActivity;Lcom/kingsoft/mail/ui/ViewMode;Z)Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    .line 172
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v2, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onCreate(Landroid/os/Bundle;)Z

    .line 174
    const-string/jumbo v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/MailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 176
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    .line 177
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 178
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 179
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mNdefHandler:Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v2, p0, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1, p1, p2}, Lcom/kingsoft/mail/ui/ActivityController;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 240
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onDestroy()V

    .line 317
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onDestroy()V

    .line 318
    return-void
.end method

.method public onFooterViewErrorActionClick(Lcom/kingsoft/mail/providers/Folder;I)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "errorStatus"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/mail/ui/ActivityController;->onFooterViewErrorActionClick(Lcom/kingsoft/mail/providers/Folder;I)V

    .line 440
    return-void
.end method

.method public onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V

    .line 445
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/mail/ui/ActivityController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onPause()V

    .line 262
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 187
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onPostCreate(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 267
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingsoft/mail/ui/ActivityController;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 273
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onRestart()V

    .line 201
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    instance-of v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->clearState()V

    .line 207
    :cond_0
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->getLastViewedAccount()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "uriStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getUIAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/ui/ActivityController;->changeAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->onRestart()V

    .line 217
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 278
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onResume()V

    .line 279
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ActivityController;->onResume()V

    .line 280
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 281
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    if-eq v1, v2, :cond_0

    .line 282
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailActivity;->onAccessibilityStateChanged(Z)V

    .line 285
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/mail/utils/StorageLowState;->checkStorageLowMode(Landroid/content/Context;)V

    .line 286
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    .line 287
    .local v0, "appDeviceInfo":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    const-string/jumbo v2, "MailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AppDeviceInfo.infor ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 288
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->startSearch()V

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onStart()V

    .line 299
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onStart()V

    .line 300
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onStop()V

    .line 311
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onStop()V

    .line 312
    return-void
.end method

.method public onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 1
    .param p1, "undoOp"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 375
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractMailActivity;->onWindowFocusChanged(Z)V

    .line 323
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ActivityController;->onWindowFocusChanged(Z)V

    .line 324
    return-void
.end method

.method public setPendingToastOperation(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 0
    .param p1, "op"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mPendingToastOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

    .line 395
    return-void
.end method

.method public startDragMode()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->startDragMode()V

    .line 450
    return-void
.end method

.method public stopDragMode()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->stopDragMode()V

    .line 455
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/mail/ui/ActivityController;->supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ViewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v1, " controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActivity;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
