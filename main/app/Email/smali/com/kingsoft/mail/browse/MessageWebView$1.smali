.class Lcom/kingsoft/mail/browse/MessageWebView$1;
.super Ljava/lang/Object;
.source "MessageWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageWebView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MessageWebView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageWebView$1;->this$0:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView$1;->this$0:Lcom/kingsoft/mail/browse/MessageWebView;

    # invokes: Lcom/kingsoft/mail/browse/MessageWebView;->performSizeChangeDelayed()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->access$000(Lcom/kingsoft/mail/browse/MessageWebView;)V

    .line 55
    return-void
.end method
