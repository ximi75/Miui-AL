.class public Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;
.super Landroid/widget/LinearLayout;
.source "ConversationListSearchStatusView.java"


# instance fields
.field private mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

.field private mSearchResultCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;-><init>(Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;)V

    iput-object v0, p0, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    .line 43
    return-void
.end method


# virtual methods
.method public getController()Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0c021a

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->mSearchResultCountTextView:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public setSearchResultTxt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->mSearchResultCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
