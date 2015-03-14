.class Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$1;
.super Ljava/lang/Object;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    # invokes: Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->goToOutbox()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->access$000(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V

    .line 123
    return-void
.end method
