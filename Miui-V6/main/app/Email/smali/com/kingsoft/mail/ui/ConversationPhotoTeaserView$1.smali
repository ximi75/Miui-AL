.class Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$1;
.super Ljava/lang/Object;
.source "ConversationPhotoTeaserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->dismiss(Z)V

    .line 85
    return-void
.end method
