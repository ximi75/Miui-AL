.class public Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "ItemOperationsParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemOperationsParser"

.field private static final WHERE_SERVER_ID_AND_MAILBOX_KEY:Ljava/lang/String; = "syncServerId=? and mailboxKey=?"


# instance fields
.field private atts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAttachmentId:J

.field private final mAttachmentOutputStream:Ljava/io/OutputStream;

.field private final mAttachmentSize:J

.field private mBodySize:I

.field private final mCallback:Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;

.field private mContext:Landroid/content/Context;

.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mStatusCode:I

.field private mTurncated:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "size"    # J
    .param p5, "callback"    # Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    .line 77
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    .line 96
    iput-object p2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    .line 97
    iput-wide p3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentSize:J

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentId:J

    .line 99
    iput-object p5, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mCallback:Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "size"    # J
    .param p5, "callback"    # Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .param p6, "attId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;)V

    .line 91
    iput-wide p6, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentId:J

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    .line 77
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    .line 105
    iput-object p3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 106
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object p2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 108
    iput-object p5, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    .line 109
    iput-object v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentSize:J

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentId:J

    .line 112
    iput-object v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mCallback:Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;

    .line 113
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 114
    return-void
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 12
    .param p2, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 257
    .local v4, "length":Ljava/lang/String;
    const/4 v5, 0x0

    .line 258
    .local v5, "location":Ljava/lang/String;
    const/4 v3, 0x0

    .line 259
    .local v3, "isInline":Z
    const/4 v1, 0x0

    .line 261
    .local v1, "contentId":Ljava/lang/String;
    :goto_0
    const/16 v8, 0x85

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 262
    iget v8, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v8, :sswitch_data_0

    .line 283
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 266
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 267
    goto :goto_0

    .line 270
    :sswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 271
    goto :goto_0

    .line 274
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 275
    goto :goto_0

    .line 277
    :sswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v8

    if-ne v8, v6, :cond_0

    move v3, v6

    .line 278
    :goto_1
    goto :goto_0

    :cond_0
    move v3, v7

    .line 277
    goto :goto_1

    .line 280
    :sswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 281
    goto :goto_0

    .line 288
    :cond_1
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 289
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 290
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string/jumbo v8, "base64"

    iput-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 291
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 292
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 293
    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 294
    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 295
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 302
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 303
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 306
    :cond_2
    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string/jumbo v9, "image/tiff"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 307
    const-string/jumbo v8, "ItemOperationsParser"

    const-string/jumbo v9, "unsupported inline format, MimeType : %s, FileName: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v11, v10, v7

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v7, v10, v6

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    const/4 v3, 0x0

    .line 316
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v6, :cond_5

    .line 317
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget v6, v6, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v6, :cond_5

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget v8, v8, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 319
    :cond_4
    const/16 v6, 0x200

    iput v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 323
    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_6
    return-void

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
        0x453 -> :sswitch_4
        0x455 -> :sswitch_3
    .end sparse-switch
.end method

.method private attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 2
    .param p2, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p3, "attachmentFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    invoke-virtual {p0, p3}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 242
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 248
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 245
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 251
    :cond_0
    return-void

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x44f -> :sswitch_0
    .end sparse-switch
.end method

