.class Lcom/kingsoft/ex/chips/RecipientEditTextView$4;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$400(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {v1, p3}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 286
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$500(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->DISMISS:I
    invoke-static {}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$600()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, "delayed":Landroid/os/Message;
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$500(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 290
    return-void
.end method
