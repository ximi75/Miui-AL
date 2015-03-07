.class public Lcom/kingsoft/email/activity/EventViewer;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "EventViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super/range {p0 .. p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/EventViewer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 41
    .local v25, "uri":Landroid/net/Uri;
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 42
    .local v17, "messageId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v19

    .line 43
    .local v19, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v19, :cond_0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/EventViewer;->finish()V

    .line 86
    .end local v17    # "messageId":J
    .end local v19    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v25    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 46
    .restart local v17    # "messageId":J
    .restart local v19    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v25    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v15, Lcom/kingsoft/emailcommon/mail/PackedString;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v15, v3}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 47
    .local v15, "info":Lcom/kingsoft/emailcommon/mail/PackedString;
    const-string/jumbo v3, "UID"

    invoke-virtual {v15, v3}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 48
    .local v24, "uid":Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 49
    .local v13, "eventId":J
    if-eqz v24, :cond_2

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/EventViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const-string/jumbo v6, "sync_data2=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v24, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 54
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 56
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 57
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v13

    .line 61
    :cond_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 65
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_2
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v16, "intent":Landroid/content/Intent;
    const-wide/16 v3, -0x1

    cmp-long v3, v13, v3

    if-eqz v3, :cond_3

    .line 67
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 68
    const-string/jumbo v3, "DTSTART"

    invoke-virtual {v15, v3}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v20

    .line 69
    .local v20, "start":J
    const-string/jumbo v3, "DTEND"

    invoke-virtual {v15, v3}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v11

    .line 70
    .local v11, "end":J
    const-string/jumbo v3, "beginTime"

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 71
    const-string/jumbo v3, "endTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    .end local v11    # "end":J
    .end local v20    # "start":J
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    const/high16 v3, 0x80000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/EventViewer;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/EventViewer;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 83
    .end local v13    # "eventId":J
    .end local v15    # "info":Lcom/kingsoft/emailcommon/mail/PackedString;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "messageId":J
    .end local v19    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v24    # "uid":Ljava/lang/String;
    .end local v25    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 84
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/EventViewer;->finish()V

    goto/16 :goto_0

    .line 61
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v13    # "eventId":J
    .restart local v15    # "info":Lcom/kingsoft/emailcommon/mail/PackedString;
    .restart local v17    # "messageId":J
    .restart local v19    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v24    # "uid":Ljava/lang/String;
    .restart local v25    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 73
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v3, "DTSTART"

    invoke-virtual {v15, v3}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v22

    .line 75
    .local v22, "time":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://com.android.calendar/time/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 76
    const-string/jumbo v3, "VIEW"

    const-string/jumbo v4, "DAY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 91
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 96
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 97
    return-void
.end method
