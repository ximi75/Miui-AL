.class Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;
.super Ljava/lang/Object;
.source "DataBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/DataBaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLog"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isDebug:Z

.field final synthetic this$0:Lcom/kingsoft/email/provider/DataBaseHelper;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/provider/DataBaseHelper;Ljava/lang/String;)V
    .locals 1
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;->this$0:Lcom/kingsoft/email/provider/DataBaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;->TAG:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;->isDebug:Z

    .line 123
    iput-object p2, p0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;->TAG:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    :cond_0
    return-void
.end method
