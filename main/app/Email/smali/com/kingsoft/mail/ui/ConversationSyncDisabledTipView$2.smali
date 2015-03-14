.class Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$2;
.super Ljava/lang/Object;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 125
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->access$000(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/Utils;->showAccountSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    .line 129
    return-void
.end method
