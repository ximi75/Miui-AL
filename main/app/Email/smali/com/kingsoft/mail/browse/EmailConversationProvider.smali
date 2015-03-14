.class public Lcom/kingsoft/mail/browse/EmailConversationProvider;
.super Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;
.source "EmailConversationProvider.java"


# static fields
.field private static final sAuthority:Ljava/lang/String; = "com.android.email2.conversation.provider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "com.android.email2.conversation.provider"

    return-object v0
.end method
