.class public Lcom/kingsoft/mail/browse/EmlMessageLoader;
.super Landroid/content/AsyncTaskLoader;
.source "EmlMessageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mEmlFileUri:Landroid/net/Uri;

.field private mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emlFileUri"    # Landroid/net/Uri;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mEmlFileUri:Landroid/net/Uri;

    .line 49
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 2
    .param p1, "result"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->onReleaseResources(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 115
    .local v0, "oldMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 117
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 126
    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eq v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->onReleaseResources(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lcom/kingsoft/mail/browse/ConversationMessage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->deliverResult(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    return-void
.end method

.method public loadInBackground()Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 17

    .prologue
    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 54
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 58
    .local v10, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mEmlFileUri:Landroid/net/Uri;

    invoke-virtual {v10, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 67
    .local v11, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-direct {v9, v11}, Lcom/kingsoft/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v9, "mimeMessage":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    new-instance v4, Lcom/kingsoft/mail/browse/ConversationMessage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mEmlFileUri:Landroid/net/Uri;

    invoke-direct {v4, v3, v9, v12}, Lcom/kingsoft/mail/browse/ConversationMessage;-><init>(Landroid/content/Context;Lcom/kingsoft/emailcommon/internet/MimeMessage;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .local v4, "convMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    invoke-static {}, Lcom/kingsoft/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 84
    .local v2, "cacheFiles":[Ljava/io/File;
    move-object v1, v2

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, v1, v7

    .line 85
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "body"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 86
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 84
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cacheFiles":[Ljava/io/File;
    .end local v4    # "convMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mimeMessage":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    .end local v11    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 60
    .local v5, "e":Ljava/io/FileNotFoundException;
    sget-object v12, Lcom/kingsoft/mail/browse/EmlMessageLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Could not find eml file at uri: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mEmlFileUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v12, v5, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    const/4 v4, 0x0

    .line 92
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-object v4

    .line 78
    .restart local v4    # "convMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    .restart local v9    # "mimeMessage":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    .restart local v11    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 79
    .local v5, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_1

    .line 69
    .end local v4    # "convMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "mimeMessage":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    :catch_2
    move-exception v5

    .line 70
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v12, Lcom/kingsoft/mail/browse/EmlMessageLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Could not read eml file"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v5, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    const/4 v4, 0x0

    .line 77
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    invoke-static {}, Lcom/kingsoft/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 84
    .restart local v2    # "cacheFiles":[Ljava/io/File;
    move-object v1, v2

    .restart local v1    # "arr$":[Ljava/io/File;
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_1

    aget-object v6, v1, v7

    .line 85
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "body"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 86
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 84
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 78
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cacheFiles":[Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_3
    move-exception v5

    .line 79
    const/4 v4, 0x0

    goto :goto_1

    .line 72
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 73
    .local v5, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_5
    sget-object v12, Lcom/kingsoft/mail/browse/EmlMessageLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Error in parsing eml file"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v5, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    const/4 v4, 0x0

    .line 77
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 83
    invoke-static {}, Lcom/kingsoft/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 84
    .restart local v2    # "cacheFiles":[Ljava/io/File;
    move-object v1, v2

    .restart local v1    # "arr$":[Ljava/io/File;
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v8, :cond_1

    aget-object v6, v1, v7

    .line 85
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "body"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 86
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 84
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 78
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cacheFiles":[Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_5
    move-exception v5

    .line 79
    .local v5, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_1

    .line 76
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 77
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 83
    invoke-static {}, Lcom/kingsoft/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 84
    .restart local v2    # "cacheFiles":[Ljava/io/File;
    move-object v1, v2

    .restart local v1    # "arr$":[Ljava/io/File;
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v8, :cond_5

    aget-object v6, v1, v7

    .line 85
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "body"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 86
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 84
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 78
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cacheFiles":[Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_6
    move-exception v5

    .line 79
    .restart local v5    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 90
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "cacheFiles":[Ljava/io/File;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :cond_5
    throw v12
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->loadInBackground()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 0
    .param p1, "result"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->onReleaseResources(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    .line 168
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lcom/kingsoft/mail/browse/ConversationMessage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->onCanceled(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    return-void
.end method

.method protected onReleaseResources(Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 195
    iget-object v1, p1, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentListUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingsoft/mail/browse/EmlTempFileDeletionService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    iget-object v1, p1, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 178
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->onStopLoading()V

    .line 182
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->onReleaseResources(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 186
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->deliverResult(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageLoader;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-nez v0, :cond_2

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->forceLoad()V

    .line 146
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageLoader;->cancelLoad()Z

    .line 154
    return-void
.end method
