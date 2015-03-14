.class Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;
.super Ljava/lang/Object;
.source "AccountSetupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainServerBean"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupList;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupList;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupList;Lcom/kingsoft/email/activity/setup/AccountSetupList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupList;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AccountSetupList$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupList;)V

    return-void
.end method
