.class Lcom/kingsoft/mail/chat/ChatViewAdapter$2;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewAdapter;->fillDataToViewHolder(Lcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;I)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iput p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    iget v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;->onViewClick(I)V

    .line 279
    return-void
.end method
