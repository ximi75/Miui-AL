.class Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$100(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z
    invoke-static {v2, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$102(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Z)Z

    .line 313
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # setter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$202(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Z)Z

    .line 314
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$300(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 315
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
