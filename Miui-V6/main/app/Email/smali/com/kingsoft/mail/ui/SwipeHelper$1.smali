.class Lcom/kingsoft/mail/ui/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SwipeHelper;->dismissChild(Lcom/kingsoft/mail/ui/SwipeableItemView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$newPos:F

.field final synthetic val$posX:F


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SwipeHelper;FLandroid/view/View;F)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    iput p2, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$posX:F

    iput-object p3, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$animView:Landroid/view/View;

    iput p4, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$newPos:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v11, -0x1

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 353
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$posX:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$000(Lcom/kingsoft/mail/ui/SwipeHelper;)F

    move-result v0

    cmpl-float v0, v0, v9

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$000(Lcom/kingsoft/mail/ui/SwipeHelper;)F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_5

    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$posX:F

    float-to-double v3, v0

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_MARK_READ_DIMEN:F
    invoke-static {}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$100()F

    move-result v0

    float-to-double v5, v0

    const-wide/high16 v7, 0x3ff8000000000000L

    mul-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-lez v0, :cond_5

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J
    invoke-static {v0, v11, v12}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$202(Lcom/kingsoft/mail/ui/SwipeHelper;J)J

    .line 357
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$400(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    move-result-object v3

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$300(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v4

    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$posX:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->onChildDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;Z)V

    .line 358
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 360
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;
    invoke-static {v0, v10}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$302(Lcom/kingsoft/mail/ui/SwipeHelper;Lcom/kingsoft/mail/ui/SwipeableItemView;)Lcom/kingsoft/mail/ui/SwipeableItemView;

    .line 371
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$500(Lcom/kingsoft/mail/ui/SwipeHelper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 372
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$600(Lcom/kingsoft/mail/ui/SwipeHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 373
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$newPos:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$animView:Landroid/view/View;

    # invokes: Lcom/kingsoft/mail/ui/SwipeHelper;->dismissUnderLayout(Landroid/view/View;)V
    invoke-static {v0, v2}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$700(Lcom/kingsoft/mail/ui/SwipeHelper;Landroid/view/View;)V

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$802(Lcom/kingsoft/mail/ui/SwipeHelper;Z)Z

    .line 377
    return-void

    :cond_4
    move v0, v2

    .line 357
    goto :goto_0

    .line 361
    :cond_5
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$posX:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_6

    .line 362
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$300(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$300(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v3, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J
    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$202(Lcom/kingsoft/mail/ui/SwipeHelper;J)J

    goto :goto_1

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J
    invoke-static {v0, v11, v12}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$202(Lcom/kingsoft/mail/ui/SwipeHelper;J)J

    .line 367
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 368
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$1;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;
    invoke-static {v0, v10}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$302(Lcom/kingsoft/mail/ui/SwipeHelper;Lcom/kingsoft/mail/ui/SwipeableItemView;)Lcom/kingsoft/mail/ui/SwipeableItemView;

    .line 369
    sput-boolean v2, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    goto :goto_1
.end method
