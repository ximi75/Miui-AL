.class final Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState$1;
.super Ljava/lang/Object;
.source "ConversationViewState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;
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
        "Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 239
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;-><init>(Landroid/os/Parcel;Lcom/kingsoft/mail/ui/ConversationViewState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 244
    new-array v0, p1, [Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState$1;->newArray(I)[Lcom/kingsoft/mail/ui/ConversationViewState$MessageViewState;

    move-result-object v0

    return-object v0
.end method
