.class public interface abstract Lcom/kingsoft/mail/ui/ControllableActivity;
.super Ljava/lang/Object;
.source "ControllableActivity.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ConversationListFooterView$FooterViewClickListener;
.implements Lcom/kingsoft/mail/ui/AnimatedAdapter$Listener;
.implements Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;
.implements Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;
.implements Lcom/kingsoft/mail/ui/HelpCallback;
.implements Lcom/kingsoft/mail/ui/RestrictedActivity;
.implements Lcom/kingsoft/mail/ui/UndoListener;


# virtual methods
.method public abstract getAccountController()Lcom/kingsoft/mail/ui/AccountController;
.end method

.method public abstract getConversationItemAreaClickListener()Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
.end method

.method public abstract getConversationListHelper()Lcom/kingsoft/mail/ui/ConversationListHelper;
.end method

.method public abstract getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;
.end method

.method public abstract getErrorListener()Lcom/kingsoft/mail/ui/ErrorListener;
.end method

.method public abstract getFolderChangeListener()Lcom/kingsoft/mail/ui/FolderChangeListener;
.end method

.method public abstract getFolderController()Lcom/kingsoft/mail/ui/FolderController;
.end method

.method public abstract getFolderSelector()Lcom/kingsoft/mail/ui/FolderSelector;
.end method

.method public abstract getFragmentLauncher()Lcom/kingsoft/mail/ui/FragmentLauncher;
.end method

.method public abstract getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;
.end method

.method public abstract getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;
.end method

.method public abstract getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
.end method

.method public abstract getUpOrBackController()Lcom/kingsoft/mail/ui/UpOrBackController;
.end method

.method public abstract getViewMode()Lcom/kingsoft/mail/ui/ViewMode;
.end method

.method public abstract isAccessibilityEnabled()Z
.end method

.method public abstract startDragMode()V
.end method

.method public abstract stopDragMode()V
.end method
