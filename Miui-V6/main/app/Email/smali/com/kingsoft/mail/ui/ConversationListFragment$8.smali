.class Lcom/kingsoft/mail/ui/ConversationListFragment$8;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;->requestDelete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

.field final synthetic val$action:Lcom/kingsoft/mail/ui/DestructiveAction;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$8;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$8;->val$action:Lcom/kingsoft/mail/ui/DestructiveAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemsRemoved()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$8;->val$action:Lcom/kingsoft/mail/ui/DestructiveAction;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    .line 1031
    return-void
.end method
