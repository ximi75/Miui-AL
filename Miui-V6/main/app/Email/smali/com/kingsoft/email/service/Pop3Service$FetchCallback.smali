.class Lcom/kingsoft/email/service/Pop3Service$FetchCallback;
.super Ljava/lang/Object;
.source "Pop3Service.java"

# interfaces
.implements Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/Pop3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCallback"
.end annotation


# instance fields
.field private final mAttachmentUri:Landroid/net/Uri;

.field private final mContentValues:Landroid/content/ContentValues;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "attachmentUri"    # Landroid/net/Uri;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mContentValues:Landroid/content/ContentValues;

    .line 311
    iput-object p1, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mResolver:Landroid/content/ContentResolver;

    .line 312
    iput-object p2, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mAttachmentUri:Landroid/net/Uri;

    .line 313
    return-void
.end method


# virtual methods
.method public report(I)V
    .locals 4
    .param p1, "bytesRead"    # I

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "uiDownloadedSize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    iget-object v0, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mAttachmentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    return-void
.end method
