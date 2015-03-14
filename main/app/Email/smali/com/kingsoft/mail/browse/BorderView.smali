.class public Lcom/kingsoft/mail/browse/BorderView;
.super Landroid/widget/LinearLayout;
.source "BorderView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BorderView"

.field private static sExpandedHeight:I

.field private static sMessageBorderHeightCollapsed:I

.field private static sMessageBorderSpaceHeight:I


# instance fields
.field private mBorderSpace:Landroid/view/View;

.field private mCardBottom:Landroid/view/View;

.field private mCardTop:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    sput v0, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    .line 41
    sput v0, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    .line 42
    sput v0, Lcom/kingsoft/mail/browse/BorderView;->sExpandedHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/BorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/browse/BorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget v1, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    .line 69
    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    .line 72
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public static getCollapsedHeight()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    return v0
.end method

.method public static getExpandedHeight()I
    .locals 3

    .prologue
    .line 118
    sget v0, Lcom/kingsoft/mail/browse/BorderView;->sExpandedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    const-string/jumbo v0, "BorderView"

    const-string/jumbo v1, "full height not initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    :cond_0
    sget v0, Lcom/kingsoft/mail/browse/BorderView;->sExpandedHeight:I

    return v0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;Z)V
    .locals 8
    .param p1, "borderItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    .param p2, "measureOnly"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->isExpanded()Z

    move-result v0

    .line 85
    .local v0, "isExpanded":Z
    sget v2, Lcom/kingsoft/mail/browse/BorderView;->sExpandedHeight:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->isFirstBorder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->isLastBorder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->getHeight()I

    move-result v2

    sput v2, Lcom/kingsoft/mail/browse/BorderView;->sExpandedHeight:I

    .line 89
    const-string/jumbo v2, "BorderView"

    const-string/jumbo v5, "Full Border Height: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/kingsoft/mail/browse/BorderView;->sExpandedHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/browse/BorderView;->mCardBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->isFirstBorder()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/kingsoft/mail/browse/BorderView;->mCardTop:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->isLastBorder()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/kingsoft/mail/browse/BorderView;->mBorderSpace:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 101
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_5

    sget v2, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object v2, p0, Lcom/kingsoft/mail/browse/BorderView;->mBorderSpace:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move v2, v3

    .line 96
    goto :goto_0

    .line 101
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    sget v2, Lcom/kingsoft/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    goto :goto_1
.end method

.method public disableCardBottomBorder()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingsoft/mail/browse/BorderView;->mCardBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public disableCardTopBorder()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/browse/BorderView;->mCardTop:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/BorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/BorderView;->mCardBottom:Landroid/view/View;

    .line 79
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/BorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/BorderView;->mBorderSpace:Landroid/view/View;

    .line 80
    const v0, 0x7f0c00f1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/BorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/BorderView;->mCardTop:Landroid/view/View;

    .line 81
    return-void
.end method
