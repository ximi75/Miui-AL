.class Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;
.super Landroid/database/ContentObserver;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 1455
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1456
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->underlyingChanged()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1400(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1463
    return-void
.end method
