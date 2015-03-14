.class Lcom/kingsoft/mail/chat/ChatViewController$15;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 1316
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1317
    .local v1, "rt":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1318
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1319
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v0, v3, v4

    .line 1320
    .local v0, "heightDiff":I
    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v4, 0x1

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v3, v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1402(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1324
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 1325
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v4, 0x0

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v3, v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1402(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z

    .line 1326
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 1328
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$15;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
