.class public Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "KingsoftAgentDebugActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;,
        Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;,
        Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;
    }
.end annotation


# static fields
.field public static TEST:Z = false

.field public static final TEST_REPORT_FC:Ljava/lang/String; = "test report fc"


# instance fields
.field mDebugRes:Landroid/widget/TextView;

.field mListView:Landroid/widget/ListView;

.field mParent:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 188
    return-void
.end method

.method private getData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "app \u4fe1\u606f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string/jumbo v1, "\u666e\u901a\u4e8b\u4ef6\u4e0a\u5831"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string/jumbo v1, "\u7528\u6236\u4e8b\u4ef6\u4e0a\u5831(\u9700\u5148\u6dfb\u52a0\u5e10\u53f7)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string/jumbo v1, "fc\u4e0a\u5831(\u9700\u91cd\u542f\u5e94\u7528\uff0c\u5efa\u8bae\u6700\u540e\u6d4b\u8bd5)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v0
.end method

.method public static testEvents(Landroid/content/Context;)V
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 222
    sput-boolean v1, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 223
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->instance(Landroid/content/Context;)Lcom/kingsoft/email/statistics/KingsoftAgent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->flushEvent(Z)V

    .line 224
    return-void
.end method

.method public static testuserEvents(Landroid/content/Context;)V
    .locals 3
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getAllEmailAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    const-string/jumbo v1, "add account first."

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_1
    sput-boolean v2, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 233
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->instance(Landroid/content/Context;)Lcom/kingsoft/email/statistics/KingsoftAgent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->flushUserEvent(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAppinfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "statistics host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mParent:Landroid/widget/FrameLayout;

    .line 40
    const v0, 0x7f0c00b8

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mListView:Landroid/widget/ListView;

    .line 41
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090006

    invoke-direct {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->getData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->getAppinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-static {}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;->newInstance()Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "111"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-static {}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;->newInstance()Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "222"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-static {}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;->newInstance()Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "GettingSetupDataDialog"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mDebugRes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 49
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 55
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 56
    return-void
.end method
