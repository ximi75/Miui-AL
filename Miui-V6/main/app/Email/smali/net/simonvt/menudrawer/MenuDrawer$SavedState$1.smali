.class final Lnet/simonvt/menudrawer/MenuDrawer$SavedState$1;
.super Ljava/lang/Object;
.source "MenuDrawer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
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
        "Lnet/simonvt/menudrawer/MenuDrawer$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1644
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1647
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1644
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState$1;->newArray(I)[Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1652
    new-array v0, p1, [Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    return-object v0
.end method
