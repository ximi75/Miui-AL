.class public Lcom/kingsoft/mail/ui/LocalContact;
.super Ljava/lang/Object;
.source "LocalContact.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "wmh"

    sput-object v0, Lcom/kingsoft/mail/ui/LocalContact;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/LocalContact;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContactLocal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "from_email"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "data1"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 35
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    const-string/jumbo v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "emailAddress":Ljava/lang/String;
    const-string/jumbo v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 54
    .local v10, "id":J
    new-instance v6, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v6, v9, v12, v10, v11}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    .local v6, "bean":Lcom/kingsoft/email/provider/EmailSmallBean;
    sget-object v1, Lcom/kingsoft/mail/ui/LocalContact;->list:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 56
    sget-object v1, Lcom/kingsoft/mail/ui/LocalContact;->list:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4
    invoke-static {p0, v9, p1}, Lcom/kingsoft/mail/utils/ContactHelper;->isExistByMailHost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    new-instance v1, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v1, v9, v12}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmllBeanOnly(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 69
    .end local v6    # "bean":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v9    # "emailAddress":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 70
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/kingsoft/mail/ui/LocalContact;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Parser contact email failed:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-eqz v7, :cond_0

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 72
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v7, :cond_0

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public static insert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "from_email"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/kingsoft/mail/ui/LocalContact;->getContactLocal(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method
