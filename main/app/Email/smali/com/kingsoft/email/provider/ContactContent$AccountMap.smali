.class public interface abstract Lcom/kingsoft/email/provider/ContactContent$AccountMap;
.super Ljava/lang/Object;
.source "ContactContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/ContactContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountMap"
.end annotation


# static fields
.field public static final ACCOUNTMAP_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_KEY:Ljava/lang/String; = "key"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final INDEX_EMAIL:I = 0x1

.field public static final INDEX_KEY:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "map_table"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/provider/ContactContent$AccountMap;->ACCOUNTMAP_PROJECTION:[Ljava/lang/String;

    return-void
.end method
