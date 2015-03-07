.class public Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;
.super Ljava/lang/Object;
.source "AttachmentManagerUtilities.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$RarPasswordFragment;,
        Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;
    }
.end annotation


# static fields
.field public static final ENCODING_GBK:Ljava/lang/String; = "GBK"

.field public static final ENCODING_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final UNZIP_FOLDER_NAME:Ljava/lang/String; = "wpsemail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static buildFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "target":Ljava/io/File;
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "target":Ljava/io/File;
    .local v1, "target":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "target":Ljava/io/File;
    .restart local v0    # "target":Ljava/io/File;
    goto :goto_0
.end method

.method public static buildSendFile(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 777
    const-string/jumbo v2, "*/*"

    .line 779
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-object v1

    .line 783
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 784
    .local v3, "mimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 786
    .local v4, "mtm":Landroid/webkit/MimeTypeMap;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 787
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 791
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v5, :cond_3

    .line 792
    .local v5, "multiple":Z
    :goto_2
    new-instance v1, Landroid/content/Intent;

    if-eqz v5, :cond_4

    const-string/jumbo v8, "android.intent.action.SEND_MULTIPLE"

    :goto_3
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_5

    .line 796
    const-string/jumbo v7, "*/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "multiple":Z
    :cond_3
    move v5, v7

    .line 791
    goto :goto_2

    .line 792
    .restart local v5    # "multiple":Z
    :cond_4
    const-string/jumbo v8, "android.intent.action.SEND"

    goto :goto_3

    .line 799
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string/jumbo v8, "android.intent.extra.STREAM"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createConversationItemView(Lcom/kingsoft/mail/browse/ConversationItemView;Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;)Landroid/view/View;
    .locals 17
    .param p0, "view"    # Lcom/kingsoft/mail/browse/ConversationItemView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "mFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p4, "mAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 845
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-direct {v5}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;-><init>()V

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static/range {p4 .. p4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getAttachmentPreviewsSetting(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getParallaxSpeedAlternativeSetting(Landroid/content/Context;)Z

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getParallaxDirectionAlternativeSetting(Landroid/content/Context;)Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v16}, Lcom/kingsoft/mail/browse/ConversationItemView;->bind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;Z)V

    .line 851
    return-object p0
.end method

.method private static detectCharSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "GBK"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "UTF-8"

    aput-object v9, v2, v8

    .line 130
    .local v2, "charsets":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 131
    .local v1, "charset":Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :try_start_0
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v7, p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v6    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .local v7, "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    if-eqz v7, :cond_0

    .line 135
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :cond_0
    const/4 v6, 0x0

    .line 146
    .end local v1    # "charset":Ljava/lang/String;
    .end local v7    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :goto_1
    return-object v1

    .line 137
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v6    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    const/4 v6, 0x0

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    const/4 v6, 0x0

    throw v8

    .line 146
    .end local v1    # "charset":Ljava/lang/String;
    .end local v6    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_1
    const-string/jumbo v1, "GBK"

    goto :goto_1

    .line 141
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v7    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v6    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_3

    .line 137
    .end local v6    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v7    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v6    # "zf":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_2
.end method

.method public static drawMail(Landroid/content/Context;Landroid/view/ViewGroup;III)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailContent"    # Landroid/view/ViewGroup;
    .param p2, "mAttMailboxKey"    # I
    .param p3, "mAttAccountKey"    # I
    .param p4, "mAttMessageKey"    # I

    .prologue
    .line 808
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    int-to-long v5, p2

    invoke-static {p0, v5, v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    .line 814
    .local v3, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v3, :cond_0

    .line 818
    int-to-long v5, p3

    invoke-static {p0, v5, v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 820
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_0

    .line 825
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v3, v5, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Integer;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v4

    .line 827
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 831
    new-instance v2, Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;)V

    .line 833
    .local v2, "convertView":Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v3, v5, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getViewConversation(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Integer;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v5

    invoke-static {v2, p0, v5, v3, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->createConversationItemView(Lcom/kingsoft/mail/browse/ConversationItemView;Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;)Landroid/view/View;

    move-result-object v1

    .line 837
    .local v1, "conversationItemView":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 838
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getAttachmentPreviewsSetting(Lcom/kingsoft/mail/providers/Account;)Z
    .locals 1
    .param p0, "mAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 855
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v0, v0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMappedAppStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 888
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 894
    .local v1, "externalFileDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 898
    .end local v1    # "externalFileDir":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getMappedAppStorageDirectoryPerAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 870
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 875
    const-string/jumbo v4, ""

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 876
    .local v2, "externalFileDir":Ljava/io/File;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 883
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "externalFileDir":Ljava/io/File;
    .local v1, "directory":Ljava/io/File;
    :goto_0
    return-object v1

    .line 879
    .end local v1    # "directory":Ljava/io/File;
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "externalFileDir":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .end local v2    # "externalFileDir":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 883
    .end local v0    # "directory":Ljava/io/File;
    .restart local v1    # "directory":Ljava/io/File;
    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "subfix"    # Ljava/lang/String;

    .prologue
    .line 754
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    const/4 v0, 0x0

    .line 773
    :cond_0
    :goto_0
    return-object v0

    .line 757
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "postfix":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    const-string/jumbo v2, "gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    const-string/jumbo v0, "application/x-gzip"

    goto :goto_0

    .line 765
    :cond_2
    const-string/jumbo v2, "bz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    const-string/jumbo v0, "application/x-bzip"

    goto :goto_0

    .line 767
    :cond_3
    const-string/jumbo v2, "bz2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 768
    const-string/jumbo v0, "application/x-bzip2"

    goto :goto_0

    .line 769
    :cond_4
    const-string/jumbo v2, "java|php|c|cpp|xml|py|log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    const-string/jumbo v0, "text/plain"

    goto :goto_0
.end method

.method private static getParallaxDirectionAlternativeSetting(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 863
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getParallaxDirectionAlternative()Z

    move-result v0

    return v0
.end method

.method private static getParallaxSpeedAlternativeSetting(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 859
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getParallaxSpeedAlternative()Z

    move-result v0

    return v0
.end method

.method public static getRarFileInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v9, 0x0

    .line 230
    .local v9, "arc":Lde/innosystec/unrar/Archive;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v13, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    :try_start_0
    new-instance v10, Lde/innosystec/unrar/Archive;

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v10, v0, v1, v2}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v9    # "arc":Lde/innosystec/unrar/Archive;
    .local v10, "arc":Lde/innosystec/unrar/Archive;
    :try_start_1
    sget-object v20, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 238
    .local v19, "unzipPathBase":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "wpsemail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, "directoryPath":Ljava/lang/String;
    invoke-virtual {v10}, Lde/innosystec/unrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v17

    .line 243
    .local v17, "lstFileHeader":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    if-eqz v17, :cond_6

    .line 244
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lde/innosystec/unrar/rarfile/FileHeader;

    .line 245
    .local v15, "fileHeader":Lde/innosystec/unrar/rarfile/FileHeader;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "wpsemail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 247
    invoke-virtual {v15}, Lde/innosystec/unrar/rarfile/FileHeader;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_0

    .line 250
    invoke-virtual {v15}, Lde/innosystec/unrar/rarfile/FileHeader;->getDataSize()I

    move-result v20

    if-lez v20, :cond_0

    .line 251
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 255
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 258
    :cond_2
    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 260
    .local v18, "startIdx":I
    const-string/jumbo v20, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 261
    .local v12, "endIdx":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_3

    .line 262
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 264
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v15}, Lde/innosystec/unrar/rarfile/FileHeader;->getDataSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v7, v0

    .line 269
    .local v7, "size":J
    invoke-virtual {v15}, Lde/innosystec/unrar/rarfile/FileHeader;->getMTime()Ljava/util/Date;

    move-result-object v6

    .line 270
    .local v6, "date":Ljava/util/Date;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "mimeType":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 273
    const-string/jumbo v4, ""

    .line 275
    :cond_4
    new-instance v3, Lcom/kingsoft/email/mail/attachment/FileInfo;

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/mail/attachment/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    .line 276
    .local v3, "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 280
    .end local v3    # "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "date":Ljava/util/Date;
    .end local v7    # "size":J
    .end local v11    # "directoryPath":Ljava/lang/String;
    .end local v12    # "endIdx":I
    .end local v15    # "fileHeader":Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "lstFileHeader":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    .end local v18    # "startIdx":I
    .end local v19    # "unzipPathBase":Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v9, v10

    .line 281
    .end local v10    # "arc":Lde/innosystec/unrar/Archive;
    .restart local v9    # "arc":Lde/innosystec/unrar/Archive;
    .local v14, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    :goto_2
    if-eqz v9, :cond_5

    .line 284
    invoke-virtual {v9}, Lde/innosystec/unrar/Archive;->close()V

    :cond_5
    throw v20

    .line 283
    .end local v9    # "arc":Lde/innosystec/unrar/Archive;
    .restart local v10    # "arc":Lde/innosystec/unrar/Archive;
    .restart local v11    # "directoryPath":Ljava/lang/String;
    .restart local v17    # "lstFileHeader":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    .restart local v19    # "unzipPathBase":Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_7

    .line 284
    invoke-virtual {v10}, Lde/innosystec/unrar/Archive;->close()V

    .line 287
    :cond_7
    return-object v13

    .line 283
    .end local v11    # "directoryPath":Ljava/lang/String;
    .end local v17    # "lstFileHeader":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    .end local v19    # "unzipPathBase":Ljava/lang/String;
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10    # "arc":Lde/innosystec/unrar/Archive;
    .restart local v9    # "arc":Lde/innosystec/unrar/Archive;
    goto :goto_2

    .line 280
    :catch_1
    move-exception v14

    goto :goto_1
.end method

.method public static getZipFileDetails(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v5, 0x0

    .line 88
    .local v5, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    const-string/jumbo v7, "GBK"

    invoke-direct {v6, p1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .local v6, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :try_start_1
    const-string/jumbo v0, ""

    .line 95
    .local v0, "directoryPath":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v2

    .line 97
    .local v2, "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v2, :cond_3

    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 101
    .restart local v4    # "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string/jumbo v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 113
    .end local v0    # "directoryPath":Ljava/lang/String;
    .end local v2    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v4    # "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 114
    .end local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .local v3, "ex":Ljava/io/IOException;
    .restart local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :goto_1
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V

    .line 118
    const/4 v5, 0x0

    :cond_2
    throw v7

    .line 116
    .end local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v0    # "directoryPath":Ljava/lang/String;
    .restart local v2    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_3
    if-eqz v6, :cond_4

    .line 117
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V

    .line 118
    const/4 v5, 0x0

    .line 121
    .end local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :goto_3
    return-object v1

    .line 116
    .end local v0    # "directoryPath":Ljava/lang/String;
    .end local v2    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_2

    .line 113
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v0    # "directoryPath":Ljava/lang/String;
    .restart local v2    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_4
    move-object v5, v6

    .end local v6    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_3
.end method

.method public static getZipFileInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/16 v17, 0x0

    .line 153
    .local v17, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v11, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "charset":Ljava/lang/String;
    new-instance v18, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .local v18, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :try_start_1
    sget-object v19, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, "unzipPathBase":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "wpsemail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, "directoryPath":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v12

    .line 168
    .local v12, "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v12, :cond_6

    .line 169
    const/16 v16, 0x0

    .line 170
    .local v16, "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 171
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    check-cast v16, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 172
    .restart local v16    # "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "wpsemail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_0

    .line 184
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_0

    .line 185
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 189
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 192
    :cond_2
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 194
    .local v14, "startIdx":I
    const-string/jumbo v19, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 195
    .local v10, "endIdx":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_3

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 199
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    .line 203
    .local v6, "size":J
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    .line 204
    .local v5, "date":Ljava/util/Date;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "mimeType":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 207
    const-string/jumbo v3, ""

    .line 209
    :cond_4
    new-instance v2, Lcom/kingsoft/email/mail/attachment/FileInfo;

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/email/mail/attachment/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    .line 210
    .local v2, "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 214
    .end local v2    # "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "size":J
    .end local v9    # "directoryPath":Ljava/lang/String;
    .end local v10    # "endIdx":I
    .end local v12    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v14    # "startIdx":I
    .end local v15    # "unzipPathBase":Ljava/lang/String;
    .end local v16    # "zipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :catch_0
    move-exception v13

    move-object/from16 v17, v18

    .line 215
    .end local v8    # "charset":Ljava/lang/String;
    .end local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .local v13, "ex":Ljava/io/IOException;
    .restart local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :goto_1
    :try_start_2
    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v13    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_2
    if-eqz v17, :cond_5

    .line 218
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V

    .line 219
    const/16 v17, 0x0

    :cond_5
    throw v19

    .line 217
    .end local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v8    # "charset":Ljava/lang/String;
    .restart local v9    # "directoryPath":Ljava/lang/String;
    .restart local v12    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v15    # "unzipPathBase":Ljava/lang/String;
    .restart local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_6
    if-eqz v18, :cond_7

    .line 218
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V

    .line 219
    const/16 v17, 0x0

    .line 222
    .end local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :goto_3
    return-object v11

    .line 217
    .end local v9    # "directoryPath":Ljava/lang/String;
    .end local v12    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v15    # "unzipPathBase":Ljava/lang/String;
    .end local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_1
    move-exception v19

    move-object/from16 v17, v18

    .end local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_2

    .line 214
    .end local v8    # "charset":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto :goto_1

    .end local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v8    # "charset":Ljava/lang/String;
    .restart local v9    # "directoryPath":Ljava/lang/String;
    .restart local v12    # "entryEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v15    # "unzipPathBase":Ljava/lang/String;
    .restart local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_7
    move-object/from16 v17, v18

    .end local v18    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v17    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_3
.end method

.method private static isEncrypted(Lde/innosystec/unrar/Archive;)Z
    .locals 4
    .param p0, "archive"    # Lde/innosystec/unrar/Archive;

    .prologue
    .line 744
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    .line 745
    .local v2, "lstFileHeader":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    .line 746
    .local v0, "fileHeader":Lde/innosystec/unrar/rarfile/FileHeader;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    const/4 v3, 0x1

    .line 750
    .end local v0    # "fileHeader":Lde/innosystec/unrar/rarfile/FileHeader;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static unRarAndOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "fi"    # Lcom/kingsoft/email/mail/attachment/FileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, "archive":Lde/innosystec/unrar/Archive;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "unzipPathBase":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wpsemail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "dirPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 703
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    .line 705
    :cond_0
    const/4 v2, 0x0

    .line 706
    .local v2, "cachedPassword":Ljava/lang/String;
    instance-of v6, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    if-eqz v6, :cond_1

    move-object v6, p0

    .line 707
    check-cast v6, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v6}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->readPassword()Ljava/lang/String;

    move-result-object v2

    .line 711
    :cond_1
    :try_start_0
    new-instance v1, Lde/innosystec/unrar/Archive;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {v1, v6, v7, v8}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 712
    .end local v0    # "archive":Lde/innosystec/unrar/Archive;
    .local v1, "archive":Lde/innosystec/unrar/Archive;
    :try_start_1
    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->isEncrypted()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->isEncrypted(Lde/innosystec/unrar/Archive;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 722
    :cond_2
    new-instance v6, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$4;

    invoke-direct {v6, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    move-object v0, v1

    .line 740
    .end local v1    # "archive":Lde/innosystec/unrar/Archive;
    .restart local v0    # "archive":Lde/innosystec/unrar/Archive;
    :goto_1
    return-object v9

    .line 733
    .end local v0    # "archive":Lde/innosystec/unrar/Archive;
    .restart local v1    # "archive":Lde/innosystec/unrar/Archive;
    :cond_3
    invoke-static {p0, v1, p1, p2, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unRarAndOpenFile(Landroid/content/Context;Lde/innosystec/unrar/Archive;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 737
    .end local v1    # "archive":Lde/innosystec/unrar/Archive;
    .restart local v0    # "archive":Lde/innosystec/unrar/Archive;
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 736
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static unRarAndOpenFile(Landroid/content/Context;Lde/innosystec/unrar/Archive;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "archive"    # Lde/innosystec/unrar/Archive;
    .param p2, "zippedFileName"    # Ljava/lang/String;
    .param p3, "targetFileName"    # Ljava/lang/String;
    .param p4, "fileInfo"    # Lcom/kingsoft/email/mail/attachment/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 409
    .local v13, "unzipPathBase":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "wpsemail"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "dirPath":Ljava/lang/String;
    new-instance v11, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;

    invoke-direct {v11}, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;-><init>()V

    .line 412
    .local v11, "strategy":Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->delete(Ljava/io/File;)I

    .line 414
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 415
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    .line 418
    :cond_0
    const-string/jumbo v5, ""

    .line 419
    .local v5, "directoryPath":Ljava/lang/String;
    if-eqz p3, :cond_1

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 420
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const-string/jumbo v18, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    :goto_0
    const/4 v10, 0x0

    .line 430
    .local v10, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    .line 431
    .local v3, "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/innosystec/unrar/rarfile/FileHeader;

    .line 432
    .local v7, "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    if-eqz v7, :cond_2

    .line 433
    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/FileHeader;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_2

    .line 435
    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    .line 436
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, "unzippedFileName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 444
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v12

    .line 446
    .local v12, "targetFile":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedOutputStream;

    .end local v10    # "os":Ljava/io/OutputStream;
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 449
    .restart local v10    # "os":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 471
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 425
    .end local v3    # "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    .end local v7    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "os":Ljava/io/OutputStream;
    .end local v12    # "targetFile":Ljava/io/File;
    .end local v14    # "unzippedFileName":Ljava/lang/String;
    :cond_3
    move-object/from16 v5, p3

    goto :goto_0

    .line 450
    .restart local v3    # "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    .restart local v7    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "os":Ljava/io/OutputStream;
    .restart local v12    # "targetFile":Ljava/io/File;
    .restart local v14    # "unzippedFileName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 452
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v16, v0

    new-instance v17, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$3;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 464
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 465
    check-cast p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->writePassword(Ljava/lang/String;)V

    .line 467
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 471
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 485
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v12    # "targetFile":Ljava/io/File;
    .end local v14    # "unzippedFileName":Ljava/lang/String;
    :goto_2
    return-void

    .line 470
    .restart local v7    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .restart local v12    # "targetFile":Ljava/io/File;
    .restart local v14    # "unzippedFileName":Ljava/lang/String;
    :catchall_0
    move-exception v16

    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 471
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    throw v16

    .line 480
    .end local v7    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v12    # "targetFile":Ljava/io/File;
    .end local v14    # "unzippedFileName":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 481
    .local v15, "unzippedFilePath":Ljava/lang/String;
    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 483
    .local v9, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15, v9}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->showUnzippedAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static unzipAndOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "fi"    # Lcom/kingsoft/email/mail/attachment/FileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    const/4 v6, 0x0

    .line 655
    .local v6, "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, "unzipPathBase":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "wpsemail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 660
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    .line 662
    :cond_0
    const/4 v0, 0x0

    .line 663
    .local v0, "cachedPassword":Ljava/lang/String;
    instance-of v8, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    if-eqz v8, :cond_1

    move-object v8, p0

    .line 664
    check-cast v8, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->readPassword()Ljava/lang/String;

    move-result-object v0

    .line 667
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v7, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    .end local v6    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    .local v7, "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :try_start_1
    invoke-virtual {v7, v1}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v7}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 672
    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 674
    invoke-static {p0, v7, p1, p2, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unzipAndOpenFile(Landroid/content/Context;Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V

    :goto_0
    move-object v6, v7

    .line 690
    .end local v7    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v6    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_1
    const/4 v8, 0x0

    return-object v8

    .line 677
    .end local v6    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v7    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_2
    new-instance v4, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;

    invoke-direct {v4, p1, p2, v7, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$PasswordFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/core/ZipFile;Lcom/kingsoft/email/mail/attachment/FileInfo;)V

    .line 679
    .local v4, "password":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string/jumbo v9, "password"

    invoke-virtual {v4, v8, v9}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 686
    .end local v4    # "password":Landroid/app/DialogFragment;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 687
    .end local v7    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    .local v3, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v6    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    goto :goto_1

    .line 683
    .end local v3    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .end local v6    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v7    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_3
    :try_start_2
    invoke-static {p0, v7, p1, p2, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unzipAndOpenFile(Landroid/content/Context;Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 686
    .end local v7    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v6    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static unzipAndOpenFile(Landroid/content/Context;Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zippedFile"    # Lnet/lingala/zip4j/core/ZipFile;
    .param p2, "zippedFileName"    # Ljava/lang/String;
    .param p3, "targetFileName"    # Ljava/lang/String;
    .param p4, "fileInfo"    # Lcom/kingsoft/email/mail/attachment/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    sget-object v19, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 297
    .local v16, "unzipPathBase":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "wpsemail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "dirPath":Ljava/lang/String;
    new-instance v14, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;

    invoke-direct {v14}, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;-><init>()V

    .line 300
    .local v14, "strategy":Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->delete(Ljava/io/File;)I

    .line 302
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 303
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    .line 306
    :cond_0
    const-string/jumbo v6, ""

    .line 307
    .local v6, "directoryPath":Ljava/lang/String;
    if-eqz p3, :cond_1

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 308
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const-string/jumbo v21, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    :goto_0
    const/4 v12, 0x0

    .line 317
    .local v12, "os":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 319
    .local v10, "is":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    .line 321
    .local v3, "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/lingala/zip4j/model/FileHeader;

    .line 322
    .local v8, "fh":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v8, :cond_2

    .line 323
    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_2

    .line 325
    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_2

    .line 326
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "unzippedFileName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 334
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->buildFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v15

    .line 336
    .local v15, "targetFile":Ljava/io/File;
    new-instance v12, Ljava/io/BufferedOutputStream;

    .end local v12    # "os":Ljava/io/OutputStream;
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    .restart local v12    # "os":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/core/ZipFile;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v10

    .line 340
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 341
    .local v4, "buffer":[B
    const/4 v13, 0x0

    .line 342
    .local v13, "readLen":I
    :goto_2
    const/16 v19, 0x0

    const/16 v20, 0x1000

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-ltz v13, :cond_5

    .line 343
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v4, v0, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 345
    .end local v4    # "buffer":[B
    .end local v13    # "readLen":I
    :catch_0
    move-exception v7

    .line 346
    .local v7, "e":Lnet/lingala/zip4j/exception/ZipException;
    :try_start_1
    invoke-virtual {v7}, Lnet/lingala/zip4j/exception/ZipException;->getCode()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 347
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$1;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 360
    check-cast p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->writePassword(Ljava/lang/String;)V

    .line 364
    :cond_3
    invoke-virtual {v7}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 387
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 401
    .end local v7    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .end local v8    # "fh":Lnet/lingala/zip4j/model/FileHeader;
    .end local v15    # "targetFile":Ljava/io/File;
    .end local v17    # "unzippedFileName":Ljava/lang/String;
    :goto_3
    return-void

    .line 313
    .end local v3    # "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_4
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 386
    .restart local v3    # "allFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v4    # "buffer":[B
    .restart local v8    # "fh":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v13    # "readLen":I
    .restart local v15    # "targetFile":Ljava/io/File;
    .restart local v17    # "unzippedFileName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 387
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1

    .line 366
    .end local v4    # "buffer":[B
    .end local v13    # "readLen":I
    :catch_1
    move-exception v7

    .line 368
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$2;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 380
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 381
    check-cast p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->writePassword(Ljava/lang/String;)V

    .line 383
    :cond_6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 387
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 386
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 387
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    throw v19

    .line 396
    .end local v8    # "fh":Lnet/lingala/zip4j/model/FileHeader;
    .end local v15    # "targetFile":Ljava/io/File;
    .end local v17    # "unzippedFileName":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v18

    .line 397
    .local v18, "unzippedFilePath":Ljava/lang/String;
    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 399
    .local v11, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->showUnzippedAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
