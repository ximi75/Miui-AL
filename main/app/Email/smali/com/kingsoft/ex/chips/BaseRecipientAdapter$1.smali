.class Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;
.super Landroid/os/AsyncTask;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->fetchPhotoAsync(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

.field final synthetic val$entry:Lcom/kingsoft/ex/chips/RecipientEntry;

.field final synthetic val$photoThumbnailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Landroid/net/Uri;Lcom/kingsoft/ex/chips/RecipientEntry;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iput-object p2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->val$entry:Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1066
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1071
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1074
    .local v9, "photoCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1076
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1080
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1107
    :cond_0
    :goto_0
    return-object v3

    .line 1080
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1088
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 1090
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_0

    .line 1091
    const/16 v0, 0x4000

    new-array v7, v0, [B

    .line 1092
    .local v7, "buffer":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1095
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "size":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_3

    .line 1096
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1099
    .end local v10    # "size":I
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v0

    .line 1103
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1099
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v10    # "size":I
    :cond_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1101
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1066
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "photoBytes"    # [B

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->val$entry:Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-virtual {v0, p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 1113
    if-eqz p1, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1900(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 1117
    :cond_0
    return-void
.end method
