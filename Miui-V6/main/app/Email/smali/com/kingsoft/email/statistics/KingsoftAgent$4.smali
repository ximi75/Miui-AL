.class Lcom/kingsoft/email/statistics/KingsoftAgent$4;
.super Ljava/lang/Object;
.source "KingsoftAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgent;->postServerException(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/KingsoftAgent;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$4;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 208
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$4;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # getter for: Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$100(Lcom/kingsoft/email/statistics/KingsoftAgent;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "test report fc successed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    return-void
.end method
