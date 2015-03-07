.class Lcom/kingsoft/email/mail/store/ImapPushFolder$LatestTimestampInfo;
.super Ljava/lang/Object;
.source "ImapPushFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/ImapPushFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatestTimestampInfo"
.end annotation


# static fields
.field private static final COLUMN_LATEST_SERVERID:I

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MAX(syncServerId)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$LatestTimestampInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$LatestTimestampInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
