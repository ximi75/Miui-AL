.class public Lcom/kingsoft/common/OperationSchedulerTest;
.super Landroid/test/AndroidTestCase;
.source "OperationSchedulerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/common/OperationSchedulerTest;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/OperationSchedulerTest;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingsoft/common/OperationSchedulerTest;->getFreshStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getFreshStorage()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/kingsoft/common/OperationSchedulerTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "OperationSchedulerTest"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-object v0
.end method


# virtual methods
.method public testClockRollbackScenario()V
    .locals 20
    .annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;-><init>(Lcom/kingsoft/common/OperationSchedulerTest;)V

    .line 211
    .local v13, "scheduler":Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;
    new-instance v12, Lcom/kingsoft/common/OperationScheduler$Options;

    invoke-direct {v12}, Lcom/kingsoft/common/OperationScheduler$Options;-><init>()V

    .line 212
    .local v12, "options":Lcom/kingsoft/common/OperationScheduler$Options;
    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/kingsoft/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 217
    iget-wide v10, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 218
    .local v10, "beforeTrigger":J
    const-wide/32 v16, 0x989680

    sub-long v14, v10, v16

    .line 219
    .local v14, "triggerTime":J
    invoke-virtual {v13, v14, v15}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 220
    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 221
    const-wide/16 v16, 0x0

    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 223
    iget-wide v0, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x64

    add-long v8, v16, v18

    iput-wide v8, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 224
    .local v8, "beforeSuccess":J
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onSuccess()V

    .line 225
    invoke-virtual {v13, v14, v15}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 226
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 227
    const-wide/16 v16, 0x7d0

    add-long v16, v16, v8

    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 229
    iget-wide v0, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x64

    add-long v2, v16, v18

    iput-wide v2, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 230
    .local v2, "beforeError":J
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 231
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 232
    const-wide/16 v16, 0x1388

    add-long v16, v16, v2

    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 234
    iget-wide v0, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    iput-wide v4, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 235
    .local v4, "beforeMoratorium":J
    const-wide/32 v16, 0xf4240

    add-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeMillis(J)V

    .line 236
    const-wide/32 v16, 0xf4240

    add-long v16, v16, v10

    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 240
    const-wide/16 v16, 0x2710

    sub-long v6, v10, v16

    iput-wide v6, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 241
    .local v6, "beforeRollback":J
    const-wide/32 v16, 0xf4240

    add-long v16, v16, v10

    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 244
    iget-wide v0, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    move-wide/from16 v16, v0

    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 249
    const-wide/32 v16, 0x5f5e100

    sub-long v6, v10, v16

    iput-wide v6, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 250
    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 251
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 254
    const-wide/32 v16, 0x4c4b40

    add-long v16, v16, v14

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 255
    invoke-virtual {v13, v12}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 256
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 257
    invoke-virtual {v13}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 258
    return-void
.end method

