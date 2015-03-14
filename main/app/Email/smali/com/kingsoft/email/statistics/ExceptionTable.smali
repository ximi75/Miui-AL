.class Lcom/kingsoft/email/statistics/ExceptionTable;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Lcom/kingsoft/email/statistics/Column;


# static fields
.field public static final EXCEPTION_MD5:Ljava/lang/String; = "md5"

.field public static final EXCEPTION_NAME:Ljava/lang/String; = "exceptType"

.field public static final EXCEPTION_STACK:Ljava/lang/String; = "stacktrace"

.field public static final EXCEPTION_TIME:Ljava/lang/String; = "exceptTime"

.field public static final EXCEPTION_VERSION:Ljava/lang/String; = "version"

.field public static final TABLE_NAME:Ljava/lang/String; = "exceptions"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
