.class final Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder$1;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)I
    .locals 2
    .param p1, "lhs"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .param p2, "rhs"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder$1;->compare(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)I

    move-result v0

    return v0
.end method
