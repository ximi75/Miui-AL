.class final Lcom/kingsoft/mail/browse/SendersView$2;
.super Landroid/content/BroadcastReceiver;
.source "SendersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    const/4 v0, 0x0

    # setter for: Lcom/kingsoft/mail/browse/SendersView;->sDraftSingularString:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/SendersView;->access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 117
    const/4 v0, 0x1

    # invokes: Lcom/kingsoft/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V
    invoke-static {p1, v0}, Lcom/kingsoft/mail/browse/SendersView;->access$100(Landroid/content/Context;Z)V

    .line 118
    return-void
.end method
