.class final Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment$1;
.super Ljava/lang/Object;
.source "ExchangeAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;
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
        "Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 62
    new-instance v0, Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 67
    new-array v0, p1, [Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment$1;->newArray(I)[Lcom/kingsoft/mail/providers/protos/exchange/ExchangeAttachment;

    move-result-object v0

    return-object v0
.end method
