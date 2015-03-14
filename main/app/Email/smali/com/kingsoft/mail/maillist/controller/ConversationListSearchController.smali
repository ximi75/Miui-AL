.class public Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;
.super Ljava/lang/Object;
.source "ConversationListSearchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController$1;
    }
.end annotation


# instance fields
.field private mConversationListSearchStatusView:Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;)V
    .locals 0
    .param p1, "view"    # Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;->mConversationListSearchStatusView:Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;

    .line 27
    return-void
.end method


# virtual methods
.method public onCursorUpdated(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 7
    .param p1, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 36
    sget-object v1, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController$1;->$SwitchMap$com$kingsoft$mail$browse$ConversationCursor$SearchState:[I

    iget-object v2, p1, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;->mConversationListSearchStatusView:Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;

    const v2, 0x7f100213

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->setSearchResultTxt(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;->mConversationListSearchStatusView:Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;

    const v2, 0x7f10033c

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->remoteSearchCount:I

    sget v5, Lcom/kingsoft/mail/ui/AbstractActivityController;->localSearchCount:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->setSearchResultTxt(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSearchViewVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 30
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;->mConversationListSearchStatusView:Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->setVisibility(I)V

    .line 31
    return-void

    .line 30
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
