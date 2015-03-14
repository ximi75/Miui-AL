.class Lcom/kingsoft/mail/chat/ChatViewController$18;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->initializeActionBar(Landroid/app/ActionBar;Lcom/kingsoft/mail/ui/ControllableActivity;)Lcom/kingsoft/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$18;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$18;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUpPressed()Z

    .line 1756
    return-void
.end method
