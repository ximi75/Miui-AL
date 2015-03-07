.class Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationItemUnreadAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startReadAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$5;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$5;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isReadAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$402(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)Z

    .line 114
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$5;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$100(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->setDragCancelled(Z)V

    .line 115
    return-void
.end method
