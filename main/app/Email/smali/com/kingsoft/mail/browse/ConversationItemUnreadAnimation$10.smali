.class Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationItemUnreadAnimation.java"


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

.field final synthetic val$sendersUnreadMarkVisible:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iput-boolean p2, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->val$sendersUnreadMarkVisible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 177
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$800(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)I

    move-result v1

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->senderXAnimationFraction:I
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$002(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I

    .line 178
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    const/16 v1, 0xff

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$302(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I

    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    const/high16 v1, 0x3f800000

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sizeAnimationFraction:F
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$502(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;F)F

    .line 180
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->val$sendersUnreadMarkVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$900(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-result-object v0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    :goto_0
    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->xAnimationFraction:I
    invoke-static {v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$602(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I

    .line 182
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mGadgetMode:I
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$1000(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # invokes: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startUnReadAnimation()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$1100(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    .line 184
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAlphaAnimatorEnd:Z
    invoke-static {v0, v2}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$702(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)Z

    .line 186
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$900(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-result-object v0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkX:I

    goto :goto_0
.end method
