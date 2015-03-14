.class Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentClickListener"
.end annotation


# instance fields
.field private mPosition:I

.field private mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;ILcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->mPosition:I

    .line 206
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .line 207
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mEnableLongClick:Z
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$000(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 224
    :goto_0
    return v2

    .line 214
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v0, "globalVisibleRt":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mListViewItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 216
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setSelectItemOnGloableVisibleRt(Landroid/graphics/Rect;)V

    .line 217
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v1, "realRt":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 219
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 220
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 221
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mListViewItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 222
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setSelectItemOnRealRt(Landroid/graphics/Rect;)V

    .line 223
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    iget v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;->mPosition:I

    invoke-interface {v2, p1, v3}, Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;->onViewLongClick(Landroid/view/View;I)V

    .line 224
    const/4 v2, 0x1

    goto :goto_0
.end method
