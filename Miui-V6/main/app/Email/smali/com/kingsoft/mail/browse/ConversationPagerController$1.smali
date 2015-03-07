.class Lcom/kingsoft/mail/browse/ConversationPagerController$1;
.super Ljava/lang/Object;
.source "ConversationPagerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationPagerController;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationPagerController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationPagerController;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController$1;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController$1;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerController;

    # getter for: Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->access$000(Lcom/kingsoft/mail/browse/ConversationPagerController;)Lcom/kingsoft/mail/browse/ViewPager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ViewPager;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController$1;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerController;

    # getter for: Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->access$000(Lcom/kingsoft/mail/browse/ConversationPagerController;)Lcom/kingsoft/mail/browse/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/browse/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;I)V

    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController$1;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerController;

    # invokes: Lcom/kingsoft/mail/browse/ConversationPagerController;->cleanup()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->access$100(Lcom/kingsoft/mail/browse/ConversationPagerController;)V

    .line 172
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 164
    return-void
.end method
