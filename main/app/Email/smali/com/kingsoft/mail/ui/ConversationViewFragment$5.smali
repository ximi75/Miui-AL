.class Lcom/kingsoft/mail/ui/ConversationViewFragment$5;
.super Landroid/webkit/WebChromeClient;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const/4 v5, 0x1

    .line 373
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "JS: %s (%s:%d) f=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 376
    return v5
.end method
