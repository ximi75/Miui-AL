.class Lcom/kingsoft/mail/ui/ConversationListFragment$9;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;->onCursorUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$9;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$9;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1223
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$9;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->restoreLastScrolledPosition()V

    .line 1224
    return-void
.end method
