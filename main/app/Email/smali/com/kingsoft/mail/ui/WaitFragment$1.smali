.class Lcom/kingsoft/mail/ui/WaitFragment$1;
.super Ljava/lang/Object;
.source "WaitFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/WaitFragment;->getContent(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/WaitFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/WaitFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingsoft/mail/ui/WaitFragment$1;->this$0:Lcom/kingsoft/mail/ui/WaitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v3, p0, Lcom/kingsoft/mail/ui/WaitFragment$1;->this$0:Lcom/kingsoft/mail/ui/WaitFragment;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/WaitFragment;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 131
    .local v0, "accountId":J
    iget-object v3, p0, Lcom/kingsoft/mail/ui/WaitFragment$1;->this$0:Lcom/kingsoft/mail/ui/WaitFragment;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v4}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "NEED_FINISH"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/kingsoft/mail/ui/WaitFragment$1;->this$0:Lcom/kingsoft/mail/ui/WaitFragment;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/WaitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method
