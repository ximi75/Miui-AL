.class public Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
.super Ljava/lang/Object;
.source "NotificationActionUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/NotificationActionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mConversation:Lcom/kingsoft/mail/providers/Conversation;

.field private final mConversationId:J

.field private final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mLocalMessageId:J

.field private final mMessage:Lcom/kingsoft/mail/providers/Message;

.field private final mMessageId:Ljava/lang/String;

.field private final mNotificationActionType:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

.field private final mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    move-object v0, p2

    .line 509
    .local v0, "newLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 510
    const-class v1, Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 511
    :cond_0
    invoke-static {}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->values()[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mNotificationActionType:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 512
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    iput-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 513
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    iput-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 515
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Message;

    iput-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessage:Lcom/kingsoft/mail/providers/Message;

    .line 516
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    iput-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversationId:J

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessageId:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mLocalMessageId:J

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mWhen:J

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/kingsoft/mail/utils/NotificationActionUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$1;

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Folder;JLjava/lang/String;JJ)V
    .locals 0
    .param p1, "notificationActionType"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p4, "message"    # Lcom/kingsoft/mail/providers/Message;
    .param p5, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p6, "conversationId"    # J
    .param p8, "messageId"    # Ljava/lang/String;
    .param p9, "localMessageId"    # J
    .param p11, "when"    # J

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mNotificationActionType:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 408
    iput-object p2, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 409
    iput-object p3, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 410
    iput-object p4, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessage:Lcom/kingsoft/mail/providers/Message;

    .line 411
    iput-object p5, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 412
    iput-wide p6, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversationId:J

    .line 413
    iput-object p8, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessageId:Ljava/lang/String;

    .line 414
    iput-wide p9, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mLocalMessageId:J

    .line 415
    iput-wide p11, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mWhen:J

    .line 416
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public getActionTextResId()I
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$1;->$SwitchMap$com$kingsoft$mail$utils$NotificationActionUtils$NotificationActionType:[I

    iget-object v1, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mNotificationActionType:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is no action text for this NotificationActionType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const v0, 0x7f10029b

    .line 463
    :goto_0
    return v0

    .line 460
    :cond_0
    const v0, 0x7f10029d

    goto :goto_0

    .line 463
    :pswitch_1
    const v0, 0x7f10029c

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversationId:J

    return-wide v0
.end method

.method public getFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method public getLocalMessageId()J
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mLocalMessageId:J

    return-wide v0
.end method

.method public getMessage()Lcom/kingsoft/mail/providers/Message;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessage:Lcom/kingsoft/mail/providers/Message;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationActionType()Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mNotificationActionType:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mWhen:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mNotificationActionType:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 479
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 480
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 481
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 482
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mConversationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 483
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mLocalMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 485
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->mWhen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 486
    return-void
.end method
