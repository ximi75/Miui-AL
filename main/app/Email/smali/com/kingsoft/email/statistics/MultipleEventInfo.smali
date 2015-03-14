.class Lcom/kingsoft/email/statistics/MultipleEventInfo;
.super Lcom/kingsoft/email/statistics/Info;
.source "Info.java"


# instance fields
.field eventKey:Ljava/lang/String;

.field eventType:I

.field plusable:I

.field state:I

.field subKey:Ljava/lang/String;

.field subValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/Info;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->state:I

    .line 45
    const-string/jumbo v0, "MultipleEvents"

    iput-object v0, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->tableName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public toValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "eventName"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->eventKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "eventType"

    iget v2, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->eventType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string/jumbo v1, "subKey"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->subKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "subValue"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->subValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "eventTime"

    iget-object v2, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    return-object v0
.end method
