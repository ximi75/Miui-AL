.class Lcom/kingsoft/mail/ui/DrawerFragment$2;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/DrawerFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/DrawerFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingsoft/mail/ui/DrawerFragment$2;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment$2;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 156
    return-void
.end method

.method public onItemSelected(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;I)V
    .locals 3
    .param p1, "menu"    # Lcom/miui/internal/widget/DropDownSingleChoiceMenu;
    .param p2, "selected"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment$2;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    array-length v0, v0

    if-le p2, v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment$2;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/DrawerFragment$2;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/DrawerFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    aget-object v1, v1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/DrawerFragment;->changeAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    .line 165
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment$2;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    iget-object v1, v0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const-string/jumbo v0, "A11"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
