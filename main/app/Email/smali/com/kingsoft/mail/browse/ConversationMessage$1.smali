.class final Lcom/kingsoft/mail/browse/ConversationMessage$1;
.super Ljava/lang/Object;
.source "ConversationMessage.java"

# interfaces
.implements Lcom/kingsoft/mail/content/CursorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingsoft/mail/content/CursorCreator",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/database/Cursor;)Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 106
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingsoft/mail/browse/ConversationMessage;-><init>(Landroid/database/Cursor;Lcom/kingsoft/mail/browse/ConversationMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationMessage$1;->createFromCursor(Landroid/database/Cursor;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "ConversationMessage CursorCreator"

    return-object v0
.end method
