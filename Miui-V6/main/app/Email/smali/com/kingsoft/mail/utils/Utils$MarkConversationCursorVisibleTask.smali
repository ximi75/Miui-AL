.class Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkConversationCursorVisibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mIsFirstSeen:Z

.field private final mVisible:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ZZ)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isVisible"    # Z
    .param p3, "isFirstSeen"    # Z

    .prologue
    .line 1291
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1292
    iput-object p1, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mCursor:Landroid/database/Cursor;

    .line 1293
    iput-boolean p2, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mVisible:Z

    .line 1294
    iput-boolean p3, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mIsFirstSeen:Z

    .line 1295
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1277
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 1299
    iget-object v2, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 1310
    :goto_0
    return-object v4

    .line 1302
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .local v1, "request":Landroid/os/Bundle;
    iget-boolean v2, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mIsFirstSeen:Z

    if-eqz v2, :cond_1

    .line 1304
    const-string/jumbo v2, "enteredFolder"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1307
    :cond_1
    const-string/jumbo v0, "setVisibility"

    .line 1308
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "setVisibility"

    iget-boolean v3, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mVisible:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1309
    iget-object v2, p0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v3, "setVisibility"

    # invokes: Lcom/kingsoft/mail/utils/Utils;->executeConversationCursorCommand(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z
    invoke-static {v2, v1, v3}, Lcom/kingsoft/mail/utils/Utils;->access$000(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_0
.end method
