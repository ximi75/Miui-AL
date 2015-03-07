.class abstract Lcom/kingsoft/email/statistics/Info;
.super Ljava/lang/Object;
.source "Info.java"


# instance fields
.field public tableName:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toValues()Landroid/content/ContentValues;
.end method
