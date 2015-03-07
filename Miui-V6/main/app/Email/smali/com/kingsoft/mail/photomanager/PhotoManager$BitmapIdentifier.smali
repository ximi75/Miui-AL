.class public final Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
.super Ljava/lang/Object;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitmapIdentifier"
.end annotation


# static fields
.field private static final sWorkDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;


# instance fields
.field public final h:I

.field public final key:Ljava/lang/Object;

.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 865
    new-instance v0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    .line 884
    iput p2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    .line 885
    iput p3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    .line 886
    return-void
.end method

.method public static getBitmapKey(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    .locals 4
    .param p0, "id"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p1, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;
    .param p2, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    .prologue
    .line 871
    if-eqz p2, :cond_0

    .line 872
    iget v1, p2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 873
    .local v1, "width":I
    iget v0, p2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 879
    .local v0, "height":I
    :goto_0
    new-instance v2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;-><init>(Ljava/lang/Object;II)V

    return-object v2

    .line 875
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    invoke-interface {p1, v2, v3}, Lcom/kingsoft/mail/ui/ImageCanvas;->getDesiredDimensions(Ljava/lang/Object;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V

    .line 876
    sget-object v2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    iget v1, v2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 877
    .restart local v1    # "width":I
    sget-object v2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    iget v0, v2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    .restart local v0    # "height":I
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 899
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 905
    :cond_1
    :goto_0
    return v1

    .line 901
    :cond_2
    if-eq p1, p0, :cond_1

    move-object v0, p1

    .line 904
    check-cast v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    .line 905
    .local v0, "o":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    iget-object v4, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    iget v4, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    iget v4, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    if-eq v3, v4, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 890
    const/16 v0, 0x13

    .line 891
    .local v0, "hash":I
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x24d

    .line 892
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    add-int v0, v1, v2

    .line 893
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    add-int v0, v1, v2

    .line 894
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string/jumbo v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 914
    const-string/jumbo v1, " w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 916
    const-string/jumbo v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
