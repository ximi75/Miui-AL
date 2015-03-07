.class Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
.super Ljava/lang/Object;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnderlyingRowData"
.end annotation


# instance fields
.field public conversation:Lcom/kingsoft/mail/providers/Conversation;

.field public final innerUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p1, "innerUri"    # Ljava/lang/String;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->innerUri:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 291
    return-void
.end method
