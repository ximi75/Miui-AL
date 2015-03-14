.class public final Lcom/kingsoft/mail/browse/ConversationListFooterView;
.super Landroid/widget/LinearLayout;
.source "ConversationListFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationListFooterView$FooterViewClickListener;
    }
.end annotation


# static fields
.field public static mSearchFinish:Z

.field public static mSearchTotalCount:I

.field private static sNormalBackground:Landroid/graphics/drawable/Drawable;

.field private static sWideBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field public isSearch:Z

.field public isShowFooter:Z

.field private loadingInfoText:Landroid/widget/TextView;

.field private loadmoreArrow:Landroid/widget/ImageView;

.field private mClickListener:Lcom/kingsoft/mail/browse/ConversationListFooterView$FooterViewClickListener;

.field private mController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

.field private mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

.field private mErrorActionButton:Landroid/widget/Button;

.field private mErrorStatus:I

.field private mErrorText:Landroid/widget/TextView;

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field public mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

.field private mLoadFromRemote:Landroid/view/View;

.field private mLoadFromRemoteText:Landroid/widget/TextView;

.field private mLoadMore:Landroid/view/View;

.field private mLoadMoreUri:Landroid/net/Uri;

.field private mLoading:Landroid/view/View;

.field private mNetworkError:Landroid/view/View;

.field private mSearchClickListener:Lcom/kingsoft/mail/browse/ConversationListFooterView$FooterViewClickListener;

.field private mSeartProgressBar:Lmiui/widget/ProgressBar;

.field private totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchTotalCount:I

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchFinish:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->isSearch:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->isShowFooter:Z

    .line 77
    new-instance v0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;-><init>(Lcom/kingsoft/mail/browse/ConversationListFooterView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    .line 78
    return-void
.end method

.method private getBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getNormalBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->sNormalBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 190
    const v0, 0x7f020133

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->getBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->sNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->sNormalBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getWideBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->sWideBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 183
    const v0, 0x7f020133

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->getBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->sWideBackground:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->sWideBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getFooterViewController()Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    return-object v0
.end method

.method public hideAllView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0, v0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setFooterViewVisible(ZZZ)V

    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 108
    .local v0, "id":I
    const v1, 0x7f0c0184

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onErrorActionClick(Landroid/view/View;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const v1, 0x7f0c0187

    if-ne v0, v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onLoadMoreClick(Landroid/view/View;)V

    goto :goto_0

    .line 112
    :cond_2
    const v1, 0x7f0c0188

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onSearchFromRemoteClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    const v0, 0x7f0c0185

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    .line 89
    const v0, 0x7f0c0182

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    .line 90
    const v0, 0x7f0c0187

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    .line 91
    const v0, 0x7f0c0186

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->loadingInfoText:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0c0184

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0c0183

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0c0188

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadFromRemote:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadFromRemote:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0c018a

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadFromRemoteText:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c0189

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSeartProgressBar:Lmiui/widget/ProgressBar;

    .line 102
    const v0, 0x7f0c018b

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->loadmoreArrow:Landroid/widget/ImageView;

    .line 103
    return-void
.end method

.method public setFooterViewBackground(Z)V
    .locals 1
    .param p1, "wideMode"    # Z

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->getNormalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method

.method public setFooterViewVisible(ZZZ)V
    .locals 4
    .param p1, "isLoading"    # Z
    .param p2, "isLoadMore"    # Z
    .param p3, "isLoadFromRemote"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 143
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadFromRemote:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v0, v2

    .line 146
    goto :goto_1

    :cond_2
    move v1, v2

    .line 147
    goto :goto_2
.end method

.method public setLoadingInforText(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->loadingInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    return-void
.end method

.method public setTxtRemoteSearch()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadFromRemoteText:Landroid/widget/TextView;

    const v1, 0x7f10020d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSeartProgressBar:Lmiui/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->loadmoreArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setEnabled(Z)V

    .line 167
    return-void
.end method

.method public setTxtRemoteSearching()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mLoadFromRemoteText:Landroid/widget/TextView;

    const v1, 0x7f100211

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSeartProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationListFooterView;->loadmoreArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setEnabled(Z)V

    .line 160
    return-void
.end method

.method public showLoadFromRemote(Z)V
    .locals 1
    .param p1, "showRemoteSearch"    # Z

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0, v0, p1}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setFooterViewVisible(ZZZ)V

    .line 132
    return-void
.end method

.method public showLoadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setFooterViewVisible(ZZZ)V

    .line 128
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    const v0, 0x7f100337

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setLoadingInforText(I)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setFooterViewVisible(ZZZ)V

    .line 124
    return-void
.end method
