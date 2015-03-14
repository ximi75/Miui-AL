.class Lcom/kingsoft/mail/ui/ConversationLongPressTipView$1;
.super Ljava/lang/Object;
.source "ConversationLongPressTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationLongPressTipView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationLongPressTipView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationLongPressTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationLongPressTipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->dismiss(Z)V

    .line 95
    return-void
.end method
