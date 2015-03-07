.class Lcom/kingsoft/mail/browse/MessageFooterView$1;
.super Ljava/lang/Object;
.source "MessageFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/MessageFooterView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageFooterView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MessageFooterView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0201e3

    const/4 v7, 0x1

    const v6, 0x7f0201e2

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 100
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->toggleAttachmentBarListVisibility()V

    .line 101
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # invokes: Lcom/kingsoft/mail/browse/MessageFooterView;->toggleShowMoreAttsVisibility()V
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$000(Lcom/kingsoft/mail/browse/MessageFooterView;)V

    .line 103
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$200(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    .local v0, "allAttachmentSaved":Z
    if-eqz v0, :cond_1

    .line 108
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$300(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$200(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    iget v4, v4, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$300(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v0    # "allAttachmentSaved":Z
    :goto_1
    return-void

    .line 112
    .end local v1    # "text":Ljava/lang/String;
    .restart local v0    # "allAttachmentSaved":Z
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$300(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$200(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 120
    .end local v0    # "allAttachmentSaved":Z
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$200(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$300(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    iget v4, v4, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1    # "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$1;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$300(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
