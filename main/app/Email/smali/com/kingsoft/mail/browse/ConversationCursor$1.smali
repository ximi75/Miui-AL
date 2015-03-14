.class Lcom/kingsoft/mail/browse/ConversationCursor$1;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;->undo(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$undoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$1;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$1;->val$undoUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2217
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$1;->val$undoUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->UNDO_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2219
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2222
    :cond_0
    return-void
.end method
