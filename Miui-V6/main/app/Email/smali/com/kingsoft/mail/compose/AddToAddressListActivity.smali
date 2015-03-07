.class public Lcom/kingsoft/mail/compose/AddToAddressListActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "AddToAddressListActivity.java"


# instance fields
.field private backToComposeActivity:Landroid/widget/Button;

.field private showAcceptAddressList:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v4, 0x7f04002c

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->setContentView(I)V

    .line 32
    const v4, 0x7f0c00ba

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->showAcceptAddressList:Landroid/widget/TextView;

    .line 33
    const v4, 0x7f0c00bb

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->backToComposeActivity:Landroid/widget/Button;

    .line 35
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 36
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "addresses"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "addresses":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "\u8fd9\u53ea\u662f\u4e00\u4e2a\u6d4b\u8bd5Activity!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 40
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->showAcceptAddressList:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v4, p0, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->backToComposeActivity:Landroid/widget/Button;

    new-instance v5, Lcom/kingsoft/mail/compose/AddToAddressListActivity$1;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/compose/AddToAddressListActivity$1;-><init>(Lcom/kingsoft/mail/compose/AddToAddressListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 60
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 66
    return-void
.end method
