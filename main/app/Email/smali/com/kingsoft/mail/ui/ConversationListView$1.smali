.class Lcom/kingsoft/mail/ui/ConversationListView$1;
.super Ljava/lang/Object;
.source "ConversationListView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListView$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListView;

    # invokes: Lcom/kingsoft/mail/ui/ConversationListView;->triggerSync()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListView;->access$000(Lcom/kingsoft/mail/ui/ConversationListView;)V

    .line 93
    return-void
.end method
