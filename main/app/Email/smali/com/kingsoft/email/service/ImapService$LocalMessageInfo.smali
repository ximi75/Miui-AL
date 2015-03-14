.class Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
.super Ljava/lang/Object;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMessageInfo"
.end annotation


# static fields
.field private static final COLUMN_FLAGS:I = 0x5

.field private static final COLUMN_FLAG_FAVORITE:I = 0x2

.field private static final COLUMN_FLAG_LOADED:I = 0x3

.field private static final COLUMN_FLAG_READ:I = 0x1

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_SERVER_ID:I = 0x4

.field private static final COLUMN_TIMESTAMP:I = 0x6

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field final mFlagFavorite:Z

.field final mFlagLoaded:I

.field final mFlagRead:Z

.field final mFlags:I

.field final mId:J

.field final mServerId:Ljava/lang/String;

.field final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    .line 229
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlagRead:Z

    .line 230
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlagFavorite:Z

    .line 231
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlagLoaded:I

    .line 232
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 233
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlags:I

    .line 234
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mTimestamp:J

    .line 236
    return-void

    :cond_0
    move v0, v2

    .line 229
    goto :goto_0

    :cond_1
    move v1, v2

    .line 230
    goto :goto_1
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
