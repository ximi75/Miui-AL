.class Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;
.super Ljava/lang/Object;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartSendInfo"
.end annotation


# static fields
.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;

.field public static final WHERE_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"


# instance fields
.field final mCollectionId:Ljava/lang/String;

.field final mIsReply:Z

.field final mItemId:Ljava/lang/String;

.field final mRequiredAtts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sourceMessageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "collectionId"    # Ljava/lang/String;
    .param p3, "isReply"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p4, "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mItemId:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mCollectionId:Ljava/lang/String;

    .line 154
    iput-boolean p3, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mIsReply:Z

    .line 155
    iput-object p4, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mRequiredAtts:Ljava/util/ArrayList;

    .line 156
    return-void
.end method

.method private static amongAttachments(Lcom/android/emailcommon/provider/EmailContent$Attachment;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 7
    .param p0, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p1, "atts"    # [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 184
    .local v4, "location":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v5

    .line 185
    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 186
    .local v0, "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    const/4 v5, 0x1

    goto :goto_0

    .line 185
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getSmartSendInfo(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    .line 204
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 206
    .local v10, "flags":I
    const/high16 v23, 0x20000

    and-int v23, v23, v10

    if-eqz v23, :cond_0

    .line 207
    const/16 v23, 0x0

    .line 280
    :goto_0
    return-object v23

    .line 209
    :cond_0
    and-int/lit8 v23, v10, 0x1

    if-eqz v23, :cond_1

    const/16 v21, 0x1

    .line 210
    .local v21, "reply":Z
    :goto_1
    and-int/lit8 v23, v10, 0x2

    if-eqz v23, :cond_2

    const/4 v11, 0x1

    .line 212
    .local v11, "forward":Z
    :goto_2
    if-nez v21, :cond_3

    if-nez v11, :cond_3

    .line 213
    const/16 v23, 0x0

    goto :goto_0

    .line 209
    .end local v11    # "forward":Z
    .end local v21    # "reply":Z
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 210
    .restart local v21    # "reply":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 217
    .restart local v11    # "forward":Z
    :cond_3
    if-eqz v21, :cond_4

    if-eqz v11, :cond_4

    .line 218
    const/16 v23, 0x0

    goto :goto_0

    .line 221
    :cond_4
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 222
    const/16 v23, 0x0

    goto :goto_0

    .line 227
    :cond_5
    const/4 v13, 0x0

    .line 228
    .local v13, "itemId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 231
    .local v8, "collectionId":Ljava/lang/String;
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v24, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v25, "messageKey=?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "cols":[Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 235
    .local v19, "refId":J
    if-eqz v9, :cond_6

    const/16 v23, 0x0

    aget-object v23, v9, v23

    if-eqz v23, :cond_6

    .line 236
    const/16 v23, 0x0

    aget-object v23, v9, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 238
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "syncServerId"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "mailboxKey"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, "protocolSearchInfo"

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v19

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 241
    if-eqz v9, :cond_6

    .line 242
    const/16 v23, 0x0

    aget-object v13, v9, v23

    .line 243
    const/16 v23, 0x1

    aget-object v23, v9, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 245
    .local v6, "boxId":J
    sget-object v23, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "serverId"

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v6, v7, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 247
    if-eqz v9, :cond_6

    .line 248
    const/16 v23, 0x0

    aget-object v8, v9, v23

    .line 254
    .end local v6    # "boxId":J
    :cond_6
    if-eqz v13, :cond_c

    if-eqz v8, :cond_c

    .line 256
    if-eqz v11, :cond_a

    .line 258
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v16

    .line 260
    .local v16, "outAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v18

    .line 262
    .local v18, "refAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v5, v18

    .local v5, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v14, :cond_8

    aget-object v17, v5, v12

    .line 264
    .local v17, "refAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->amongAttachments(Lcom/android/emailcommon/provider/EmailContent$Attachment;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 265
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 262
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 268
    .end local v17    # "refAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_8
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v22, "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    move-object/from16 v5, v16

    array-length v14, v5

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_b

    aget-object v15, v5, v12

    .line 271
    .local v15, "outAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->amongAttachments(Lcom/android/emailcommon/provider/EmailContent$Attachment;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 272
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 276
    .end local v5    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "outAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16    # "outAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v18    # "refAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v22    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_a
    const/16 v22, 0x0

    .line 278
    .restart local v22    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_b
    new-instance v23, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v13, v8, v1, v2}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 280
    .end local v22    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public generateSmartSendCmd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->isForward()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SmartForward"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mItemId:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mCollectionId:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    :cond_0
    const-string/jumbo v1, "SmartReply"

    goto :goto_0
.end method

.method public isForward()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mIsReply:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
