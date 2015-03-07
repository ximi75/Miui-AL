.class Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;
.super Ljava/lang/Object;
.source "QuickReplyBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setBarItemEnabled(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

.field final synthetic val$enabled:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;IZ)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iput p2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->val$position:I

    iput-boolean p3, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    iget v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->val$position:I

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "barItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    const v1, 0x7f0c00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->val$enabled:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    const v1, 0x7f0c00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$3;->val$enabled:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
