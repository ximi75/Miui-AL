.class Lcom/kingsoft/mail/ui/AnimatedAdapter$5;
.super Ljava/lang/Object;
.source "AnimatedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field final synthetic val$v:Lcom/kingsoft/mail/browse/SwipeableConversationItemView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/SwipeableConversationItemView;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$5;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$5;->val$v:Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$5;->val$v:Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->getSwipeableItemView()Lcom/kingsoft/mail/browse/ConversationItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleMarkStar()V

    .line 698
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$5;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1300(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/SwipeableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->snapCurrentView()V

    .line 699
    return-void
.end method
