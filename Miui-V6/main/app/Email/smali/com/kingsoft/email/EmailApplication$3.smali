.class Lcom/kingsoft/email/EmailApplication$3;
.super Ljava/lang/Object;
.source "EmailApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/EmailApplication;->doInbackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/EmailApplication;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/EmailApplication;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kingsoft/email/EmailApplication$3;->this$0:Lcom/kingsoft/email/EmailApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "myDbHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    new-instance v1, Lcom/kingsoft/email/provider/DataBaseHelper;

    .end local v1    # "myDbHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    iget-object v2, p0, Lcom/kingsoft/email/EmailApplication$3;->this$0:Lcom/kingsoft/email/EmailApplication;

    invoke-virtual {v2}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/email/provider/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 286
    .restart local v1    # "myDbHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    :try_start_0
    invoke-virtual {v1}, Lcom/kingsoft/email/provider/DataBaseHelper;->createDataBase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->registNetWorkReceiverForImapPushService(Landroid/content/Context;)V

    .line 293
    iget-object v2, p0, Lcom/kingsoft/email/EmailApplication$3;->this$0:Lcom/kingsoft/email/EmailApplication;

    # invokes: Lcom/kingsoft/email/EmailApplication;->setTime4Syncing()V
    invoke-static {v2}, Lcom/kingsoft/email/EmailApplication;->access$000(Lcom/kingsoft/email/EmailApplication;)V

    .line 294
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Unable to create database exception"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method
