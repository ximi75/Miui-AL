.class public Lcom/kingsoft/mail/browse/SuperCollapsedBlock;
.super Landroid/widget/LinearLayout;
.source "SuperCollapsedBlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;
    }
.end annotation


# instance fields
.field private mClick:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

.field private mModel:Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

.field private mSuperCollapsedText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->setActivated(Z)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/SuperCollapsedBlock;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/SuperCollapsedBlock;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mModel:Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/SuperCollapsedBlock;)Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/SuperCollapsedBlock;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mClick:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)V
    .locals 2
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mModel:Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    .line 70
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getEnd()I

    move-result v0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->setCount(I)V

    .line 71
    return-void
.end method

.method public initialize(Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;)V
    .locals 0
    .param p1, "onClick"    # Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mClick:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const v0, 0x7f0c022f

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mClick:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/browse/SuperCollapsedBlock$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock$1;-><init>(Lcom/kingsoft/mail/browse/SuperCollapsedBlock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f0c022f

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mSuperCollapsedText:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public setCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mSuperCollapsedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0019

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
