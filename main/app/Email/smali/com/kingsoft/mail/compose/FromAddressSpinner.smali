.class public Lcom/kingsoft/mail/compose/FromAddressSpinner;
.super Landroid/widget/Spinner;
.source "FromAddressSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;,
        Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

.field private mAccountChangedListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplyFromAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mShowListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    .line 49
    return-void
.end method

.method private selectCurrentAccount()V
    .locals 5

    .prologue
    .line 57
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    if-nez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 61
    .local v1, "currentIndex":I
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 62
    .local v0, "acct":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_1
.end method


# virtual methods
.method public getCurrentAccount()Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    return-object v0
.end method

.method public getMatchingReplyFromAccount(Ljava/lang/String;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 3
    .param p1, "accountString"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 75
    .local v0, "acct":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v2, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    .end local v0    # "acct":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReplyFromAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    return-object v0
.end method

.method protected initFromSpinner()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 125
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v1, Lcom/kingsoft/mail/compose/FromAddressSpinnerAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kingsoft/mail/compose/FromAddressSpinnerAdapter;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "adapter":Lcom/kingsoft/mail/compose/FromAddressSpinnerAdapter;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 130
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 131
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 133
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mReplyFromAccounts:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/compose/FromAddressSpinnerAdapter;->addAccounts(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->selectCurrentAccount()V

    .line 137
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public initialize(ILcom/kingsoft/mail/providers/Account;[Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "currentAccount"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "syncingAccounts"    # [Lcom/kingsoft/mail/providers/Account;
    .param p4, "refMessage"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 96
    iget-object v4, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v4, p3, v5}, Lcom/kingsoft/mail/utils/AccountUtils;->mergeAccountLists(Ljava/util/List;[Lcom/kingsoft/mail/providers/Account;Z)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 99
    iput-object v1, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->initFromSpinner()V

    .line 117
    return-void

    .line 102
    :cond_0
    move-object v3, p2

    .line 104
    .local v3, "replyAccount":Lcom/kingsoft/mail/providers/Account;
    if-eqz p4, :cond_2

    iget-object v4, p4, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 108
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v5, p4, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    move-object v3, v0

    .line 114
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 152
    .local v0, "selection":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v1, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iput-object v0, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 155
    iget-object v1, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccountChangedListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccountChangedListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;

    invoke-interface {v1}, Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;->onAccountChanged()V

    .line 159
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mShowListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mShowListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;->onShow()V

    .line 182
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public setCurrentAccount(Lcom/kingsoft/mail/providers/ReplyFromAccount;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 53
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->selectCurrentAccount()V

    .line 54
    return-void
.end method

.method public setOnAccountChangedListener(Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mAccountChangedListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;

    .line 146
    return-void
.end method

.method public setOnSpinnerShowListener(Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kingsoft/mail/compose/FromAddressSpinner;->mShowListener:Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;

    .line 189
    return-void
.end method
