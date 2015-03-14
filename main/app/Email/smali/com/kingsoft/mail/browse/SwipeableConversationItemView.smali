.class public Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
.super Landroid/widget/FrameLayout;
.source "SwipeableConversationItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/kingsoft/mail/browse/ToggleableItem;


# instance fields
.field public final deleteImage:Landroid/view/View;

.field public final mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

.field private final mDeleteMarkView:Landroid/view/View;

.field public final markReadTip:Landroid/widget/TextView;

.field private final redBackgroundView:Landroid/view/View;

.field public final starImage:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mDeleteMarkView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mDeleteMarkView:Landroid/view/View;

    const v1, 0x7f0c016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->redBackgroundView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mDeleteMarkView:Landroid/view/View;

    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->markReadTip:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mDeleteMarkView:Landroid/view/View;

    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->deleteImage:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mDeleteMarkView:Landroid/view/View;

    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->starImage:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;)V
    .locals 17
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p3, "conversationListListener"    # Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;
    .param p4, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .param p5, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p6, "account"    # Ljava/lang/String;
    .param p7, "checkboxOrSenderImage"    # I
    .param p8, "showAttachmentPreviews"    # Z
    .param p9, "parallaxSpeedAlternative"    # Z
    .param p10, "parallaxDirectionAlternative"    # Z
    .param p11, "swipeEnabled"    # Z
    .param p12, "priorityArrowsEnabled"    # Z
    .param p13, "animatedAdapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p14, "conversationItemAreaClickListener"    # Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-virtual/range {v1 .. v16}, Lcom/kingsoft/mail/browse/ConversationItemView;->bind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;Z)V

    .line 93
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getSwipeableItemView()Lcom/kingsoft/mail/browse/ConversationItemView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingsoft/mail/browse/ConversationItemView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 149
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 153
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->reset()V

    .line 70
    return-void
.end method

.method public startCabAnimation(Z)V
    .locals 1
    .param p1, "isEnter"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->enterCab(Z)V

    .line 122
    return-void
.end method

.method public startDeleteAnimation(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p2, "swipe"    # Z

    .prologue
    const/16 v3, 0x8

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->redBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->markReadTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->deleteImage:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->starImage:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mDeleteMarkView:Landroid/view/View;

    invoke-virtual {v1, p2, v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->createDestroyWithSwipeAnimation(ZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 118
    return-void
.end method

.method public startRestoreAnimation(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p2, "enterWindow"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/browse/ConversationItemView;->createRestoreAnimation(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 106
    return-void
.end method

.method public startUndoAnimation(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p2, "swipe"    # Z

    .prologue
    .line 96
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->createSwipeUndoAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/animation/Animator;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 100
    return-void

    .line 96
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->createUndoAnimation()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public toggleSelectedState()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedState()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleSelectedStateOrBeginDrag()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedStateOrBeginDrag()Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
