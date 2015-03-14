.class public Lcom/kingsoft/special/NetEasyHandle;
.super Ljava/lang/Object;
.source "NetEasyHandle.java"


# static fields
.field public static final DURNING_TIMES:I = 0x17d4

.field public static final FINAL_TIME:I = 0x2

.field public static final FIRST_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "  by hua ,you can find it only in debug model : "

.field private static instanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/special/NetEasyHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static netEasyDomainMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/special/NetEasyHandle;->netEasyDomainMap:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/kingsoft/special/NetEasyHandle;->netEasyDomainMap:Ljava/util/ArrayList;

    const-string/jumbo v1, "126.com"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/kingsoft/special/NetEasyHandle;->netEasyDomainMap:Ljava/util/ArrayList;

    const-string/jumbo v1, "163.com"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/kingsoft/special/NetEasyHandle;->netEasyDomainMap:Ljava/util/ArrayList;

    const-string/jumbo v1, "yeah.net"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/kingsoft/special/NetEasyHandle;->netEasyDomainMap:Ljava/util/ArrayList;

    const-string/jumbo v1, "qq.com"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/special/NetEasyHandle;->instanceMap:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/special/NetEasyHandle;->errTimes:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/special/NetEasyHandle;->errTimes:I

    .line 64
    return-void
.end method

.method public static dealWithErr(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "title_info":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 92
    .local v5, "s":Ljava/lang/StackTraceElement;
    const-string/jumbo v8, "\n\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v5    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingsoft/special/NetEasyHandle;->fromNetEasy(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    const-string/jumbo v8, "  by hua ,you can find it only in debug model : "

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  by hua ,you can find it only in debug model : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v8, "  by hua ,you can find it only in debug model : "

    invoke-static {v8, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v8, "  by hua ,you can find it only in debug model : "

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    const-string/jumbo v8, "NE2"

    invoke-static {v8, v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "title_info":Ljava/lang/String;
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromNetEasy(Ljava/lang/String;)Z
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 76
    .end local v0    # "index":I
    :cond_2
    sget-object v2, Lcom/kingsoft/special/NetEasyHandle;->netEasyDomainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/kingsoft/special/NetEasyHandle;
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v2, Lcom/kingsoft/special/NetEasyHandle;->instanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/special/NetEasyHandle;

    .line 47
    .local v1, "bean":Lcom/kingsoft/special/NetEasyHandle;
    if-eqz v1, :cond_0

    .line 52
    .end local v1    # "bean":Lcom/kingsoft/special/NetEasyHandle;
    :goto_0
    return-object v1

    .line 50
    .restart local v1    # "bean":Lcom/kingsoft/special/NetEasyHandle;
    :cond_0
    new-instance v0, Lcom/kingsoft/special/NetEasyHandle;

    invoke-direct {v0}, Lcom/kingsoft/special/NetEasyHandle;-><init>()V

    .line 51
    .local v0, "b":Lcom/kingsoft/special/NetEasyHandle;
    sget-object v2, Lcom/kingsoft/special/NetEasyHandle;->instanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 52
    goto :goto_0
.end method

.method public static removeBean(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/kingsoft/special/NetEasyHandle;->instanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public getTimes()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/kingsoft/special/NetEasyHandle;->errTimes:I

    return v0
.end method

.method public setFirst()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/special/NetEasyHandle;->errTimes:I

    .line 83
    return-void
.end method
