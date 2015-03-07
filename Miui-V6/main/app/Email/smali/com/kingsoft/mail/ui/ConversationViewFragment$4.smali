.class Lcom/kingsoft/mail/ui/ConversationViewFragment$4;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # invokes: Lcom/kingsoft/mail/ui/ConversationViewFragment;->onNewMessageBarClick()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$400(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    .line 345
    return-void
.end method
