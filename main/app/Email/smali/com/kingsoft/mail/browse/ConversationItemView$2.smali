.class Lcom/kingsoft/mail/browse/ConversationItemView$2;
.super Ljava/lang/Object;
.source "ConversationItemView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;


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
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemView;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 6

    .prologue
    .line 648
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView$2;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate(IIII)V

    goto :goto_0
.end method
