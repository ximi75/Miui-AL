.class Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$7;
.super Ljava/lang/Object;
.source "ConversationItemUnreadAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 132
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$7;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$7;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->xAnimationFraction:I
    invoke-static {v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$602(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I

    .line 135
    return-void
.end method
