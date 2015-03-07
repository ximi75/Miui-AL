.class Lcom/kingsoft/email/statistics/MultipleUserEventInfo;
.super Lcom/kingsoft/email/statistics/MultipleEventInfo;
.source "Info.java"


# instance fields
.field email:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/MultipleEventInfo;-><init>()V

    .line 65
    const-string/jumbo v0, "MultipleUserEvents"

    iput-object v0, p0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->tableName:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public toValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/kingsoft/email/statistics/MultipleEventInfo;->toValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 71
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v0
.end method
