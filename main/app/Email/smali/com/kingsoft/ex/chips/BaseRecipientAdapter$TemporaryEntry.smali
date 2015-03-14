.class public Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TemporaryEntry"
.end annotation


# instance fields
.field public final contactId:J

.field public final dataId:J

.field public final destination:Ljava/lang/String;

.field public final destinationLabel:Ljava/lang/String;

.field public final destinationType:I

.field public final displayName:Ljava/lang/String;

.field public final displayNameSource:I

.field public final isGalContact:Z

.field public final thumbnailUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "destination"    # Ljava/lang/String;
    .param p5, "isGalContact"    # Z

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    .line 204
    iput-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 205
    iput-wide p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    .line 206
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    .line 207
    iput-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 208
    const/16 v0, 0x28

    iput v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    .line 209
    iput-boolean p5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isGalContact"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 214
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 215
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    .line 217
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 219
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    .line 220
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    .line 221
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 223
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    .line 225
    iput-boolean p2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;IZ)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriString"    # Ljava/lang/String;
    .param p10, "displayNameSource"    # I
    .param p11, "isGalContact"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 189
    iput p3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    .line 190
    iput-object p4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 191
    iput-wide p5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    .line 192
    iput-wide p7, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    .line 193
    iput-object p9, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 194
    iput p10, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    .line 195
    iput-boolean p11, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    .line 196
    return-void
.end method
