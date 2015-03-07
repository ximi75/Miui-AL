.class Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$13;
.super Ljava/lang/Object;
.source "ConversationItemUnreadAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startUnReadAnimation()V
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
    .line 216
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$13;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$13;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->senderXAnimationFraction:I
    invoke-static {v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$002(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I

    .line 219
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$13;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$100(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate()V

    .line 220
    return-void
.end method
