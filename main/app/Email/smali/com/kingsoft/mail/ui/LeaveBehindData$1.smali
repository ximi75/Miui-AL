.class final Lcom/kingsoft/mail/ui/LeaveBehindData$1;
.super Ljava/lang/Object;
.source "LeaveBehindData.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/LeaveBehindData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/kingsoft/mail/ui/LeaveBehindData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/ui/LeaveBehindData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Lcom/kingsoft/mail/ui/LeaveBehindData;

    invoke-direct {v0, p1, v1, v1}, Lcom/kingsoft/mail/ui/LeaveBehindData;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/kingsoft/mail/ui/LeaveBehindData$1;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/kingsoft/mail/ui/LeaveBehindData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 63
    new-instance v0, Lcom/kingsoft/mail/ui/LeaveBehindData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/kingsoft/mail/ui/LeaveBehindData;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/kingsoft/mail/ui/LeaveBehindData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/LeaveBehindData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kingsoft/mail/ui/LeaveBehindData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/LeaveBehindData$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/kingsoft/mail/ui/LeaveBehindData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kingsoft/mail/ui/LeaveBehindData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 68
    new-array v0, p1, [Lcom/kingsoft/mail/ui/LeaveBehindData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/LeaveBehindData$1;->newArray(I)[Lcom/kingsoft/mail/ui/LeaveBehindData;

    move-result-object v0

    return-object v0
.end method
