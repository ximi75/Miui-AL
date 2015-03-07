.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$4;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "AbstractConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onConversationTransformed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$4;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$4;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 756
    return-void
.end method
