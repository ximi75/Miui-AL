.class Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "ConversationViewProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismissLoadingStatus(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

.field final synthetic val$doAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    iput-object p4, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;->val$doAfter:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;->val$doAfter:Ljava/lang/Runnable;

    # invokes: Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismiss(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->access$200(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
