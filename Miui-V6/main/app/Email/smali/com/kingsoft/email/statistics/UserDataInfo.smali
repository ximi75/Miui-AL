.class Lcom/kingsoft/email/statistics/UserDataInfo;
.super Lcom/kingsoft/email/statistics/Info;
.source "Info.java"


# instance fields
.field dataName:Ljava/lang/String;

.field state:I

.field type:I

.field user:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/Info;-><init>()V

    .line 82
    iput v0, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->type:I

    .line 83
    iput v0, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->state:I

    .line 86
    const-string/jumbo v0, "userdatas"

    iput-object v0, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->tableName:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public toValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "eventName"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->dataName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "plusable"

    iget v2, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string/jumbo v1, "event"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "eventTime"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/kingsoft/email/statistics/UserDataInfo;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    return-object v0
.end method
