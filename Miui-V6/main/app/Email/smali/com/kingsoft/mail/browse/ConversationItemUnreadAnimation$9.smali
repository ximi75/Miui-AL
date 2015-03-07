.class Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;
.super Ljava/lang/Object;
.source "ConversationItemUnreadAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startXUnReadAnimation(Z)V
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
    .line 167
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAlphaAnimatorEnd:Z
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$700(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I
    invoke-static {v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$302(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I

    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$100(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate()V

    .line 173
    :cond_0
    return-void
.end method
