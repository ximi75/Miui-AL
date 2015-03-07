.class public Lcom/kingsoft/mail/ui/AccountItemView;
.super Landroid/widget/RelativeLayout;
.source "AccountItemView.java"


# instance fields
.field private mAccountTextView:Landroid/widget/TextView;

.field private mUnreadCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private setUnreadCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    if-lez p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AccountItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void

    .line 77
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/providers/Account;ZI)V
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "isCurrentAccount"    # Z
    .param p3, "count"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mAccountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0, p3}, Lcom/kingsoft/mail/ui/AccountItemView;->setUnreadCount(I)V

    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mAccountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mAccountTextView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 54
    return-void
.end method
