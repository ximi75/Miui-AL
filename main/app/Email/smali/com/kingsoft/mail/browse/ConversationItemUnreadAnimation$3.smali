.class Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationItemUnreadAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startXReadAnimation(Z)V
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
    .line 89
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iput-boolean p2, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;->val$sendersUnreadMarkVisible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;->this$0:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;->val$sendersUnreadMarkVisible:Z

    # invokes: Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startReadAnimation(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->access$200(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)V

    .line 92
    return-void
.end method
