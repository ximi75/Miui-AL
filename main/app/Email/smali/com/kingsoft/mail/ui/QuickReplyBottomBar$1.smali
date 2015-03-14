.class Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;
.super Ljava/lang/Object;
.source "QuickReplyBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    # getter for: Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->access$000(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->messageEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 82
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->messageEt:Landroid/widget/EditText;

    new-instance v2, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;-><init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
