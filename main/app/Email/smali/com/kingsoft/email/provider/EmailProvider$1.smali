.class Lcom/kingsoft/email/provider/EmailProvider$1;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/EmailProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;

.field final synthetic val$oldConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$1;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/kingsoft/email/provider/EmailProvider$1;->val$oldConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$1;->val$oldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1314
    .local v0, "delta":I
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$1;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    const-wide/32 v2, 0x10000000

    # invokes: Lcom/kingsoft/email/provider/EmailProvider;->notifyUIAccount(J)V
    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->access$300(Lcom/kingsoft/email/provider/EmailProvider;J)V

    .line 1318
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method
