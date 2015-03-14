.class Lcom/kingsoft/mail/ui/AbstractActivityController$7;
.super Lcom/kingsoft/mail/utils/ContentProviderTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->doMarkConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
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
    .line 2266
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$7;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Lcom/kingsoft/mail/utils/ContentProviderTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/kingsoft/mail/utils/ContentProviderTask$Result;)V
    .locals 5
    .param p1, "result"    # Lcom/kingsoft/mail/utils/ContentProviderTask$Result;

    .prologue
    const/4 v4, 0x0

    .line 2269
    iget-object v0, p1, Lcom/kingsoft/mail/utils/ContentProviderTask$Result;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 2270
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingsoft/mail/utils/ContentProviderTask$Result;->exception:Ljava/lang/Exception;

    const-string/jumbo v2, "ContentProviderTask() ERROR."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2275
    :goto_0
    return-void

    .line 2272
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ContentProviderTask(): success %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/kingsoft/mail/utils/ContentProviderTask$Result;->results:[Landroid/content/ContentProviderResult;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2266
    check-cast p1, Lcom/kingsoft/mail/utils/ContentProviderTask$Result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$7;->onPostExecute(Lcom/kingsoft/mail/utils/ContentProviderTask$Result;)V

    return-void
.end method
