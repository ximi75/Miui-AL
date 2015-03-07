.class Lcom/kingsoft/mail/browse/MessageFooterView$2;
.super Ljava/lang/Object;
.source "MessageFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/MessageFooterView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Landroid/net/Uri;Z)V
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
    .line 186
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "stop":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$200(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$400(Lcom/kingsoft/mail/browse/MessageFooterView;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachmentsByMsgId(Landroid/content/Context;J)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$500(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageFooterView$2;->this$0:Lcom/kingsoft/mail/browse/MessageFooterView;

    # getter for: Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    invoke-static {v3}, Lcom/kingsoft/mail/browse/MessageFooterView;->access$400(Lcom/kingsoft/mail/browse/MessageFooterView;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachmentsByMsgId(Landroid/app/FragmentManager;Landroid/content/Context;J)V

    goto :goto_0
.end method
