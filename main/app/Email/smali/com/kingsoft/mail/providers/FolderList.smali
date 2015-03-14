.class public Lcom/kingsoft/mail/providers/FolderList;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/FolderList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/kingsoft/mail/providers/FolderList;


# instance fields
.field public final folders:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/kingsoft/mail/providers/FolderList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/providers/FolderList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/kingsoft/mail/providers/FolderList;->EMPTY:Lcom/kingsoft/mail/providers/FolderList;

    .line 96
    new-instance v0, Lcom/kingsoft/mail/providers/FolderList$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/FolderList$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/FolderList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/kingsoft/mail/providers/Folder;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "in":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/FolderList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)",
            "Lcom/kingsoft/mail/providers/FolderList;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Folder;>;"
    new-instance v0, Lcom/kingsoft/mail/providers/FolderList;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/providers/FolderList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static fromBlob([B)Lcom/kingsoft/mail/providers/FolderList;
    .locals 4
    .param p0, "blob"    # [B

    .prologue
    const/4 v3, 0x0

    .line 70
    if-nez p0, :cond_0

    .line 71
    sget-object v1, Lcom/kingsoft/mail/providers/FolderList;->EMPTY:Lcom/kingsoft/mail/providers/FolderList;

    .line 79
    :goto_0
    return-object v1

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 75
    .local v0, "p":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    sget-object v2, Lcom/kingsoft/mail/providers/FolderList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/FolderList;

    .line 78
    .local v1, "result":Lcom/kingsoft/mail/providers/FolderList;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static listToBlob(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "in":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 65
    .local v1, "result":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 66
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBlob()[B
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    .local v0, "p":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/kingsoft/mail/providers/FolderList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 50
    .local v1, "result":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 44
    return-void
.end method
