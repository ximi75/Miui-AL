.class Lcom/kingsoft/mail/ui/SecureConversationViewController$1;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$1;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$1;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$1;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$1;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 319
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
