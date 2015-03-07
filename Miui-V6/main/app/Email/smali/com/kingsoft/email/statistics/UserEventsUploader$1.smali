.class Lcom/kingsoft/email/statistics/UserEventsUploader$1;
.super Ljava/lang/Object;
.source "UserEventsUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/UserEventsUploader;->postEventsToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/UserEventsUploader;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/UserEventsUploader;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingsoft/email/statistics/UserEventsUploader$1;->this$0:Lcom/kingsoft/email/statistics/UserEventsUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 101
    iget-object v0, p0, Lcom/kingsoft/email/statistics/UserEventsUploader$1;->this$0:Lcom/kingsoft/email/statistics/UserEventsUploader;

    # getter for: Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/statistics/UserEventsUploader;->access$000(Lcom/kingsoft/email/statistics/UserEventsUploader;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "test report user event successed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method
