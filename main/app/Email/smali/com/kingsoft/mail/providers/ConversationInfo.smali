.class public Lcom/kingsoft/mail/providers/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public draftCount:I

.field public firstSnippet:Ljava/lang/String;

.field public firstUnreadSnippet:Ljava/lang/String;

.field public lastSnippet:Ljava/lang/String;

.field public messageCount:I

.field public final messageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/providers/MessageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/kingsoft/mail/providers/ConversationInfo$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/ConversationInfo$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "draft"    # I
    .param p3, "first"    # Ljava/lang/String;
    .param p4, "firstUnread"    # Ljava/lang/String;
    .param p5, "last"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 49
    invoke-virtual/range {p0 .. p5}, Lcom/kingsoft/mail/providers/ConversationInfo;->set(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/kingsoft/mail/providers/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingsoft/mail/providers/ConversationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kingsoft/mail/providers/ConversationInfo$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/ConversationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromBlob([B)Lcom/kingsoft/mail/providers/ConversationInfo;
    .locals 4
    .param p0, "blob"    # [B

    .prologue
    const/4 v3, 0x0

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, "p":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    sget-object v2, Lcom/kingsoft/mail/providers/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 84
    .local v1, "result":Lcom/kingsoft/mail/providers/ConversationInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public addMessage(Lcom/kingsoft/mail/providers/MessageInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/kingsoft/mail/providers/MessageInfo;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public markRead(Z)Z
    .locals 4
    .param p1, "read"    # Z

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 121
    .local v2, "msg":Lcom/kingsoft/mail/providers/MessageInfo;
    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/providers/MessageInfo;->markRead(Z)Z

    move-result v3

    or-int/2addr v0, v3

    .line 122
    goto :goto_0

    .line 133
    .end local v2    # "msg":Lcom/kingsoft/mail/providers/MessageInfo;
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iput v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    .line 108
    iput v2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    .line 109
    iput-object v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public set(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "draft"    # I
    .param p3, "first"    # Ljava/lang/String;
    .param p4, "firstUnread"    # Ljava/lang/String;
    .param p5, "last"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iput p1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    .line 99
    iput p2, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    .line 100
    iput-object p3, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public toBlob()[B
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, "p":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/kingsoft/mail/providers/ConversationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 92
    .local v1, "result":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ConversationInfo object: messageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, ", draftCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, ", firstSnippet= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, ", firstUnreadSnippet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, ", messageInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 74
    return-void
.end method
