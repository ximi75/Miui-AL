.class Lcom/kingsoft/mail/ui/AbstractActivityController$1;
.super Landroid/database/DataSetObserver;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$1;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 573
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 575
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$1;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$1;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->handleNotificationActions()V

    .line 578
    :cond_0
    return-void
.end method
