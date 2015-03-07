.class public interface abstract Lcom/kingsoft/mail/ui/FolderController;
.super Ljava/lang/Object;
.source "FolderController.java"


# virtual methods
.method public abstract changeFolderUnreadCount(Lcom/kingsoft/mail/providers/Folder;)V
.end method

.method public abstract getFolder()Lcom/kingsoft/mail/providers/Folder;
.end method

.method public abstract registerFolderObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract requestFolderRefresh(Z)V
.end method

.method public abstract unregisterFolderObserver(Landroid/database/DataSetObserver;)V
.end method
