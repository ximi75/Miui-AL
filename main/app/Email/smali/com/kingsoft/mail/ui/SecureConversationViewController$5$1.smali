.class Lcom/kingsoft/mail/ui/SecureConversationViewController$5$1;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$5;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$5;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 791
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 792
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$5;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->quickReplyMail()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$2000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    .line 793
    return-void
.end method
