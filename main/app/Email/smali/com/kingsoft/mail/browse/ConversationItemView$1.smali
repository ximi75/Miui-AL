.class Lcom/kingsoft/mail/browse/ConversationItemView$1;
.super Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationItemView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # F
    .param p4, "x2"    # F
    .param p5, "x3"    # J

    .prologue
    .line 614
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-direct/range {p0 .. p6}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;-><init>(Lcom/kingsoft/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V

    return-void
.end method


# virtual methods
.method public invalidateArea()V
    .locals 6

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView$1;->isShowOrHide()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    const/4 v1, 0x0

    .line 625
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;
    invoke-static {v5}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$000(Lcom/kingsoft/mail/browse/ConversationItemView;)Lcom/kingsoft/mail/ui/DividedImageCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 626
    .local v2, "right":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    .line 627
    .local v3, "top":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;
    invoke-static {v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$000(Lcom/kingsoft/mail/browse/ConversationItemView;)Lcom/kingsoft/mail/ui/DividedImageCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 628
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate(IIII)V

    .line 629
    return-void

    .line 623
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    .restart local v1    # "left":I
    goto :goto_0
.end method
