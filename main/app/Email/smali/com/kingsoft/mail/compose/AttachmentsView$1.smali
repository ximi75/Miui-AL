.class Lcom/kingsoft/mail/compose/AttachmentsView$1;
.super Ljava/lang/Object;
.source "AttachmentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/AttachmentsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/AttachmentsView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/AttachmentsView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AttachmentsView$1;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0201e3

    const v3, 0x7f0201e2

    .line 102
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView$1;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # getter for: Lcom/kingsoft/mail/compose/AttachmentsView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$000(Lcom/kingsoft/mail/compose/AttachmentsView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f0c012e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .local v0, "upDownArrow":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 105
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView$1;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    const/4 v2, 0x1

    # setter for: Lcom/kingsoft/mail/compose/AttachmentsView;->mShowAllAttachments:Z
    invoke-static {v1, v2}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$102(Lcom/kingsoft/mail/compose/AttachmentsView;Z)Z

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView$1;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    # invokes: Lcom/kingsoft/mail/compose/AttachmentsView;->updateAttachmentFooter()V
    invoke-static {v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$200(Lcom/kingsoft/mail/compose/AttachmentsView;)V

    .line 115
    return-void

    .line 109
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v1, p0, Lcom/kingsoft/mail/compose/AttachmentsView$1;->this$0:Lcom/kingsoft/mail/compose/AttachmentsView;

    const/4 v2, 0x0

    # setter for: Lcom/kingsoft/mail/compose/AttachmentsView;->mShowAllAttachments:Z
    invoke-static {v1, v2}, Lcom/kingsoft/mail/compose/AttachmentsView;->access$102(Lcom/kingsoft/mail/compose/AttachmentsView;Z)Z

    goto :goto_0
.end method
