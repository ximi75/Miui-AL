.class Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->onWebContentGeometryChange([Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

.field final synthetic val$overlayBottomStrs:[Ljava/lang/String;

.field final synthetic val$overlayTopStrs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iput-object p4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayTopStrs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayBottomStrs:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1119
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-boolean v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    if-nez v2, :cond_1

    .line 1120
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ignoring webContentGeometryChange because views are gone, %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayTopStrs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayBottomStrs:[Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/ui/ConversationViewFragment;->parsePositions([Ljava/lang/String;[Ljava/lang/String;)[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    invoke-static {v3, v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$900([Ljava/lang/String;[Ljava/lang/String;)[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->onGeometryChange([Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;)V

    .line 1126
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I
    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1000(Lcom/kingsoft/mail/ui/ConversationViewFragment;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationWebView;->getScale()F

    move-result v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationWebView;->getInitialScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1129
    .local v0, "scale":I
    if-le v0, v5, :cond_2

    .line 1130
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I
    invoke-static {v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1000(Lcom/kingsoft/mail/ui/ConversationViewFragment;)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/browse/ConversationWebView;->scrollBy(II)V

    .line 1132
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    const/4 v3, 0x0

    # setter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I
    invoke-static {v2, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1002(Lcom/kingsoft/mail/ui/ConversationViewFragment;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    .end local v0    # "scale":I
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "t":Ljava/lang/Throwable;
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error in MailJsBridge.onWebContentGeometryChange"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
