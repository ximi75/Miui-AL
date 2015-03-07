.class public Lcom/kingsoft/mail/providers/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENDER_LIST_TOKEN_ELIDED:Ljava/lang/String; = " .. "


# instance fields
.field public mAccountEmail:Ljava/lang/String;

.field public mergeSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mergeSendersEmail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public priority:I

.field public read:Z

.field public receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public receiversEmail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sender:Ljava/lang/String;

.field public senderEmail:Ljava/lang/String;

.field public starred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/kingsoft/mail/providers/MessageInfo$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/MessageInfo$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v3, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 37
    iput-object v3, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 38
    iput-object v3, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 39
    iput-object v3, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->starred:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingsoft/mail/providers/MessageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kingsoft/mail/providers/MessageInfo$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/MessageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "isRead"    # Z
    .param p2, "isStarred"    # Z
    .param p3, "senderString"    # Ljava/lang/String;
    .param p4, "p"    # I
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 48
    invoke-virtual/range {p0 .. p5}, Lcom/kingsoft/mail/providers/MessageInfo;->set(ZZLjava/lang/String;ILjava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p1, "isRead"    # Z
    .param p2, "isStarred"    # Z
    .param p3, "senderString"    # Ljava/lang/String;
    .param p4, "p"    # I
    .param p5, "email"    # Ljava/lang/String;
    .param p10, "myEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "receName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "receEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "mergeSendersName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "mergeSendersEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 58
    invoke-virtual/range {p0 .. p5}, Lcom/kingsoft/mail/providers/MessageInfo;->set(ZZLjava/lang/String;ILjava/lang/String;)V

    .line 61
    iput-object p6, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 62
    if-eqz p6, :cond_1

    .line 63
    iput-object p6, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    .line 66
    :goto_0
    if-eqz p7, :cond_0

    .line 67
    iput-object p7, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    .line 68
    :cond_0
    if-eqz p8, :cond_2

    .line 69
    iput-object p8, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    .line 72
    :goto_1
    if-eqz p9, :cond_3

    .line 73
    iput-object p9, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    .line 77
    :goto_2
    iput-object p10, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    .line 79
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->starred:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public markRead(Z)Z
    .locals 1
    .param p1, "isRead"    # Z

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    if-eq v0, p1, :cond_0

    .line 126
    iput-boolean p1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ZZLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "isRead"    # Z
    .param p2, "isStarred"    # Z
    .param p3, "senderString"    # Ljava/lang/String;
    .param p4, "p"    # I
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    .line 118
    iput-boolean p2, p0, Lcom/kingsoft/mail/providers/MessageInfo;->starred:Z

    .line 119
    iput-object p3, p0, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 120
    iput p4, p0, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    .line 121
    iput-object p5, p0, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[MessageInfo: read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-boolean v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v1, ", sender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, ", senderEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, ", priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, ", receivers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, ", receiversEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, ", mergeSenders = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v1, ", mergeSendersEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, ", mAccountEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->starred:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->receiversEmail:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSenders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mergeSendersEmail:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 113
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MessageInfo;->mAccountEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v1, v2

    .line 104
    goto :goto_1
.end method
