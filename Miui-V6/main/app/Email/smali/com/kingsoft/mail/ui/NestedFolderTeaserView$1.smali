.class Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->attachOnClickListener(Landroid/view/View;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

.field final synthetic val$holder:Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;->val$holder:Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListener:Lcom/kingsoft/mail/ui/FolderSelector;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$000(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Lcom/kingsoft/mail/ui/FolderSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;->val$holder:Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/FolderSelector;->onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V

    .line 240
    return-void
.end method
