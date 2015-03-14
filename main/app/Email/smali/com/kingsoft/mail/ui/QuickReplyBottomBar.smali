.class public Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
.super Landroid/widget/RelativeLayout;
.source "QuickReplyBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;,
        Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;,
        Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;
    }
.end annotation


# instance fields
.field private mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

.field private mContext:Landroid/content/Context;

.field private mIBUpdater:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;

.field private mShowAll:Z

.field private mShowMoreOp:Z

.field public messageEt:Landroid/widget/EditText;

.field public moreIv:Landroid/widget/ImageView;

.field private moreIvListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

.field public moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

.field public replyIv:Landroid/widget/ImageView;

.field private replyLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowMoreOp:Z

    .line 50
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowAll:Z

    .line 61
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->initView(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIvListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Lcom/kingsoft/mail/adapter/BottomBarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    const v0, 0x7f0c020c

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->replyLayout:Landroid/view/View;

    .line 69
    const v0, 0x7f0c01c3

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->replyIv:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0c020f

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->messageEt:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f0c0210

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/QuickReplyGridView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    .line 73
    const v0, 0x7f0c020d

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIv:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->setMoreButton(Landroid/widget/ImageView;)V

    .line 76
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;-><init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowMoreOp:Z

    .line 190
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowAll:Z

    .line 191
    return-void
.end method

.method private updateViewStatus()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->replyLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowMoreOp:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowAll:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->setVisibility(I)V

    .line 186
    return-void

    .line 185
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public fillMoreOption(ZZ)V
    .locals 6
    .param p1, "starred"    # Z
    .param p2, "enableMoveTo"    # Z

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_0
    return-void
.end method

.method public isMoreOpVisiable()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshBottomBarAdapter(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "deal"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;-><init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;IZ)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_0
    return-void
.end method

.method public setBarItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 139
    new-instance v0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;-><init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;IZ)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public setInputBoxHintUpdater(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;)V
    .locals 0
    .param p1, "inputBoxUpdater"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mIBUpdater:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;

    .line 161
    return-void
.end method

.method public setMoreBtnListener(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIvListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    .line 157
    return-void
.end method

.method public setOnMoreOpItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    return-void
.end method

.method public showAll()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->resetStatus()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowAll:Z

    .line 180
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->updateViewStatus()V

    .line 181
    return-void
.end method

.method public showMoreOp()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->resetStatus()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mShowMoreOp:Z

    .line 166
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->updateViewStatus()V

    .line 167
    return-void
.end method

.method public showQuickReply()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mIBUpdater:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mIBUpdater:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;->updateInputBoxHint()V

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->resetStatus()V

    .line 174
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->updateViewStatus()V

    .line 175
    return-void
.end method
