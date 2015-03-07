.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;
.super Ljava/lang/Object;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->initConversationActionBar(Lcom/kingsoft/mail/providers/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

.field final synthetic val$home_btn:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;->val$home_btn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivityController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUpPressed()Z

    .line 413
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;->val$home_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 414
    return-void
.end method
