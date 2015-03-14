.class Lcom/kingsoft/mail/ui/AbstractActivityController$15;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->showSendOrDeleteDialog(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 3321
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$15;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$15;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$15;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    .line 3325
    return-void
.end method
