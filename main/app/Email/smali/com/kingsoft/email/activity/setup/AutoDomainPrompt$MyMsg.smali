.class Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;
.super Ljava/lang/Object;
.source "AutoDomainPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMsg"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

.field public value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)V

    return-void
.end method
