.class Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;
.super Ljava/lang/Object;
.source "ConversationPhotoTeaserView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

.field final synthetic val$arrow:Landroid/widget/ImageView;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$text:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v2

    .line 106
    .local v2, "textTop":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z
    invoke-static {v3}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->access$000(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTextTop:I
    invoke-static {v3}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->access$100(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    # setter for: Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z
    invoke-static {v3, v5}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->access$002(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;Z)Z

    .line 108
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    # setter for: Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTextTop:I
    invoke-static {v3, v2}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->access$102(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;I)I

    .line 110
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 111
    .local v1, "lineHeight":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .local v0, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTextTop:I
    invoke-static {v3}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->access$100(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 114
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v0    # "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lineHeight":I
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    return-void
.end method
