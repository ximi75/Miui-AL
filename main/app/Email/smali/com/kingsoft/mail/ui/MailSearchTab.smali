.class public Lcom/kingsoft/mail/ui/MailSearchTab;
.super Landroid/widget/LinearLayout;
.source "MailSearchTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;
    }
.end annotation


# instance fields
.field private mArrays:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDividerLineWidth:I

.field private mLineViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionChangedListener:Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;

.field private mTabViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    .line 57
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailSearchTab;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    .line 52
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailSearchTab;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    .line 47
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailSearchTab;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/MailSearchTab;)Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailSearchTab;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mSelectionChangedListener:Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mContext:Landroid/content/Context;

    .line 62
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0104

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mDividerLineWidth:I

    .line 63
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mArrays:[Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mArrays:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mArrays:[Ljava/lang/String;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    .local v1, "i":I
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mArrays:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 70
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mArrays:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {p0, v4, v1, v5}, Lcom/kingsoft/mail/ui/MailSearchTab;->addTab(Ljava/lang/String;II)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/MailSearchTab;->setSelect(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;II)V
    .locals 6
    .param p1, "tabName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v5, 0x1

    .line 116
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "child":Landroid/widget/TextView;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 121
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/MailSearchTab;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    if-nez p2, :cond_1

    .line 126
    const v2, 0x7f0201f6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 132
    :goto_0
    new-instance v2, Lcom/kingsoft/mail/ui/MailSearchTab$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/MailSearchTab$1;-><init>(Lcom/kingsoft/mail/ui/MailSearchTab;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    add-int/lit8 v2, p3, -0x1

    if-eq p2, v2, :cond_0

    .line 143
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, "line":Landroid/view/View;
    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailSearchTab;->addView(Landroid/view/View;)V

    .line 146
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v1    # "line":Landroid/view/View;
    :cond_0
    return-void

    .line 127
    :cond_1
    add-int/lit8 v2, p3, -0x1

    if-ne p2, v2, :cond_2

    .line 128
    const v2, 0x7f0201f9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 130
    :cond_2
    const v2, 0x7f0201f3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/MailSearchTab;->setSelect(I)V

    .line 152
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mDividerLineWidth:I

    mul-int/2addr v7, v8

    sub-int v5, v6, v7

    .line 86
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getPaddingBottom()I

    move-result v7

    sub-int v1, v6, v7

    .line 87
    .local v1, "height":I
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 88
    .local v3, "measureCount":I
    if-eqz v3, :cond_0

    .line 92
    div-int v0, v5, v3

    .line 93
    .local v0, "delta":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 94
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 96
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 97
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 103
    if-eqz v3, :cond_0

    .line 107
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    .line 108
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .restart local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mDividerLineWidth:I

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 110
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 111
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mLineViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setSelect(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 155
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 156
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 157
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 160
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mTabViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    return-void
.end method

.method public setTabSelectionListener(Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailSearchTab;->mSelectionChangedListener:Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;

    .line 165
    return-void
.end method
