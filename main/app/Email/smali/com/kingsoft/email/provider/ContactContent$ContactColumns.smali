.class public interface abstract Lcom/kingsoft/email/provider/ContactContent$ContactColumns;
.super Ljava/lang/Object;
.source "ContactContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/ContactContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactColumns"
.end annotation


# static fields
.field public static final BLIST:Ljava/lang/String; = "blacklist"

.field public static final CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "email"

.field public static final ENABLE:Ljava/lang/String; = "isenable"

.field public static final FPY:Ljava/lang/String; = "fristpinyin"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INDEX_BLIST:I = 0x3

.field public static final INDEX_EMAIL_ADDRESS:I = 0x2

.field public static final INDEX_ENABLE:I = 0x9

.field public static final INDEX_FPY:I = 0x8

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_ISSELECT:I = 0xd

.field public static final INDEX_MY_EMAIL:I = 0xa

.field public static final INDEX_NAME:I = 0x1

.field public static final INDEX_NICK_NAME:I = 0x6

.field public static final INDEX_PY:I = 0x7

.field public static final INDEX_TIMESTAMP:I = 0xc

.field public static final INDEX_USE_LAST_TIME:I = 0xb

.field public static final INDEX_WEIGHT:I = 0x5

.field public static final INDEX_WLIST:I = 0x4

.field public static final ISSELECT:Ljava/lang/String; = "selected"

.field public static final MY_EMAIL:Ljava/lang/String; = "myemail"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NICK_NAME:Ljava/lang/String; = "nickname"

.field public static final PY:Ljava/lang/String; = "pinyin"

.field public static final TABLE_NAME:Ljava/lang/String; = "contact_table"

.field public static final TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final USE_LAST_TIME:Ljava/lang/String; = "lasttime"

.field public static final WEIGHT:Ljava/lang/String; = "weight"

.field public static final WLIST:Ljava/lang/String; = "writelist"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "blacklist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "writelist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "weight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "fristpinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "isenable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "myemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "lasttime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "timeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/provider/ContactContent$ContactColumns;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method
