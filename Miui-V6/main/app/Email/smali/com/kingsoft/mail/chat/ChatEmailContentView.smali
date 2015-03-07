.class public Lcom/kingsoft/mail/chat/ChatEmailContentView;
.super Landroid/widget/LinearLayout;
.source "ChatEmailContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/ChatEmailContentView$1;,
        Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;
    }
.end annotation


# static fields
.field private static final TEXTVIEW:I = 0x2

.field private static final WEBVIEW:I = 0x1


# instance fields
.field private mChild:Landroid/view/View;

.field private mContentPaddingLR:I

.field private mContext:Landroid/content/Context;

.field private mEllipsizeText:Lcom/kingsoft/mail/chat/EllipsizeText;

.field private mTouchSlop:I

.field private mWebview:Landroid/webkit/WebView;

.field private viewType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 57
    .local v0, "vg":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mTouchSlop:I

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/chat/ChatEmailContentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatEmailContentView;

    .prologue
    .line 29
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mTouchSlop:I

    return v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0c00ff

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/chat/EllipsizeText;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mEllipsizeText:Lcom/kingsoft/mail/chat/EllipsizeText;

    .line 63
    return-void
.end method

.method private update(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mEllipsizeText:Lcom/kingsoft/mail/chat/EllipsizeText;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mEllipsizeText:Lcom/kingsoft/mail/chat/EllipsizeText;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/EllipsizeText;->setVisibility(I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mWebview:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mEllipsizeText:Lcom/kingsoft/mail/chat/EllipsizeText;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/chat/EllipsizeText;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public build(Z)V
    .locals 5
    .param p1, "viewType"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->setViewType(Z)V

    .line 72
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->initView()V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContentPaddingLR:I

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mEllipsizeText:Lcom/kingsoft/mail/chat/EllipsizeText;

    .line 78
    .local v0, "text":Lcom/kingsoft/mail/chat/EllipsizeText;
    const/high16 v1, 0x40000000

    const v2, 0x3f99999a

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/chat/EllipsizeText;->setLineSpacing(FF)V

    .line 79
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/EllipsizeText;->setMaxLines(I)V

    .line 80
    iget v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContentPaddingLR:I

    iget v2, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContentPaddingLR:I

    iget v3, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContentPaddingLR:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->setPadding(IIII)V

    .line 81
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->update(I)V

    .line 86
    .end local v0    # "text":Lcom/kingsoft/mail/chat/EllipsizeText;
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->setPadding(IIII)V

    .line 84
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->update(I)V

    goto :goto_0
.end method

.method public getEmailContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    return-object v0
.end method

.method public getViewType()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->viewType:Z

    return v0
.end method

.method public getWebview()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    instance-of v1, v1, Lcom/kingsoft/mail/chat/EllipsizeText;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    .line 175
    .local v0, "webview":Landroid/webkit/WebView;
    new-instance v1, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;-><init>(Lcom/kingsoft/mail/chat/ChatEmailContentView;Lcom/kingsoft/mail/chat/ChatEmailContentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 16
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    instance-of v2, v2, Lcom/kingsoft/mail/chat/EllipsizeText;

    if-eqz v2, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    check-cast v14, Lcom/kingsoft/mail/chat/EllipsizeText;

    .line 124
    .local v14, "tv":Lcom/kingsoft/mail/chat/EllipsizeText;
    const/4 v2, 0x5

    invoke-virtual {v14, v2}, Lcom/kingsoft/mail/chat/EllipsizeText;->setMaxLines(I)V

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/kingsoft/mail/chat/EllipsizeText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v14    # "tv":Lcom/kingsoft/mail/chat/EllipsizeText;
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    instance-of v2, v2, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mChild:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    .line 128
    .local v1, "webview":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 130
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 131
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 132
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 134
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 138
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v2

    .line 139
    .local v12, "pixel":F
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    .line 140
    .local v9, "density":F
    float-to-int v15, v12

    .line 141
    .local v15, "widthPixels":I
    const v2, 0x7f0d005e

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L

    add-double/2addr v2, v4

    double-to-int v7, v2

    .line 142
    .local v7, "contentPadding":I
    const v2, 0x7f0d0063

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L

    add-double/2addr v2, v4

    double-to-int v10, v2

    .line 143
    .local v10, "itemPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->getWidth()I

    move-result v2

    if-nez v2, :cond_2

    .line 144
    sub-int v2, v15, v7

    sub-int v8, v2, v10

    .line 148
    .local v8, "contentWidth":I
    :goto_1
    new-instance v11, Lcom/kingsoft/mail/browse/MessageWebViewController;

    const/high16 v2, 0x3f800000

    invoke-direct {v11, v2, v8, v8}, Lcom/kingsoft/mail/browse/MessageWebViewController;-><init>(FII)V

    .line 149
    .local v11, "mController":Lcom/kingsoft/mail/browse/MessageWebViewController;
    if-eqz p1, :cond_0

    .line 150
    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v3, v4}, Lcom/kingsoft/mail/browse/MessageWebViewController;->getHtmlContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "text/html"

    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v8    # "contentWidth":I
    .end local v11    # "mController":Lcom/kingsoft/mail/browse/MessageWebViewController;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->getWidth()I

    move-result v8

    .restart local v8    # "contentWidth":I
    goto :goto_1
.end method

.method public setViewType(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView;->viewType:Z

    .line 104
    return-void
.end method
