.class Lcom/kingsoft/mail/ui/ConversationViewFragment$1$1;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$1;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment$1;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$1$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$1;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 5

    .prologue
    .line 184
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CVF load observer fired, this=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$1$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$1;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/ConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$1$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$1;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # invokes: Lcom/kingsoft/mail/ui/ConversationViewFragment;->handleDelayedConversationLoad()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$200(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    .line 187
    return-void
.end method
