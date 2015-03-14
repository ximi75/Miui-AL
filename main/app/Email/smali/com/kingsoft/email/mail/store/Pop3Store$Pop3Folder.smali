.class public Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
.super Lcom/kingsoft/emailcommon/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pop3Folder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    }
.end annotation


# instance fields
.field private mCapabilities:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;

.field private mMessageCount:I

.field private final mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field mOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/store/Pop3Store;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/kingsoft/emailcommon/mail/Folder;-><init>()V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mOrderList:Ljava/util/ArrayList;

    .line 166
    const-string/jumbo v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "INBOX"

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitiveReplacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 809
    sget-object v1, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 811
    if-eqz p1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v1}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2600(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/kingsoft/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v1}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2700(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "response":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 818
    new-instance v1, Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_1
    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 795
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCapabilities()Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store;)V

    .line 769
    .local v0, "capabilities":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_start_0
    const-string/jumbo v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "response":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v2}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2500(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 771
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    .end local v1    # "response":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 773
    .restart local v1    # "response":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private indexMessage(ILcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "message"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    return-void
.end method

.method private indexMsgNums(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    new-instance v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 412
    .local v2, "parser":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z
    invoke-static {}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1400()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v6, 0x1388

    if-le v5, v6, :cond_5

    .line 417
    :cond_2
    move v1, p1

    .local v1, "msgNum":I
    :goto_1
    if-gt v1, p2, :cond_8

    .line 418
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 419
    .local v0, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_4

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIDL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseSingleLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 422
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 424
    :cond_3
    new-instance v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 425
    .restart local v0    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)V

    .line 417
    .end local v3    # "response":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    .end local v0    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v1    # "msgNum":I
    :cond_5
    const-string/jumbo v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .restart local v3    # "response":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v5}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1500(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 431
    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 432
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 434
    :cond_7
    iget-boolean v5, v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-eqz v5, :cond_9

    .line 449
    .end local v3    # "response":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1700(Lcom/kingsoft/email/mail/store/Pop3Store;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v6}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1600(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/preferences/MailPrefs;->getPop3SortType(Ljava/lang/String;)I

    move-result v4

    .line 450
    .local v4, "sortWay":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 452
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mOrderList:Ljava/util/ArrayList;

    new-instance v6, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$1;

    invoke-direct {v6, p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$1;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    .line 437
    .end local v4    # "sortWay":I
    .restart local v3    # "response":Ljava/lang/String;
    :cond_9
    iget v1, v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    .line 438
    .restart local v1    # "msgNum":I
    if-lt v1, p1, :cond_6

    if-gt v1, p2, :cond_6

    .line 439
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 440
    .restart local v0    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_6

    .line 441
    new-instance v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 442
    .restart local v0    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_2
.end method


# virtual methods
.method public appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    .line 711
    return-void
.end method

.method public canCreate(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v4, -0x1

    .line 185
    .local v4, "result":I
    :try_start_0
    new-instance v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 186
    .local v2, "parser":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string/jumbo v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v5}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$000(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v3

    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 191
    iget-boolean v5, v2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 201
    .end local v2    # "parser":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    .end local v3    # "response":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v5, "validate_result_code"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v5}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$100(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 197
    const/16 v4, 0x21

    .line 198
    const-string/jumbo v5, "validate_error_message"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close(Z)V
    .locals 1
    .param p1, "expunge"    # Z

    .prologue
    .line 303
    :try_start_0
    const-string/jumbo v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v0}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1100(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 309
    return-void

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 2
    .param p1, "msgs"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "folder"    # Lcom/kingsoft/emailcommon/mail/Folder;
    .param p3, "callbacks"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;

    .prologue
    .line 763
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "copyMessages is not supported in POP3"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public createMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 871
    new-instance v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 0
    .param p1, "recurse"    # Z

    .prologue
    .line 715
    return-void
.end method

.method public deleteMessage(Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mOneMessage:[Lcom/kingsoft/emailcommon/mail/Message;
    invoke-static {v0}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2300(Lcom/kingsoft/email/mail/store/Pop3Store;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 724
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mOneMessage:[Lcom/kingsoft/emailcommon/mail/Message;
    invoke-static {v0}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2300(Lcom/kingsoft/email/mail/store/Pop3Store;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;
    invoke-static {}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2200()[Lcom/kingsoft/emailcommon/mail/Flag;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 725
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 826
    instance-of v0, p1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_0

    .line 827
    check-cast p1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 829
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string/jumbo v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 2
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Pop3Folder.fetch(Message[], FetchProfile, MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fetchAttachment([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 3
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "attId"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 598
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "I don\'t think you can get only an attachment for POP3 mail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 599
    return-void
.end method

.method public fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V
    .locals 17
    .param p1, "message"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .param p2, "lines"    # I
    .param p3, "callback"    # Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 631
    const/4 v10, 0x0

    .line 632
    .local v10, "response":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 633
    .local v8, "messageId":I
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_5

    .line 635
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "RETR %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 650
    :goto_0
    if-eqz v10, :cond_4

    .line 652
    :try_start_0
    const-string/jumbo v12, "OK"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    .line 653
    .local v9, "ok":I
    if-lez v9, :cond_0

    .line 655
    add-int/lit8 v11, v9, 0x3

    .line 656
    .local v11, "start":I
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-le v11, v12, :cond_6

    .line 658
    sget-object v12, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "No body length supplied"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 659
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 674
    .end local v11    # "start":I
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v12}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1800(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kingsoft/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 675
    .local v4, "in":Ljava/io/InputStream;
    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z
    invoke-static {}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1900()Z

    move-result v12

    if-eqz v12, :cond_1

    sget-boolean v12, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 676
    new-instance v5, Lcom/kingsoft/emailcommon/utility/LoggingInputStream;

    invoke-direct {v5, v4}, Lcom/kingsoft/emailcommon/utility/LoggingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    move-object v4, v5

    .line 678
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_1
    new-instance v12, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3ResponseInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    invoke-direct {v12, v13, v4}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store;Ljava/io/InputStream;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    .line 679
    if-nez p2, :cond_4

    .line 680
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getSize()I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getSize()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 681
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchSize(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)V

    .line 684
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2000(Lcom/kingsoft/email/mail/store/Pop3Store;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/emailcommon/utility/Utility;->isHeaderOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2100(Lcom/kingsoft/email/mail/store/Pop3Store;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getSize()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/kingsoft/emailcommon/utility/Utility;->increaseMessageCountAndFlowSavedSize(Landroid/content/Context;IZ)V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 702
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v9    # "ok":I
    :cond_4
    return-void

    .line 639
    :cond_5
    :try_start_3
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "TOP %d %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v7

    .line 643
    .local v7, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_4
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "RETR %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v10

    goto/16 :goto_0

    .line 645
    :catch_1
    move-exception v2

    .line 646
    .local v2, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    sget-object v12, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Can\'t read message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 661
    .end local v2    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v7    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v9    # "ok":I
    .restart local v11    # "start":I
    :cond_6
    :try_start_5
    const-string/jumbo v12, " "

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 663
    .local v3, "end":I
    if-lez v3, :cond_7

    .line 664
    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, "intString":Ljava/lang/String;
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    goto/16 :goto_1

    .line 670
    .end local v3    # "end":I
    .end local v6    # "intString":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 666
    .restart local v3    # "end":I
    :cond_7
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    .restart local v6    # "intString":Ljava/lang/String;
    goto :goto_2

    .line 690
    .end local v3    # "end":I
    .end local v6    # "intString":Ljava/lang/String;
    .end local v9    # "ok":I
    .end local v11    # "start":I
    :catch_3
    move-exception v7

    .line 697
    .restart local v7    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 698
    throw v7
.end method

.method public fetchSize(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)V
    .locals 11
    .param p1, "message"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v2, 0x0

    .line 603
    .local v2, "response":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 604
    .local v0, "messageId":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "LIST %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "sizeCmd":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    if-eqz v2, :cond_0

    .line 607
    const-string/jumbo v6, "OK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, "ok":I
    if-lez v1, :cond_0

    .line 609
    const-string/jumbo v6, "OK"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x2

    .line 610
    .local v5, "tagetPos":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 611
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, "sizeString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 616
    .end local v1    # "ok":I
    .end local v4    # "sizeString":Ljava/lang/String;
    .end local v5    # "tagetPos":I
    :cond_0
    return-void
.end method

.method public getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 356
    .local v1, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    return-object v1

    .line 347
    .end local v1    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v2}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1200(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 349
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 350
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to index during getMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 352
    :cond_1
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v3, "getMessages"

    invoke-direct {v2, v3, v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(IIZ)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .locals 7
    .param p1, "end"    # I
    .param p2, "limit"    # I
    .param p3, "sortByUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 374
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4, p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    if-eqz p3, :cond_2

    .line 384
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 395
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    return-object v4

    .line 375
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v4}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1300(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 377
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 378
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 380
    :cond_1
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v5, "getMessages"

    invoke-direct {v4, v5, v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 386
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    :cond_2
    move v3, p1

    .local v3, "msgNum":I
    :goto_0
    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p2, :cond_0

    .line 388
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 389
    .local v1, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v1, :cond_3

    .line 390
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .locals 1
    .param p1, "startDate"    # J
    .param p3, "endDate"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(IIJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "endDate"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 883
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual/range {p0 .. p5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "params"    # Lcom/android/emailcommon/service/SearchParams;
    .param p2, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;

    .prologue
    .line 876
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 2
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;

    .prologue
    .line 577
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/kingsoft/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 706
    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;
    invoke-static {}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2200()[Lcom/kingsoft/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, -0x1

    return v0
.end method

.method public isConnectionOk()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 844
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v1

    .line 847
    .local v1, "flag":Z
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v4}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2900(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v4

    const-string/jumbo v5, "STAT"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v4}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$3000(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "response":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "+OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 855
    .end local v2    # "response":Ljava/lang/String;
    :goto_0
    return v1

    .line 850
    .restart local v2    # "response":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 851
    .end local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedReopen([Ljava/lang/String;)Z
    .locals 6
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 859
    .local v1, "flag":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 860
    .local v3, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 861
    const/4 v1, 0x1

    .line 865
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    return v1

    .line 859
    .restart local v3    # "id":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v0}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2800(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V
    .locals 10
    .param p1, "mode"    # Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$200(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string/jumbo v8, "INBOX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 212
    new-instance v7, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v8, "Folder does not exist"

    invoke-direct {v7, v8}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 216
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$300(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    const/16 v7, 0x61a8

    sput v7, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_READ_TIMEOUT:I

    .line 217
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$400(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->open()V

    .line 220
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;

    .line 224
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$500(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTryTlsSecurity()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 225
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v7, v7, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v7, :cond_4

    .line 226
    const-string/jumbo v7, "STLS"

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$600(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->reopenTls()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    :cond_2
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USER "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;
    invoke-static {v8}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$700(Lcom/kingsoft/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "USER /redacted/"

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PASS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
    invoke-static {v8}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$800(Lcom/kingsoft/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "PASS /redacted/"

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    const/4 v6, 0x0

    .line 254
    .local v6, "statException":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 256
    .local v0, "exceptionType":I
    :try_start_4
    const-string/jumbo v7, "STAT"

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "response":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "parts":[Ljava/lang/String;
    array-length v7, v4

    if-ge v7, v9, :cond_8

    .line 259
    new-instance v6, Ljava/io/IOException;

    .end local v6    # "statException":Ljava/lang/Exception;
    invoke-direct {v6}, Ljava/io/IOException;-><init>()V
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    .restart local v6    # "statException":Ljava/lang/Exception;
    const/16 v0, 0x21

    .line 274
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_9

    .line 275
    :try_start_5
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$1000(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 276
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 277
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    :cond_3
    new-instance v7, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v8, "POP3 STAT"

    invoke-direct {v7, v0, v8, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    .end local v0    # "exceptionType":I
    .end local v6    # "statException":Ljava/lang/Exception;
    :cond_4
    :try_start_6
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 230
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "TLS not supported but required"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    :cond_5
    new-instance v7, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_7
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$900(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 247
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 248
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 250
    :cond_6
    new-instance v7, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v8, 0x21

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 239
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 240
    .local v2, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_8
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 241
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    :cond_7
    new-instance v7, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 262
    .end local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v0    # "exceptionType":I
    .restart local v4    # "parts":[Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "statException":Ljava/lang/Exception;
    :cond_8
    const/4 v7, 0x1

    :try_start_9
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I
    :try_end_9
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 264
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "statException":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 265
    .restart local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    move-object v6, v2

    .line 266
    .restart local v6    # "statException":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    .line 273
    goto/16 :goto_1

    .line 267
    .end local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v6    # "statException":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 268
    .restart local v1    # "ioe":Ljava/io/IOException;
    move-object v6, v1

    .line 269
    .restart local v6    # "statException":Ljava/lang/Exception;
    const/16 v0, 0x21

    .line 273
    goto/16 :goto_1

    .line 270
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v6    # "statException":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 271
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    move-object v6, v3

    .line 272
    .restart local v6    # "statException":Ljava/lang/Exception;
    const/16 v0, 0x21

    goto/16 :goto_1

    .line 281
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 282
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 283
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 285
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    .locals 12
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "flags"    # [Lcom/kingsoft/emailcommon/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 730
    if-eqz p3, :cond_0

    sget-object v7, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    invoke-static {p2, v7}, Lcom/kingsoft/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 759
    :cond_0
    return-void

    .line 737
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .local v4, "message":Lcom/kingsoft/emailcommon/mail/Message;
    :try_start_1
    invoke-virtual {v4}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    .line 740
    .local v6, "uid":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 741
    .local v5, "msgNum":I
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "DELE %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 737
    .end local v5    # "msgNum":I
    .end local v6    # "uid":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    :catch_0
    move-exception v2

    .line 753
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    # getter for: Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;
    invoke-static {v7}, Lcom/kingsoft/email/mail/store/Pop3Store;->access$2400(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 754
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 755
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 757
    :cond_2
    new-instance v7, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v8, "setFlags()"

    invoke-direct {v7, v8, v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 747
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    :catch_1
    move-exception v7

    goto :goto_1
.end method
