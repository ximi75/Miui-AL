.class Lcom/kingsoft/mail/browse/ConversationPagerAdapter$1;
.super Lcom/kingsoft/mail/providers/FolderObserver;
.source "ConversationPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$1;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/FolderObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "newFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$1;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method
