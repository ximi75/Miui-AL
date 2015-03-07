.class Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;
.super Ljava/lang/Object;
.source "ChatEmailContentView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatEmailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebviewClickListener"
.end annotation


# instance fields
.field private lastX:F

.field private lastY:F

.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatEmailContentView;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/chat/ChatEmailContentView;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatEmailContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/chat/ChatEmailContentView;Lcom/kingsoft/mail/chat/ChatEmailContentView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/chat/ChatEmailContentView;
    .param p2, "x1"    # Lcom/kingsoft/mail/chat/ChatEmailContentView$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;-><init>(Lcom/kingsoft/mail/chat/ChatEmailContentView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 203
    :goto_0
    return v5

    .line 188
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->lastX:F

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->lastY:F

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->lastX:F

    sub-float v0, v2, v3

    .line 193
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->lastY:F

    sub-float v1, v2, v3

    .line 194
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatEmailContentView;

    # getter for: Lcom/kingsoft/mail/chat/ChatEmailContentView;->mTouchSlop:I
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->access$100(Lcom/kingsoft/mail/chat/ChatEmailContentView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatEmailContentView;

    # getter for: Lcom/kingsoft/mail/chat/ChatEmailContentView;->mTouchSlop:I
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->access$100(Lcom/kingsoft/mail/chat/ChatEmailContentView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 195
    :cond_0
    iput v4, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->lastX:F

    .line 196
    iput v4, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->lastY:F

    goto :goto_0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatEmailContentView$WebviewClickListener;->this$0:Lcom/kingsoft/mail/chat/ChatEmailContentView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatEmailContentView;->performClick()Z

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
