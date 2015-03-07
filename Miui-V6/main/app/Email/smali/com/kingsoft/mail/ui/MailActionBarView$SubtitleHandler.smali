.class final Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;
.super Landroid/os/Handler;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubtitleHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMAIL:I


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-class v0, Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 223
    sget-boolean v1, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 224
    :cond_0
    const-string/jumbo v0, ""

    .line 225
    .local v0, "subtitleText":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$000(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$000(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v0, v1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    const-string/jumbo v0, ""

    .line 240
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 242
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # invokes: Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$100(Lcom/kingsoft/mail/ui/MailActionBarView;Ljava/lang/CharSequence;)V

    .line 244
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 245
    return-void

    .line 235
    :cond_3
    const/4 v0, 0x0

    .line 236
    sget-object v1, Lcom/kingsoft/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "MABV.handleMessage() has a null account!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
