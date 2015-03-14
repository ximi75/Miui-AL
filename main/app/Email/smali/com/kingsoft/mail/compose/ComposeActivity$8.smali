.class Lcom/kingsoft/mail/compose/ComposeActivity$8;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->initActionBar2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$8;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .prologue
    .line 1900
    return-void
.end method

.method public onItemSelected(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;I)V
    .locals 2
    .param p1, "menu"    # Lcom/miui/internal/widget/DropDownSingleChoiceMenu;
    .param p2, "selected"    # I

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$8;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$8;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getReplyFromAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setCurrentAccount(Lcom/kingsoft/mail/providers/ReplyFromAccount;)V

    .line 1905
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$8;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->onAccountChanged()V

    .line 1906
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 1896
    return-void
.end method
