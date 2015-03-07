.class Lcom/kingsoft/mail/ui/AnimatedAdapter$4$2;
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
    .line 675
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$2;->this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 679
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$2;->this$1:Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1300(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/SwipeableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->snapCurrentView()V

    .line 681
    return-void
.end method
