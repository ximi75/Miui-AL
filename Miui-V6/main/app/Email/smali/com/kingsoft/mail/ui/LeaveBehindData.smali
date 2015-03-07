.class public Lcom/kingsoft/mail/ui/LeaveBehindData;
.super Ljava/lang/Object;
.source "LeaveBehindData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/ui/LeaveBehindData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final data:Lcom/kingsoft/mail/providers/Conversation;

.field final height:I

.field final op:Lcom/kingsoft/mail/ui/ToastBarOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/kingsoft/mail/ui/LeaveBehindData$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/LeaveBehindData$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/LeaveBehindData;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "arg"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->data:Lcom/kingsoft/mail/providers/Conversation;

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ToastBarOperation;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->height:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/kingsoft/mail/ui/LeaveBehindData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/kingsoft/mail/ui/LeaveBehindData$1;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/LeaveBehindData;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ToastBarOperation;I)V
    .locals 0
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "undoOp"    # Lcom/kingsoft/mail/ui/ToastBarOperation;
    .param p3, "height"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->data:Lcom/kingsoft/mail/providers/Conversation;

    .line 31
    iput-object p2, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    .line 32
    iput p3, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->height:I

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "arg"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->data:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindData;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
