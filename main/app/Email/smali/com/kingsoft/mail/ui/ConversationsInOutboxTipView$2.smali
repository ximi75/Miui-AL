.class Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$2;
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
    .line 126
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->dismiss(Z)V

    .line 130
    return-void
.end method
