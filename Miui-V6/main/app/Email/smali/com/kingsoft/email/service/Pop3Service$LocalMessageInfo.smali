.class Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
.super Ljava/lang/Object;
.source "Pop3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/Pop3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMessageInfo"
.end annotation


# static fields
.field private static final COLUMN_FLAG_LOADED:I = 0x1

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_MAILBOX_KEY:I = 0x3

.field private static final COLUMN_SERVER_ID:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field final mFlagLoaded:I

.field final mId:J

.field final mServerId:Ljava/lang/String;

.field final mailBoxKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mId:J

    .line 177
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mFlagLoaded:I

    .line 178
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 181
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mailBoxKey:J

    .line 184
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
