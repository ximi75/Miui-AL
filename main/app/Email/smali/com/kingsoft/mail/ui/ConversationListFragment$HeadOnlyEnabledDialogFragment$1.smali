.class Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;)V
    .locals 0

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->setHeaderOnlyConfig(Z)V

    .line 1419
    return-void
.end method
