.class Lcom/kingsoft/mail/ui/ConversationListFragment$6;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;->onTouchEventDispatch(Landroid/view/MotionEvent;)V
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
    .line 810
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$6;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$6;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$1102(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 814
    return-void
.end method
