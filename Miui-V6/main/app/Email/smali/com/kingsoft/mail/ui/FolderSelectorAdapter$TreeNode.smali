.class Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
.super Ljava/lang/Object;
.source "FolderSelectorAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field public mAddedToList:Z

.field public final mChildren:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)V
    .locals 1
    .param p1, "wrappedObject"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mChildren:Ljava/util/PriorityQueue;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    .line 171
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 172
    return-void
.end method


# virtual methods
.method addChild(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;)V
    .locals 1
    .param p1, "child"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mChildren:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public compareTo(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;)I
    .locals 2
    .param p1, "o"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    iget-object v1, p1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->compareTo(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->compareTo(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;)I

    move-result v0

    return v0
.end method

.method pollChild()Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mChildren:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    return-object v0
.end method