.method private bodyParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 200
    const-string/jumbo v1, "1"

    .line 201
    .local v1, "bodyType":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 202
    .local v0, "body":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 203
    iget v3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 228
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 206
    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 209
    goto :goto_0

    .line 211
    :pswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mBodySize:I

    goto :goto_0

    .line 214
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .line 216
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    iput v5, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mTurncated:I

    goto :goto_0

    .line 220
    :cond_1
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    iput v5, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mTurncated:I

    goto :goto_0

    .line 223
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mTurncated:I

    goto :goto_0

    .line 232
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 237
    :goto_1
    return-void

    .line 235
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x446
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private commit()V
    .locals 28

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 439
    :cond_0
    return-void

    .line 349
    :cond_1
    const/16 v17, 0x0

    .line 350
    .local v17, "id":Ljava/lang/String;
    const/4 v14, -0x1

    .line 351
    .local v14, "flagLoad":I
    const/4 v13, 0x0

    .line 353
    .local v13, "c":Landroid/database/Cursor;
    const/4 v2, 0x4

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "flagLoaded"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "flags"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "meetingInfo"

    aput-object v3, v4, v2

    .line 357
    .local v4, "proj":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "syncServerId=? and mailboxKey=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 360
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 362
    const-string/jumbo v2, "flagLoaded"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 363
    .local v18, "index":I
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 364
    const-string/jumbo v2, "flags"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 366
    const-string/jumbo v2, "meetingInfo"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v18    # "index":I
    :cond_2
    if-eqz v13, :cond_3

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 377
    .end local v4    # "proj":[Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v17, :cond_0

    const/4 v2, 0x1

    if-eq v2, v14, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 381
    new-instance v11, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v11}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 382
    .local v11, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 384
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v11}, Lcom/kingsoft/email/EmailApplication;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 389
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 390
    .local v15, "htmlBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v15, v5}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromHtmlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/content/Context;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v25

    .line 391
    .local v25, "snippetInfo":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 397
    .end local v15    # "htmlBuffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getSnippet()Ljava/lang/String;

    move-result-object v24

    .line 398
    .local v24, "snippet":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getNoQuoteText()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 399
    .local v23, "shortBody":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getBodyCalc()Z

    move-result v19

    .line 400
    .local v19, "isBodyCalc":Z
    invoke-virtual/range {v25 .. v25}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getQuoteIdx()J

    move-result-wide v21

    .line 402
    .local v21, "quoteIndex":J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v12, "bodyValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "messageKey"

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v2, "shortBody"

    move-object/from16 v0, v23

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v2, "quoteIndex"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_4

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->setMeetingInfo2Text(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 409
    const-string/jumbo v2, "textContent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_4
    const-string/jumbo v2, "htmlContent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 414
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v17, v10, v2

    .line 415
    .local v10, "bindArgument":[Ljava/lang/String;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v20, "msgValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "snippet"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v2, "flagCalcBody"

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 418
    const-string/jumbo v2, "flagLoaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "_id=?"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mShortBody:Ljava/lang/String;

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move/from16 v0, v19

    iput-boolean v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->isBodyCalc:Z

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v2, v3}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateChatCache(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 430
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 432
    .local v8, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 433
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 434
    .local v9, "attValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "messageKey"

    iget-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 369
    .end local v8    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9    # "attValues":Landroid/content/ContentValues;
    .end local v10    # "bindArgument":[Ljava/lang/String;
    .end local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v12    # "bodyValues":Landroid/content/ContentValues;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "isBodyCalc":Z
    .end local v20    # "msgValues":Landroid/content/ContentValues;
    .end local v21    # "quoteIndex":J
    .end local v23    # "shortBody":Ljava/lang/String;
    .end local v24    # "snippet":Ljava/lang/String;
    .end local v25    # "snippetInfo":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    :catch_0
    move-exception v2

    .line 372
    if-eqz v13, :cond_3

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 372
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_6

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 392
    .restart local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 393
    new-instance v2, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v25

    .restart local v25    # "snippetInfo":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    goto/16 :goto_1

    .line 395
    .end local v25    # "snippetInfo":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v25

    .restart local v25    # "snippetInfo":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    goto/16 :goto_1
.end method

.method private parseFetch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 480
    :goto_0
    const/16 v1, 0x506

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 481
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x50d

    if-ne v1, v2, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    goto :goto_0

    .line 483
    :cond_0
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x50b

    if-ne v1, v2, :cond_1

    .line 485
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->parseProperties()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 488
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 494
    :cond_2
    return-void
.end method

.method private parseProperties()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 122
    :goto_0
    const/16 v1, 0x50b

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 123
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x50c

    if-ne v1, v2, :cond_0

    .line 125
    new-instance v0, Lcom/kingsoft/exchange/adapter/Base64InputStream;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getInput()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    .local v0, "bis":Lcom/kingsoft/exchange/adapter/Base64InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    iget-wide v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentSize:J

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mCallback:Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;

    iget-wide v5, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mAttachmentId:J

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v9

    .line 130
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 134
    .end local v0    # "bis":Lcom/kingsoft/exchange/adapter/Base64InputStream;
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x44a

    if-ne v1, v2, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->bodyParser()V

    goto :goto_0

    .line 136
    :cond_1
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x98

    if-ne v1, v2, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x98

    invoke-static {v1, v2}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;I)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v10

    .line 138
    .local v10, "froms":[Lcom/kingsoft/emailcommon/mail/Address;
    if-eqz v10, :cond_2

    array-length v1, v10

    if-lez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v10}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 142
    .end local v10    # "froms":[Lcom/kingsoft/emailcommon/mail/Address;
    :cond_3
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x94

    if-ne v1, v2, :cond_4

    .line 143
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_4
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x86

    if-ne v1, v2, :cond_5

    .line 145
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/16 v3, 0x86

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_0

    .line 146
    :cond_5
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x44e

    if-ne v1, v2, :cond_6

    .line 147
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/16 v3, 0x44e

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto/16 :goto_0

    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto/16 :goto_0

    .line 155
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 157
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v12, "inlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v7, "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 164
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingsoft/email/provider/Utilities;->getAllCids(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 167
    :cond_8
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->atts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 168
    .local v8, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "image/tiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 169
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->removeImgTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 171
    const-string/jumbo v1, ""

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 174
    :cond_a
    if-eqz v7, :cond_9

    iget-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 175
    iget v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    if-nez v1, :cond_b

    .line 177
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 178
    const/4 v1, 0x2

    iput v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 182
    :cond_b
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    .end local v8    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_c
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v12, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 193
    .end local v7    # "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "inlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_d
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 194
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->commit()V

    .line 196
    :cond_e
    return-void
.end method

.method private parseResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 497
    :goto_0
    const/16 v1, 0x50e

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 498
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x506

    if-ne v1, v2, :cond_0

    .line 500
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->parseFetch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 509
    :cond_1
    return-void
.end method

.method private static putFromMeeting(Lcom/kingsoft/emailcommon/mail/PackedString;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Lcom/kingsoft/emailcommon/mail/PackedString;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    return-void
.end method

.method public static readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;)V
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "length"    # J
    .param p4, "callback"    # Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 606
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V

    .line 607
    return-void
.end method

.method public static readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "length"    # J
    .param p4, "callback"    # Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .param p5, "attId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 553
    const/16 v7, 0x4000

    new-array v0, v7, [B

    .line 556
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 557
    .local v6, "totalRead":I
    const-wide/16 v1, -0x1

    .line 558
    .local v1, "lastCallbackPct":J
    const/4 v3, 0x0

    .line 561
    .local v3, "lastCallbackTotalRead":I
    :cond_0
    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v7, p5, v7

    if-eqz v7, :cond_1

    invoke-static {p5, p6}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isCancelingDownload(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 562
    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0x4000

    invoke-virtual {p0, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 563
    .local v5, "read":I
    if-gez v5, :cond_3

    .line 590
    .end local v5    # "read":I
    :cond_2
    invoke-static {p5, p6}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isCancelingDownload(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 591
    new-instance v7, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;

    const-string/jumbo v8, "cancel"

    invoke-direct {v7, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 569
    .restart local v5    # "read":I
    :cond_3
    add-int/2addr v6, v5

    .line 571
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 574
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-lez v7, :cond_0

    .line 575
    mul-int/lit8 v7, v6, 0x64

    int-to-long v7, v7

    div-long/2addr v7, p2

    long-to-int v4, v7

    .line 578
    .local v4, "pct":I
    int-to-long v7, v4

    cmp-long v7, v7, v1

    if-lez v7, :cond_0

    add-int/lit16 v7, v3, 0x4000

    if-le v6, v7, :cond_0

    .line 580
    const/4 v7, 0x1

    invoke-virtual {p4, v7, v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->doCallback(II)V

    .line 584
    move v3, v6

    .line 585
    int-to-long v1, v4

    goto :goto_0

    .line 593
    .end local v4    # "pct":I
    .end local v5    # "read":I
    :cond_4
    return-void
.end method

.method private setMeetingInfo2Text(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 13
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    .line 441
    new-instance v8, Ljava/lang/StringBuffer;

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    :goto_0
    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "*~*~*~*~*~*~*~*~*~*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 444
    :cond_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 445
    .local v1, "meetingInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 446
    new-instance v2, Lcom/kingsoft/emailcommon/mail/PackedString;

    invoke-direct {v2, v1}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, "ps":Lcom/kingsoft/emailcommon/mail/PackedString;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "LOC"

    const-string/jumbo v8, "eventLocation"

    invoke-static {v2, v7, v6, v8}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->putFromMeeting(Lcom/kingsoft/emailcommon/mail/PackedString;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v7, "DTSTART"

    invoke-virtual {v2, v7}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "dtstart":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 452
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    .line 453
    .local v3, "startTime":J
    const-string/jumbo v7, "dtstart"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    .end local v3    # "startTime":J
    :cond_1
    const-string/jumbo v7, "ALLDAY"

    const-string/jumbo v8, "allDay"

    invoke-static {v2, v7, v6, v8}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->putFromMeeting(Lcom/kingsoft/emailcommon/mail/PackedString;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 457
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 460
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 461
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 468
    .end local v0    # "dtstart":Ljava/lang/String;
    .end local v1    # "meetingInfo":Ljava/lang/String;
    .end local v2    # "ps":Lcom/kingsoft/emailcommon/mail/PackedString;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 441
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto :goto_0

    .line 463
    .restart local v0    # "dtstart":Ljava/lang/String;
    .restart local v1    # "meetingInfo":Ljava/lang/String;
    .restart local v2    # "ps":Lcom/kingsoft/emailcommon/mail/PackedString;
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    const-string/jumbo v8, "<body>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "<body>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n--\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\n"

    const-string/jumbo v12, "<br>"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 329
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 330
    .local v1, "lastDot":I
    const/4 v0, 0x0

    .line 331
    .local v0, "extension":Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 332
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    if-nez v0, :cond_2

    .line 336
    const-string/jumbo v2, "application/octet-stream"

    .line 343
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 338
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2    # "mimeType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    return v0
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "res":Z
    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x505

    if-eq v2, v3, :cond_0

    .line 515
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 517
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 518
    iget v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v3, 0x50d

    if-ne v2, v3, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v2

    iput v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    goto :goto_0

    .line 521
    :cond_1
    iget v2, p0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v3, 0x50e

    if-ne v2, v3, :cond_2

    .line 523
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->parseResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 526
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 527
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 528
    .local v0, "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;->printStackTrace()V

    .line 529
    new-instance v2, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;

    const-string/jumbo v3, "cancel"

    invoke-direct {v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 532
    .end local v0    # "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 535
    :cond_3
    return v1
.end method
