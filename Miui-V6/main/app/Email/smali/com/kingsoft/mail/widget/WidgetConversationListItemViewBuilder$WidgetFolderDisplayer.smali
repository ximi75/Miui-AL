.class public Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;
.super Lcom/kingsoft/mail/ui/FolderDisplayer;
.source "WidgetConversationListItemViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WidgetFolderDisplayer"
.end annotation


# static fields
.field private static final MAX_DISPLAYED_FOLDERS_COUNT:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/FolderDisplayer;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method


# virtual methods
.method public loadConversationFolders(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/utils/FolderUri;I)V
    .locals 0
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "ignoreFolderUri"    # Lcom/kingsoft/mail/utils/FolderUri;
    .param p3, "ignoreFolderType"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/FolderDisplayer;->loadConversationFolders(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/utils/FolderUri;I)V

    .line 77
    return-void
.end method
