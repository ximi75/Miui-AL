.class Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;
.super Landroid/database/DataSetObserver;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationCursorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;Lcom/kingsoft/mail/ui/ConversationListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/ConversationListFragment$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$400(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$000(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onConversationListStatusUpdated()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$102(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 280
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$500(Lcom/kingsoft/mail/ui/ConversationListFragment;)Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method
