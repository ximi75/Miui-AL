.class public Lcom/kingsoft/mail/MailLogService;
.super Landroid/app/Service;
.source "MailLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/MailLogService$1;,
        Lcom/kingsoft/mail/MailLogService$CircularBuffer;
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z = false

.field private static final HEADER:Ljava/lang/String; = "**** MailLogService ***\n"

.field protected static final LOG_TAG:Ljava/lang/String;

.field private static final sLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/MailLogService$CircularBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/mail/MailLogService;->DEBUG_ENABLED:Z

    .line 56
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/MailLogService;->LOG_TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/MailLogService;->sLogs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    return-void
.end method

.method private static getOrCreate(Ljava/lang/String;)Lcom/kingsoft/mail/MailLogService$CircularBuffer;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v1, Lcom/kingsoft/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/kingsoft/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/MailLogService$CircularBuffer;

    .line 137
    :goto_0
    return-object v1

    .line 135
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/MailLogService$CircularBuffer;-><init>(Lcom/kingsoft/mail/MailLogService$1;)V

    .line 136
    .local v0, "buffer":Lcom/kingsoft/mail/MailLogService$CircularBuffer;
    sget-object v1, Lcom/kingsoft/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 137
    goto :goto_0
.end method

.method public static isLoggingLevelHighEnough()Z
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/kingsoft/mail/MailLogService;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 155
    sget-boolean v1, Lcom/kingsoft/mail/MailLogService;->DEBUG_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kingsoft/mail/MailLogService;->isLoggingLevelHighEnough()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "logMessage":Ljava/lang/String;
    invoke-static {p0}, Lcom/kingsoft/mail/MailLogService;->getOrCreate(Ljava/lang/String;)Lcom/kingsoft/mail/MailLogService$CircularBuffer;

    move-result-object v1

    # invokes: Lcom/kingsoft/mail/MailLogService$CircularBuffer;->put(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->access$100(Lcom/kingsoft/mail/MailLogService$CircularBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 166
    sget-boolean v2, Lcom/kingsoft/mail/MailLogService;->DEBUG_ENABLED:Z

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string/jumbo v2, "**** MailLogService ***\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/kingsoft/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "Logging for tag: \""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 174
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 175
    const-string/jumbo v2, "\"\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 177
    sget-object v2, Lcom/kingsoft/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/MailLogService$CircularBuffer;

    invoke-virtual {v2}, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 180
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
