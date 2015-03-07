.class Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;
.super Ljava/lang/Object;
.source "AnimatedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter$4;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;->this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;->this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;->this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$conv:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;->this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    iget v2, v2, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$position:I

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->delete(Lcom/kingsoft/mail/providers/Conversation;I)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1200(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Conversation;I)V

    .line 673
    return-void
.end method
