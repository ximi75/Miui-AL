.class Lcom/kingsoft/mail/ui/ConversationListFragment$ManualSyncCompleteBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualSyncCompleteBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ManualSyncCompleteBroadcastReceiver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$ManualSyncCompleteBroadcastReceiver;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1387
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v2, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1388
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment$1;)V

    .line 1389
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1391
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method
