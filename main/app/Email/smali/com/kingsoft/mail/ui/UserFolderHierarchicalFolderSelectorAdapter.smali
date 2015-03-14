.class public Lcom/kingsoft/mail/ui/UserFolderHierarchicalFolderSelectorAdapter;
.super Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;
.source "UserFolderHierarchicalFolderSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folders"    # Landroid/database/Cursor;
    .param p3, "layout"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "excludedFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/kingsoft/mail/providers/Folder;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected meetsRequirements(Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->meetsRequirements(Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v0

    goto :goto_0
.end method
