.class interface abstract Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;
.super Ljava/lang/Object;
.source "MessageStateChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageStateChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionChangeQuery"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MESSAGE_KEY:I = 0x1

.field public static final COLUMN_NEW_FLAG_FAVORITE:I = 0x6

.field public static final COLUMN_NEW_FLAG_READ:I = 0x4

.field public static final COLUMN_OLD_FLAG_FAVORITE:I = 0x5

.field public static final COLUMN_OLD_FLAG_READ:I = 0x3

.field public static final COLUMN_SERVER_ID:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "messageServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "oldFlagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "newFlagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "oldFlagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "newFlagFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
