.class public Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;
.super Ljava/lang/Object;
.source "LoginServiceErrProm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;
    }
.end annotation


# static fields
.field private static final EAS_TAG:Ljava/lang/String; = "eas"

.field private static ERR:Ljava/lang/String; = null

.field private static final IMAP_TAG:Ljava/lang/String; = "imap"

.field private static final POP_TAG:Ljava/lang/String; = "pop3"

.field private static final QQ_SER_CLOSE_STRING:Ljava/lang/String; = "http://service.mail.qq.com/cgi-bin/help?subtype=1&&id=28&&no=166 "

.field private static final account_setup_failed_dlg_auth_message:I = 0x1

.field private static final ser_resp_err_map_1or0:I = 0x3

.field private static final ser_resp_err_map_1or0_url:I = 0x4

.field private static final ser_resp_err_map_nouser:I = 0x2

.field private static final ser_resp_err_map_serclosed:I = 0x0

.field private static final ser_resp_err_map_ssl:I = 0x5


# instance fields
.field private alllist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, ""

    sput-object v0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->ERR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    .line 209
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->ERR:Ljava/lang/String;

    .line 212
    return-void
.end method

.method private getPromote(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 87
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->getPromote(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPromote(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f100379

    const v5, 0x7f100378

    const v4, 0x7f100068

    const v3, 0x7f10037a

    .line 91
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 93
    const-string/jumbo v0, ""

    .line 94
    .local v0, "back":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 95
    const-string/jumbo p2, ""

    .line 96
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 145
    .end local v0    # "back":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "back":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 109
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_0

    .line 126
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    goto/16 :goto_0

    .line 137
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10037b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    goto/16 :goto_0

    .line 145
    .end local v0    # "back":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private removeAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 191
    :try_start_0
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 202
    .end local p1    # "info":Ljava/lang/String;
    .local v1, "info":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 194
    .end local v1    # "info":Ljava/lang/String;
    .restart local p1    # "info":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, ""

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 195
    const-string/jumbo v3, "@"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const-string/jumbo v3, "@"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 197
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 199
    .end local p1    # "info":Ljava/lang/String;
    .restart local v1    # "info":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v1    # "info":Ljava/lang/String;
    .restart local p1    # "info":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p1

    .line 202
    .end local p1    # "info":Ljava/lang/String;
    .restart local v1    # "info":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getmessageNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->removeAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "domain"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "protocol"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "info"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {}, Lcom/kingsoft/email/statistics/URLMap;->getSerLoginErrMapUrl()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "strJson":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "value"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, p2, v6}, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->getPromote(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 183
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3    # "strJson":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public getmessagess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->alllist:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 79
    .local v2, "lHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;>;"
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;

    .line 80
    .local v1, "item":Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;
    iget-object v3, v1, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;->infoHashMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "item":Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;
    .end local v2    # "lHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/activity/setup/LoginServiceErrProm$LSERRBean;>;"
    :goto_0
    return-object v3

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    goto :goto_0
.end method
