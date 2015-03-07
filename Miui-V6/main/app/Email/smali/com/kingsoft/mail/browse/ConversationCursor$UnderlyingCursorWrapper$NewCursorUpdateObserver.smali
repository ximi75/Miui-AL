.class Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;
.super Landroid/database/ContentObserver;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewCursorUpdateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 363
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 364
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$302(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Z)Z

    .line 372
    return-void
.end method
