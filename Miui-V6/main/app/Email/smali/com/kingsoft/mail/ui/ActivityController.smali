.class public interface abstract Lcom/kingsoft/mail/ui/ActivityController;
.super Ljava/lang/Object;
.source "ActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
.implements Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
.implements Lcom/kingsoft/mail/browse/ConversationListFooterView$FooterViewClickListener;
.implements Lcom/kingsoft/mail/ui/AccountController;
.implements Lcom/kingsoft/mail/ui/ConversationListCallbacks;
.implements Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;
.implements Lcom/kingsoft/mail/ui/ConversationSetObserver;
.implements Lcom/kingsoft/mail/ui/ConversationUpdater;
.implements Lcom/kingsoft/mail/ui/ErrorListener;
.implements Lcom/kingsoft/mail/ui/FolderChangeListener;
.implements Lcom/kingsoft/mail/ui/FolderController;
.implements Lcom/kingsoft/mail/ui/FolderSelector;
.implements Lcom/kingsoft/mail/ui/FragmentLauncher;
.implements Lcom/kingsoft/mail/ui/HelpCallback;
.implements Lcom/kingsoft/mail/ui/LayoutListener;
.implements Lcom/kingsoft/mail/ui/UndoListener;
.implements Lcom/kingsoft/mail/ui/UpOrBackController;
.implements Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;


# virtual methods
.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract executeSearch(Ljava/lang/String;)V
.end method

.method public abstract exitSearchMode()V
.end method

.method public abstract getCurrentAccount()Lcom/kingsoft/mail/providers/Account;
.end method

.method public abstract getCurrentListContext()Lcom/kingsoft/mail/ConversationListContext;
.end method

.method public abstract getFiltFrom()Z
.end method

.method public abstract getFiltRawSubject()Z
.end method

.method public abstract getFiltUnread()Z
.end method

.method public abstract getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;
.end method

.method public abstract getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method public abstract getSearchFilter()Ljava/lang/String;
.end method

.method public abstract getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
.end method

.method public abstract gotoUnreadBox()V
.end method

.method public abstract handleDrop(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)V
.end method

.method public abstract isDrawerEnabled()Z
.end method

.method public abstract loadAccountInbox()V
.end method

.method public abstract onAccessibilityStateChanged()V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)Z
.end method

.method public abstract onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onRestart()V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onUpPressed()Z
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract setHierarchyFolder(Lcom/kingsoft/mail/providers/Folder;)V
.end method

.method public abstract shouldHideMenuItems()Z
.end method

.method public abstract shouldShowFirstConversation()Z
.end method

.method public abstract showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V
.end method

.method public abstract showWaitForInitialization()V
.end method

.method public abstract startDragMode()V
.end method

.method public abstract startSearch()V
.end method

.method public abstract stopDragMode()V
.end method

.method public abstract supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z
.end method
