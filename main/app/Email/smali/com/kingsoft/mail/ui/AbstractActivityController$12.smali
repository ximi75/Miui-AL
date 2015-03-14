.class Lcom/kingsoft/mail/ui/AbstractActivityController$12;
.super Lcom/kingsoft/mail/utils/ContentProviderTask$UpdateTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->starMessage(Lcom/kingsoft/mail/browse/ConversationMessage;Z)V
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
    .line 2512
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$12;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Lcom/kingsoft/mail/utils/ContentProviderTask$UpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/kingsoft/mail/utils/ContentProviderTask$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/kingsoft/mail/utils/ContentProviderTask$Result;

    .prologue
    .line 2516
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2512
    check-cast p1, Lcom/kingsoft/mail/utils/ContentProviderTask$Result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$12;->onPostExecute(Lcom/kingsoft/mail/utils/ContentProviderTask$Result;)V

    return-void
.end method
