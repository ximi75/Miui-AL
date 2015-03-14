.class public Lcom/kingsoft/mail/browse/ConversationViewHeader;
.super Landroid/widget/LinearLayout;
.source "ConversationViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;,
        Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

.field private mCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

.field private final mCondensedTextSize:F

.field private final mCondensedTopPadding:I

.field private mFolderDisplayer:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;

.field private mHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

.field private mLargeText:Z

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mLargeText:Z

    .line 92
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCondensedTextSize:F

    .line 95
    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCondensedTopPadding:I

    .line 97
    return-void
.end method

.method private measureHeight()I
    .locals 5

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 177
    .local v1, "parent":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 178
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationViewHeader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to measure height of conversation header"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->getHeight()I

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-static {p0, v1}, Lcom/kingsoft/mail/utils/Utils;->measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 182
    .local v0, "h":I
    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;)V
    .locals 0
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    .line 173
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    const v0, 0x7f0c017c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;->onFoldersClicked()V

    .line 208
    :cond_0
    return-void
.end method

.method public onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 2
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setFolders(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 193
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->measureHeight()I

    move-result v0

    .line 195
    .local v0, "h":I
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;->setHeight(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    invoke-interface {v1, v0}, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;->onConversationViewHeaderHeightChange(I)V

    .line 199
    .end local v0    # "h":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 103
    const v0, 0x7f0c0157

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 117
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mLargeText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCondensedTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCondensedTopPadding:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 131
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 133
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCondensedTopPadding:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setCallbacks(Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/kingsoft/mail/browse/ConversationAccountController;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
    .param p2, "accountController"    # Lcom/kingsoft/mail/browse/ConversationAccountController;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    .line 138
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    .line 139
    return-void
.end method

.method public setFolders(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 169
    return-void
.end method

.method public setFoldersVisible(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 150
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method
