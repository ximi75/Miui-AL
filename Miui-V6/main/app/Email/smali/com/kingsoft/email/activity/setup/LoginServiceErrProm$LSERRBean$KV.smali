.class Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean$KV;
.super Ljava/lang/Object;
.source "LoginServiceErrProm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KV"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean$KV;->this$1:Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean$KV;->key:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean$KV;->value:Ljava/lang/String;

    .line 153
    return-void
.end method
