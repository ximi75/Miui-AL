.class public Lcom/kingsoft/mail/browse/MessageInviteView;
.super Landroid/widget/LinearLayout;
.source "MessageInviteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;
    }
.end annotation


# instance fields
.field private mCommandHandler:Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;

.field private final mContext:Landroid/content/Context;

.field private mMessage:Lcom/kingsoft/mail/providers/Message;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;-><init>(Lcom/kingsoft/mail/browse/MessageInviteView;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mCommandHandler:Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;

    .line 49
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/MessageInviteView;)Lcom/kingsoft/mail/providers/Message;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageInviteView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    return-object v0
.end method

.method private hideInvite()V
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->setVisibility(I)V

    .line 127
    return-void
.end method

.method private setResponseSelected()V
    .locals 10

    .prologue
    const v9, 0x7f0c01b9

    const v8, 0x7f0c01b8

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 138
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 139
    const v0, 0x7f0c01ba

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 143
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 144
    const v0, 0x7f0c01ba

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 148
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 149
    const v0, 0x7f0c01ba

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private setWebViewSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 66
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 70
    return-void
.end method

.method private showInvite()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->setVisibility(I)V

    .line 131
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageInviteView;->setResponseSelected()V

    .line 132
    return-void
.end method

.method private updateChildVisibility()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Message;->isFlaggedCalendarInviteIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageInviteView;->showInvite()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageInviteView;->hideInvite()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/providers/Message;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 73
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    .line 74
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageInviteView;->setWebViewSettings()V

    .line 75
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->webView:Landroid/webkit/WebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageInviteView;->updateChildVisibility()V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0c01ba

    const v10, 0x7f0c01b9

    const v9, 0x7f0c01b8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "command":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 94
    .local v1, "id":I
    const v4, 0x7f0c01b6

    if-ne v1, v4, :cond_2

    .line 95
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 109
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v3, "params":Landroid/content/ContentValues;
    const-string/jumbo v4, "UnifiedEmail"

    const-string/jumbo v5, "SENDING INVITE COMMAND, VALUE=%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    const-string/jumbo v4, "respond"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->mCommandHandler:Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;

    invoke-virtual {v4, v3}, Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;->sendCommand(Landroid/content/ContentValues;)V

    .line 113
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    invoke-virtual {p0, v10}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    invoke-virtual {p0, v11}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 118
    invoke-virtual {p0, v10}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 119
    invoke-virtual {p0, v11}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 121
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 123
    .end local v3    # "params":Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 100
    :cond_2
    if-ne v1, v9, :cond_3

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    if-ne v1, v10, :cond_4

    .line 103
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_4
    if-ne v1, v11, :cond_0

    .line 105
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0c01b7

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView;->webView:Landroid/webkit/WebView;

    .line 58
    const v0, 0x7f0c01b6

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0c01b8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0c01b9

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0c01ba

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
