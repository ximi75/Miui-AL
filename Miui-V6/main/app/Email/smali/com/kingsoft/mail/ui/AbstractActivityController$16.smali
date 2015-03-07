.class Lcom/kingsoft/mail/ui/AbstractActivityController$16;
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

.field final synthetic val$account:Lcom/kingsoft/mail/providers/Account;

.field final synthetic val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 0

    .prologue
    .line 3327
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$16;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$16;->val$account:Lcom/kingsoft/mail/providers/Account;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$16;->val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$16;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$16;->val$account:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$16;->val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->moveToDraftAndEdit(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$700(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V

    .line 3331
    return-void
.end method
