.class public final Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
        ">;"
    }
.end annotation


# instance fields
.field public attempts:I

.field public final bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

.field private final mDefaultProvider:Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;

.field private final mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

.field private final mRequestedExtent:I

.field private final mView:Lcom/kingsoft/mail/ui/ImageCanvas;

.field final synthetic this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

.field public final viewGeneration:I


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/photomanager/PhotoManager;Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V
    .locals 1
    .param p2, "photoIdentifier"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p3, "defaultProvider"    # Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;
    .param p4, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;
    .param p5, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput-object p2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    .line 939
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    .line 940
    iput-object p3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mDefaultProvider:Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;

    .line 941
    iput-object p4, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    .line 942
    invoke-interface {p4}, Lcom/kingsoft/mail/ui/ImageCanvas;->getGeneration()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    .line 944
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    invoke-static {p2, v0, p5}, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->getBitmapKey(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    .line 945
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/photomanager/PhotoManager;Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Lcom/kingsoft/mail/photomanager/PhotoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/photomanager/PhotoManager;
    .param p2, "x1"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p3, "x2"    # Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;
    .param p4, "x3"    # Lcom/kingsoft/mail/ui/ImageCanvas;
    .param p5, "x4"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p6, "x5"    # Lcom/kingsoft/mail/photomanager/PhotoManager$1;

    .prologue
    .line 926
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;-><init>(Lcom/kingsoft/mail/photomanager/PhotoManager;Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V

    return-void
.end method


# virtual methods
.method public applyDefaultImage()V
    .locals 4

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->isStale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mDefaultProvider:Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;

    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    iget v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    invoke-interface {v0, v1, v2, v3}, Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;->applyDefaultImage(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;I)V

    .line 1023
    return-void
.end method

.method public compareTo(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;)I
    .locals 2
    .param p1, "another"    # Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .prologue
    .line 1028
    iget v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    iget v1, p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1029
    iget v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    iget v1, p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    sub-int/2addr v0, v1

    .line 1031
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    iget-object v1, p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 926
    check-cast p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->compareTo(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 977
    if-ne p0, p1, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v1

    .line 978
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 979
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 980
    check-cast v0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 981
    .local v0, "that":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    iget v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    iget v4, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 982
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    iget-object v4, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 983
    :cond_5
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    iget-object v4, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;->getAddress()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoIdentifier()Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    return-object v0
.end method

.method public getView()Lcom/kingsoft/mail/ui/ImageCanvas;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getHash(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;)I

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 2

    .prologue
    .line 1035
    iget v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ImageCanvas;->getGeneration()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string/jumbo v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 997
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    const-string/jumbo v1, " mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mView:Lcom/kingsoft/mail/ui/ImageCanvas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    const-string/jumbo v1, " mExtent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1003
    const-string/jumbo v1, " bitmapKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1005
    const-string/jumbo v1, " viewGeneration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    iget v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