.method public testExponentialBackoff()V
    .locals 10
    .annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xa

    .line 124
    new-instance v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;

    invoke-direct {v3, p0}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;-><init>(Lcom/kingsoft/common/OperationSchedulerTest;)V

    .line 125
    .local v3, "scheduler":Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;
    new-instance v2, Lcom/kingsoft/common/OperationScheduler$Options;

    invoke-direct {v2}, Lcom/kingsoft/common/OperationScheduler$Options;-><init>()V

    .line 126
    .local v2, "options":Lcom/kingsoft/common/OperationScheduler$Options;
    const-wide/16 v4, 0x64

    iput-wide v4, v2, Lcom/kingsoft/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 127
    const-wide/16 v4, 0x3e8

    iput-wide v4, v2, Lcom/kingsoft/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 128
    const/16 v4, 0x2710

    iput v4, v2, Lcom/kingsoft/common/OperationScheduler$Options;->backoffExponentialMillis:I

    .line 129
    invoke-virtual {v3, v6, v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 130
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setEnabledState(Z)V

    .line 133
    iget-wide v4, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    add-long v0, v4, v8

    iput-wide v0, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 134
    .local v0, "beforeError":J
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 135
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 136
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 137
    const-wide/16 v4, 0x2b5c

    add-long/2addr v4, v0

    invoke-virtual {v3, v2}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 140
    iget-wide v4, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    add-long v0, v4, v8

    iput-wide v0, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 141
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 142
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 143
    const-wide/16 v4, 0x5654

    add-long/2addr v4, v0

    invoke-virtual {v3, v2}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 146
    iget-wide v4, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    add-long v0, v4, v8

    iput-wide v0, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 147
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 148
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 149
    const-wide/32 v4, 0xa85c

    add-long/2addr v4, v0

    invoke-virtual {v3, v2}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 152
    iget-wide v4, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    add-long v0, v4, v8

    iput-wide v0, v3, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 153
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 154
    invoke-virtual {v3}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 155
    const-wide/32 v4, 0x14884

    add-long/2addr v4, v0

    invoke-virtual {v3, v2}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 156
    return-void
.end method

.method public testMoratoriumWithHttpDate()V
    .locals 12
    .annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;

    invoke-direct {v7, p0}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;-><init>(Lcom/kingsoft/common/OperationSchedulerTest;)V

    .line 186
    .local v7, "scheduler":Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;
    new-instance v6, Lcom/kingsoft/common/OperationScheduler$Options;

    invoke-direct {v6}, Lcom/kingsoft/common/OperationScheduler$Options;-><init>()V

    .line 188
    .local v6, "options":Lcom/kingsoft/common/OperationScheduler$Options;
    iget-wide v4, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 189
    .local v4, "beforeTrigger":J
    const-wide/32 v8, 0xf4240

    add-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 190
    const-wide/32 v8, 0xf4240

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 192
    const-wide/32 v8, 0x1e8480

    add-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeMillis(J)V

    .line 193
    const-wide/32 v8, 0x1e8480

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 195
    iget-wide v2, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 196
    .local v2, "beforeMoratorium":J
    const-string/jumbo v8, "3000"

    invoke-virtual {v7, v8}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/kingsoft/common/OperationSchedulerTest;->assertTrue(Z)V

    .line 197
    iget-wide v0, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 198
    .local v0, "afterMoratorium":J
    const-wide/32 v8, 0x2dc6c0

    add-long/2addr v8, v2

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/kingsoft/common/OperationSchedulerTest;->assertTrue(Z)V

    .line 199
    const-wide/32 v8, 0x2dc6c0

    add-long/2addr v8, v0

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Lcom/kingsoft/common/OperationSchedulerTest;->assertTrue(Z)V

    .line 201
    const-wide v8, 0x3fffffffffffffffL

    iput-wide v8, v6, Lcom/kingsoft/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    .line 202
    const-string/jumbo v8, "Fri, 31 Dec 2030 23:59:59 GMT"

    invoke-virtual {v7, v8}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/kingsoft/common/OperationSchedulerTest;->assertTrue(Z)V

    .line 203
    const-wide v8, 0x1c03276dc18L

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 205
    const-string/jumbo v8, "not actually a date"

    invoke-virtual {v7, v8}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/kingsoft/common/OperationSchedulerTest;->assertFalse(Z)V

    .line 206
    return-void

    .line 198
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public testParseOptions()V
    .locals 3
    .annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/kingsoft/common/OperationScheduler$Options;

    invoke-direct {v0}, Lcom/kingsoft/common/OperationScheduler$Options;-><init>()V

    .line 161
    .local v0, "options":Lcom/kingsoft/common/OperationScheduler$Options;
    const-string/jumbo v1, "OperationScheduler.Options[backoff=0.0+5.0 max=86400.0 min=0.0 period=3600.0]"

    const-string/jumbo v2, "3600"

    invoke-static {v2, v0}, Lcom/kingsoft/common/OperationScheduler;->parseOptions(Ljava/lang/String;Lcom/kingsoft/common/OperationScheduler$Options;)Lcom/kingsoft/common/OperationScheduler$Options;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/common/OperationScheduler$Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "OperationScheduler.Options[backoff=0.0+2.5 max=86400.0 min=0.0 period=3700.0]"

    const-string/jumbo v2, "backoff=+2.5 3700"

    invoke-static {v2, v0}, Lcom/kingsoft/common/OperationScheduler;->parseOptions(Ljava/lang/String;Lcom/kingsoft/common/OperationScheduler$Options;)Lcom/kingsoft/common/OperationScheduler$Options;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/common/OperationScheduler$Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "OperationScheduler.Options[backoff=10.0+2.5 max=12345.6 min=7.0 period=3800.0]"

    const-string/jumbo v2, "max=12345.6 min=7 backoff=10 period=3800"

    invoke-static {v2, v0}, Lcom/kingsoft/common/OperationScheduler;->parseOptions(Ljava/lang/String;Lcom/kingsoft/common/OperationScheduler$Options;)Lcom/kingsoft/common/OperationScheduler$Options;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/common/OperationScheduler$Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "OperationScheduler.Options[backoff=10.0+2.5 max=12345.6 min=7.0 period=3800.0]"

    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/kingsoft/common/OperationScheduler;->parseOptions(Ljava/lang/String;Lcom/kingsoft/common/OperationScheduler$Options;)Lcom/kingsoft/common/OperationScheduler$Options;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/common/OperationScheduler$Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "OperationScheduler.Options[backoff=5.0+2.5+10.0 max=12345.6 min=7.0 period=3600.0]"

    const-string/jumbo v2, "backoff=5.0++10.0 3600"

    invoke-static {v2, v0}, Lcom/kingsoft/common/OperationScheduler;->parseOptions(Ljava/lang/String;Lcom/kingsoft/common/OperationScheduler$Options;)Lcom/kingsoft/common/OperationScheduler$Options;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/common/OperationScheduler$Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public testScheduler()V
    .locals 12
    .annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;

    invoke-direct {v7, p0}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;-><init>(Lcom/kingsoft/common/OperationSchedulerTest;)V

    .line 47
    .local v7, "scheduler":Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;
    new-instance v6, Lcom/kingsoft/common/OperationScheduler$Options;

    invoke-direct {v6}, Lcom/kingsoft/common/OperationScheduler$Options;-><init>()V

    .line 48
    .local v6, "options":Lcom/kingsoft/common/OperationScheduler$Options;
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 49
    const-wide/16 v8, 0x0

    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 50
    const-wide/16 v8, 0x0

    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 52
    iget-wide v4, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 53
    .local v4, "beforeTrigger":J
    const-wide/32 v8, 0xf4240

    add-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 54
    const-wide/32 v8, 0xf4240

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 57
    const-wide/32 v8, 0x7a120

    add-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeMillis(J)V

    .line 58
    const-wide/32 v8, 0xf4240

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 59
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeMillis(J)V

    .line 60
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 63
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setEnabledState(Z)V

    .line 64
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 65
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setEnabledState(Z)V

    .line 66
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 69
    iget-wide v8, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    const-wide/16 v10, 0x64

    add-long v0, v8, v10

    iput-wide v0, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 70
    .local v0, "beforeError":J
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 71
    const-wide/16 v8, 0x0

    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 72
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 73
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 74
    const-wide/32 v8, 0xf4240

    iput-wide v8, v6, Lcom/kingsoft/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 75
    const-wide/32 v8, 0x7a120

    iput-wide v8, v6, Lcom/kingsoft/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 76
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v0

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 79
    iget-wide v8, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    const-wide/16 v10, 0x64

    add-long v0, v8, v10

    iput-wide v0, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 80
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onTransientError()V

    .line 81
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 82
    const-wide/32 v8, 0x1e8480

    add-long/2addr v8, v0

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 85
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->resetTransientError()V

    .line 86
    const-wide/16 v8, 0x0

    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 87
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 88
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 92
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onPermanentError()V

    .line 93
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 94
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->resetTransientError()V

    .line 95
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 96
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->resetPermanentError()V

    .line 97
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 100
    iget-wide v8, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    const-wide/16 v10, 0x64

    add-long v2, v8, v10

    iput-wide v2, v7, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 101
    .local v2, "beforeSuccess":J
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->onSuccess()V

    .line 102
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastAttemptTimeMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 103
    invoke-virtual {v7}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 104
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 107
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 108
    const-wide/32 v8, 0x16e360

    add-long/2addr v8, v4

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 109
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setMoratoriumTimeMillis(J)V

    .line 110
    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 113
    const-wide/32 v8, 0x3d090

    iput-wide v8, v6, Lcom/kingsoft/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 114
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->setTriggerTimeMillis(J)V

    .line 115
    const-wide/32 v8, 0x3d090

    add-long/2addr v8, v2

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 118
    const-wide/32 v8, 0xf4240

    iput-wide v8, v6, Lcom/kingsoft/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 119
    const-wide/32 v8, 0xf4240

    add-long/2addr v8, v2

    invoke-virtual {v7, v6}, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->getNextTimeMillis(Lcom/kingsoft/common/OperationScheduler$Options;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/common/OperationSchedulerTest;->assertEquals(JJ)V

    .line 120
    return-void
.end method
