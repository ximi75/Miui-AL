.class Lcom/kingsoft/email/service/ImapService$OldestTimestampInfo;
.super Ljava/lang/Object;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OldestTimestampInfo"
.end annotation


# static fields
.field private static final COLUMN_OLDEST_TIMESTAMP:I

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MIN(syncServerTimeStamp)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/service/ImapService$OldestTimestampInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/kingsoft/email/service/ImapService$OldestTimestampInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
