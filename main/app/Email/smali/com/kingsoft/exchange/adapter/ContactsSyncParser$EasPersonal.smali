.class public final Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EasPersonal"
.end annotation


# static fields
.field public static final ANNIVERSARY:Ljava/lang/String; = "data2"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/eas_personal"

.field public static final FILE_AS:Ljava/lang/String; = "data4"


# instance fields
.field anniversary:Ljava/lang/String;

.field fileAs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasData()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->anniversary:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->fileAs:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
