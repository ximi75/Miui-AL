.class public interface abstract Lcom/kingsoft/email/provider/ContactContent$Crowdsourcing;
.super Ljava/lang/Object;
.source "ContactContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/ContactContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Crowdsourcing"
.end annotation


# static fields
.field public static final CROWDSOURCING_PROJECTCION:[Ljava/lang/String;

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DATA4:Ljava/lang/String; = "data4"

.field public static final DATA5:Ljava/lang/String; = "data5"

.field public static final DATA6:Ljava/lang/String; = "data6"

.field public static final DATA7:Ljava/lang/String; = "data7"

.field public static final DATA8:Ljava/lang/String; = "data8"

.field public static final DATA9:Ljava/lang/String; = "data9"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INDEX_DATA1:I = 0x2

.field public static final INDEX_DATA2:I = 0x3

.field public static final INDEX_DATA3:I = 0x4

.field public static final INDEX_DATA4:I = 0x5

.field public static final INDEX_DATA5:I = 0x6

.field public static final INDEX_DATA6:I = 0x7

.field public static final INDEX_DATA7:I = 0x8

.field public static final INDEX_DATA8:I = 0x9

.field public static final INDEX_DATA9:I = 0xa

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_SOURCE_TYPE:I = 0x1

.field public static final SOURCE_TYPE_ID:Ljava/lang/String; = "source_type_id"

.field public static final SOURCE_TYPE_ROBOT:I = 0x0

.field public static final SOURCE_TYPE_SIGNATURE:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "crowdsourcing"

.field public static final TYPE_SIGNATURE_SPECIAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "source_type_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/provider/ContactContent$Crowdsourcing;->CROWDSOURCING_PROJECTCION:[Ljava/lang/String;

    return-void
.end method
