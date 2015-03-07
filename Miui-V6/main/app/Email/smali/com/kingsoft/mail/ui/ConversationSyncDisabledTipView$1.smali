.class Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;
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
    .line 116
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->access$000(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->access$000(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    move-result-object v0

    .line 121
    .local v0, "dialog":Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->access$100(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "auto sync"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 122
    return-void
.end method
