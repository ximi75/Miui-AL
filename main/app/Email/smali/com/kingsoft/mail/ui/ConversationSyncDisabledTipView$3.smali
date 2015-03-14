.class Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$3;
.super Ljava/lang/Object;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->dismiss(Z)V

    .line 172
    return-void
.end method
