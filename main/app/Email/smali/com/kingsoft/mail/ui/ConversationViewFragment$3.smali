.class Lcom/kingsoft/mail/ui/ConversationViewFragment$3;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # invokes: Lcom/kingsoft/mail/ui/ConversationViewFragment;->showConversation()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$300(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    .line 299
    return-void
.end method
