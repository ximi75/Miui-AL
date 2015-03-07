.class final Lcom/kingsoft/mail/providers/MessageInfo$1;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/MessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingsoft/mail/providers/MessageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/providers/MessageInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    new-instance v0, Lcom/kingsoft/mail/providers/MessageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingsoft/mail/providers/MessageInfo;-><init>(Landroid/os/Parcel;Lcom/kingsoft/mail/providers/MessageInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/MessageInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/providers/MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kingsoft/mail/providers/MessageInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 147
    new-array v0, p1, [Lcom/kingsoft/mail/providers/MessageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/MessageInfo$1;->newArray(I)[Lcom/kingsoft/mail/providers/MessageInfo;

    move-result-object v0

    return-object v0
.end method
