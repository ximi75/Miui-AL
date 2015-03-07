.class Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;
.super Ljava/lang/Object;
.source "ImageUtils.java"

# interfaces
.implements Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseInputStreamFactory"
.end annotation


# instance fields
.field protected final mResolver:Landroid/content/ContentResolver;

.field protected final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;->mResolver:Landroid/content/ContentResolver;

    .line 237
    iput-object p2, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;->mUri:Landroid/net/Uri;

    .line 238
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
