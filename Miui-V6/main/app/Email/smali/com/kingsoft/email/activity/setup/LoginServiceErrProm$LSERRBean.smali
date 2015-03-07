.class public Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;
.super Ljava/lang/Object;
.source "LoginServiceErrProm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LSERRBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean$KV;
    }
.end annotation


# instance fields
.field public domain:Ljava/lang/String;

.field public infoHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protocol:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;->this$0:Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;->infoHashMap:Ljava/util/HashMap;

    .line 161
    return-void
.end method
