.class public final Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasChildren;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EasChildren"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/eas_children"

.field public static final MAX_CHILDREN:I = 0x8

.field public static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 679
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasChildren;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
