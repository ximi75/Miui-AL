.class Lcom/kingsoft/mail/browse/ConversationContainer$1;
.super Ljava/lang/Object;
.source "ConversationContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationContainer;->onOverlayScrolledOff(ILcom/kingsoft/mail/browse/ConversationContainer$OverlayView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationContainer;

.field final synthetic val$overlay:Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationContainer;Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer$1;->this$0:Lcom/kingsoft/mail/browse/ConversationContainer;

    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationContainer$1;->val$overlay:Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer$1;->this$0:Lcom/kingsoft/mail/browse/ConversationContainer;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer$1;->val$overlay:Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    # invokes: Lcom/kingsoft/mail/browse/ConversationContainer;->detachOverlay(Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationContainer;->access$100(Lcom/kingsoft/mail/browse/ConversationContainer;Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V

    .line 659
    return-void
.end method
