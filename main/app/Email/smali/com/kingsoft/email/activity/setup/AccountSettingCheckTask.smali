.class public Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;
.super Ljava/lang/Object;
.source "AccountSettingCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;,
        Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;,
        Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;
    }
.end annotation


# static fields
.field private static final EAS_TYPE:I

.field private static final sslTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private email:Ljava/lang/String;

.field flowMode:I

.field private isCancel:Z

.field private mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

.field private mCheckAccountResult:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;

.field private mFailSetups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mPool:Ljava/util/concurrent/ExecutorService;

.field mProtocol:I

.field mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field private password:Ljava/lang/String;

.field suggestProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field private taskCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    .line 96
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "protocol"    # I
    .param p4, "provider"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .param p5, "setUp"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancel:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mHandler:Landroid/os/Handler;

    .line 46
    iput v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    .line 50
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->email:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->password:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 53
    iput-object p5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .line 54
    iput p3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProtocol:I

    .line 55
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->flowMode:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mCheckAccountResult:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->password:Ljava/lang/String;

    return-object v0
.end method

.method private excutenossl()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v6, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v5

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 135
    .local v2, "p":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;>;"
    :goto_1
    if-eqz v2, :cond_4

    .line 137
    iget v6, v2, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    iget v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProtocol:I

    if-ne v6, v7, :cond_3

    iget-boolean v6, v2, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->isUsed:Z

    if-nez v6, :cond_3

    .line 138
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->suggestProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v6, :cond_2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->suggestProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 139
    :cond_2
    new-instance v6, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;

    invoke-direct {v6, p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    iget-object v2, v2, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    .line 144
    iget v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    if-eqz v6, :cond_0

    .line 147
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 148
    const/4 v0, 0x1

    .line 149
    .local v0, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;

    .line 150
    .local v3, "task":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 152
    .end local v3    # "task":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 153
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getSSLProvider(Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)Z
    .locals 4
    .param p1, "p"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget v2, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    if-nez v2, :cond_2

    .line 114
    iget v2, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_flag:I

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    const/16 v3, 0x1bb

    if-ne v2, v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    sget-object v2, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    iget v3, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_flag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_5

    sget-object v2, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->sslTag:Ljava/util/ArrayList;

    iget v3, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_flag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_5

    .line 121
    iget v2, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    const/16 v3, 0x3e1

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    const/16 v3, 0x3e3

    if-ne v2, v3, :cond_4

    :cond_3
    iget v2, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    const/16 v3, 0x1d1

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 124
    goto :goto_0

    :cond_5
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method private getTheMaxWeightException()I
    .locals 4

    .prologue
    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;

    .line 247
    .local v0, "fail":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->suggestProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v3, v3, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    .end local v0    # "fail":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 245
    .restart local v0    # "fail":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "fail":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    :goto_2
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private isAllProviderIsUsedbyProt()Z
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 85
    .local v0, "p":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    iget v1, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    iget v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProtocol:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->isUsed:Z

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 92
    :goto_1
    return v1

    .line 89
    :cond_0
    iget-object v0, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setAllProviderNoUserd()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 74
    .local v0, "p":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->isUsed:Z

    .line 76
    iget-object v0, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public excute()Z
    .locals 7

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->setAllProviderNoUserd()V

    .line 158
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v5, :cond_0

    .line 159
    const/4 v5, 0x0

    .line 187
    :goto_0
    return v5

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 163
    .local v2, "p":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;>;"
    :goto_1
    if-eqz v2, :cond_3

    .line 165
    iget v5, v2, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    iget v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mProtocol:I

    if-ne v5, v6, :cond_2

    .line 169
    invoke-direct {p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->getSSLProvider(Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->suggestProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v5, :cond_1

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->suggestProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 171
    :cond_1
    new-instance v5, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;

    invoke-direct {v5, p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    iget-object v2, v2, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    .line 177
    iget v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    if-nez v5, :cond_4

    .line 178
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->excutenossl()Z

    .line 181
    :cond_4
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 182
    const/4 v0, 0x1

    .line 183
    .local v0, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;

    .line 184
    .local v3, "task":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 186
    .end local v3    # "task":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 187
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public notifyUI(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    .locals 2
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p2, "result"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p3, "login_err_msg"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public declared-synchronized onResult(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Ljava/lang/String;)V
    .locals 11
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p2, "result"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p3, "provider"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .param p4, "login_err_msg"    # Ljava/lang/String;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->cancel()V

    .line 207
    invoke-virtual {p0, p1, p2, p4}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->notifyUI(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v0, p3, v1}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->loginFeedBack(Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Ljava/util/ArrayList;)V

    .line 211
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    const-string/jumbo v1, "xieyi"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 213
    .local v9, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 214
    .local v8, "localEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->email:Ljava/lang/String;

    iget-object v1, p3, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 217
    .end local v8    # "localEditor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "settings":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 200
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_3
    :try_start_4
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    .line 222
    iget-object v2, p3, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    .line 223
    .local v2, "providerId":Ljava/lang/String;
    iget v4, p3, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->from:I

    .line 224
    .local v4, "from":I
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/MessagingException;ILjava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isAllProviderIsUsedbyProt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->getTheMaxWeightException()I

    move-result v7

    .line 228
    .local v7, "item_index":I
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;

    iget-object v1, v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->exce:Lcom/kingsoft/emailcommon/mail/MessagingException;

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->errlog:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->notifyUI(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    :try_start_5
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mFailSetups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->loginFeedBack(Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Ljava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 232
    :catch_1
    move-exception v6

    .line 233
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 237
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "item_index":I
    :cond_4
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->taskCount:I

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->excutenossl()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public setCheckAccountResult(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;)V
    .locals 0
    .param p1, "result"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mCheckAccountResult:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;

    .line 44
    return-void
.end method
