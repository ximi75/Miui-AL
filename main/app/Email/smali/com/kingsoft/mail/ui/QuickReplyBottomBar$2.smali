.class Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;
.super Ljava/lang/Object;
.source "QuickReplyBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->refreshBottomBarAdapter(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

.field final synthetic val$deal:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;IZ)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iput p2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;->val$position:I

    iput-boolean p3, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;->val$deal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    # getter for: Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->mBottomBarAdapter:Lcom/kingsoft/mail/adapter/BottomBarAdapter;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->access$200(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;->val$position:I

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$2;->val$deal:Z

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->refresh(IZ)V

    .line 126
    return-void
.end method
