.class Lcom/kingsoft/mail/chat/ChatViewController$3;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 314
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$3;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$3;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->preLoad()V

    .line 318
    return-void
.end method
