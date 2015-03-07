.class public Lcom/kingsoft/email/EmailApplication;
.super Lmiui/external/ApplicationDelegate;
.source "EmailApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/EmailApplication$BodyObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static fragmentInAttachmentCount:Ljava/lang/Integer;

.field private static instance:Lcom/kingsoft/email/EmailApplication;

.field public static isChangeAccountType:Z

.field public static mEasFlowSaved:J

.field public static mEasSyncedMessageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

.field public static mFlowSaved:J

.field public static mSyncedMessageCount:I


# instance fields
.field private mBodyObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/EmailApplication$BodyObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mConversationActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

.field public mHandler:Landroid/os/Handler;

.field private msgBodyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    sput-boolean v1, Lcom/kingsoft/email/EmailApplication;->isChangeAccountType:Z

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/EmailApplication;->instance:Lcom/kingsoft/email/EmailApplication;

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    .line 85
    const-string/jumbo v0, "Email"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/LogTag;->setLogTag(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/kingsoft/email/EmailApplication$1;

    invoke-direct {v0}, Lcom/kingsoft/email/EmailApplication$1;-><init>()V

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder;->setPreferenceMigratorCreator(Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;)V

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kingsoft/email/EmailApplication;->mEasSyncedMessageSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mHandler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mConversationActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/EmailApplication;->msgBodyMap:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mBodyObserverList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/EmailApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/EmailApplication;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kingsoft/email/EmailApplication;->setTime4Syncing()V

    return-void
.end method

.method public static clearFlowSavedInfo()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 104
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/email/EmailApplication;->mSyncedMessageCount:I

    .line 105
    sput-wide v1, Lcom/kingsoft/email/EmailApplication;->mFlowSaved:J

    .line 107
    sput-wide v1, Lcom/kingsoft/email/EmailApplication;->mEasFlowSaved:J

    .line 108
    sget-object v0, Lcom/kingsoft/email/EmailApplication;->mEasSyncedMessageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 109
    return-void
.end method

.method public static getConnectManager()Lcom/kingsoft/email/EmailConnectivityManager;
    .locals 3

    .prologue
    .line 246
    sget-object v1, Lcom/kingsoft/email/EmailApplication;->mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

    if-nez v1, :cond_0

    .line 247
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/kingsoft/email/EmailConnectivityManager;

    const-string/jumbo v2, "EmailApplication"

    invoke-direct {v1, v0, v2}, Lcom/kingsoft/email/EmailConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/kingsoft/email/EmailApplication;->mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

    .line 250
    :cond_0
    sget-object v1, Lcom/kingsoft/email/EmailApplication;->mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

    return-object v1
.end method

.method public static getInstance()Lcom/kingsoft/email/EmailApplication;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/kingsoft/email/EmailApplication;->instance:Lcom/kingsoft/email/EmailApplication;

    return-object v0
.end method

.method private setTime4Syncing()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 255
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/EmailApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 256
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v2, "action.userevent.upload"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v7, "broadcastIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 261
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 263
    .local v10, "now":J
    invoke-virtual {p0}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;->getLastSyncTime(Landroid/content/Context;)J

    move-result-wide v8

    .line 265
    .local v8, "lastSyncTime":J
    const-wide/32 v4, 0x5265c00

    .line 266
    .local v4, "oneDay":J
    cmp-long v2, v8, v10

    if-gtz v2, :cond_0

    sub-long v2, v10, v4

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    add-long v2, v10, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_1
    add-long v2, v8, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public clearBody()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->msgBodyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    return-void
.end method

.method public clearBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->msgBodyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public containsBody(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->msgBodyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public doInbackground()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/EmailApplication$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/EmailApplication$3;-><init>(Lcom/kingsoft/email/EmailApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method

.method public getBody(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->msgBodyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConversationActionBarView()Lcom/kingsoft/mail/ui/MailActionBarView;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mConversationActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    return-object v0
.end method

.method public isRunningForeground()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    move-object v0, v5

    check-cast v0, Landroid/app/ActivityManager;

    .line 231
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    .line 234
    .local v4, "topActivityClassName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 235
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 236
    .local v1, "f":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 238
    .end local v1    # "f":Landroid/content/ComponentName;
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 242
    :goto_0
    return v5

    :cond_1
    move v5, v7

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 205
    sput-object p0, Lcom/kingsoft/email/EmailApplication;->instance:Lcom/kingsoft/email/EmailApplication;

    .line 206
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->instance(Landroid/content/Context;)Lcom/kingsoft/email/statistics/KingsoftAgent;

    move-result-object v0

    .line 207
    .local v0, "agent":Lcom/kingsoft/email/statistics/KingsoftAgent;
    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->init()V

    .line 208
    invoke-virtual {p0}, Lcom/kingsoft/email/EmailApplication;->doInbackground()V

    .line 209
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    .line 162
    sget-object v0, Lcom/kingsoft/email/EmailApplication;->mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/kingsoft/email/EmailApplication;->mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/kingsoft/email/EmailConnectivityManager;->unregister()V

    .line 164
    sget-object v0, Lcom/kingsoft/email/EmailApplication;->mEmailConnectManager:Lcom/kingsoft/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/kingsoft/email/EmailConnectivityManager;->stopWait()V

    .line 166
    :cond_0
    return-void
.end method

.method public putBody(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v3, p0, Lcom/kingsoft/email/EmailApplication;->mBodyObserverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/EmailApplication$BodyObserver;

    .line 122
    .local v0, "bo":Lcom/kingsoft/email/EmailApplication$BodyObserver;
    invoke-interface {v0}, Lcom/kingsoft/email/EmailApplication$BodyObserver;->getMessageKey()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "msgKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/kingsoft/email/EmailApplication;->msgBodyMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {v0}, Lcom/kingsoft/email/EmailApplication$BodyObserver;->notifyChange()V

    .line 129
    .end local v0    # "bo":Lcom/kingsoft/email/EmailApplication$BodyObserver;
    .end local v2    # "msgKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public registerBodyObserver(Lcom/kingsoft/email/EmailApplication$BodyObserver;)V
    .locals 1
    .param p1, "bo"    # Lcom/kingsoft/email/EmailApplication$BodyObserver;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mBodyObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mBodyObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    return-void
.end method

.method public setApplicationIconNumber(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 173
    invoke-static {}, Lcom/kingsoft/email/provider/Utilities;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/EmailApplication$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/EmailApplication$2;-><init>(Lcom/kingsoft/email/EmailApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setConversationActionBarView(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 0
    .param p1, "view"    # Lcom/kingsoft/mail/ui/MailActionBarView;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kingsoft/email/EmailApplication;->mConversationActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    .line 216
    return-void
.end method

.method public unRegisterBodyObserver(Lcom/kingsoft/email/EmailApplication$BodyObserver;)V
    .locals 1
    .param p1, "bo"    # Lcom/kingsoft/email/EmailApplication$BodyObserver;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mBodyObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingsoft/email/EmailApplication;->mBodyObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    return-void
.end method
