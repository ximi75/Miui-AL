.class Lcom/kingsoft/mail/chat/ChatViewController$5;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->popConfirmDialog(Lcom/kingsoft/mail/providers/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;

.field final synthetic val$message:Lcom/kingsoft/mail/providers/Message;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/providers/Message;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$5;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$5;->val$message:Lcom/kingsoft/mail/providers/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$5;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$5;->val$message:Lcom/kingsoft/mail/providers/Message;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->sendEmail(Lcom/kingsoft/mail/providers/Message;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$600(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/providers/Message;)V

    .line 425
    return-void
.end method
