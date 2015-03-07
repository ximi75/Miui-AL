.class Lcom/kingsoft/email/statistics/EventInfo;
.super Lcom/kingsoft/email/statistics/Info;
.source "Info.java"


# instance fields
.field name:Ljava/lang/String;

.field plusable:I

.field state:I

.field type:I

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/Info;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/statistics/EventInfo;->state:I

    .line 20
    const-string/jumbo v0, "events"

    iput-object v0, p0, Lcom/kingsoft/email/statistics/EventInfo;->tableName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public toValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "eventName"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/EventInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "eventType"

    iget v2, p0, Lcom/kingsoft/email/statistics/EventInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    const-string/jumbo v1, "event"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/EventInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v1, "plusable"

    iget v2, p0, Lcom/kingsoft/email/statistics/EventInfo;->plusable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string/jumbo v1, "eventTime"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/EventInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/kingsoft/email/statistics/EventInfo;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    return-object v0
.end method
