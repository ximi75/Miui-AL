.class Lcom/kingsoft/mail/ui/TwoPaneLayout$1;
.super Ljava/lang/Object;
.source "TwoPaneLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/TwoPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    # invokes: Lcom/kingsoft/mail/ui/TwoPaneLayout;->onTransitionComplete()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$000(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V

    .line 111
    return-void
.end method
