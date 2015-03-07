.class public Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
.super Landroid/app/DialogFragment;
.source "AttachmentDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachmentFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    return-void
.end method

.method public static cancelAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V
    .locals 4
    .param p0, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "clickOn"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v1, "AttachmentFragment"

    const-string/jumbo v2, "The attachment, fragment manager or context may be invalid!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertAttachmentToUiAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v0

    .line 255
    .local v0, "uiAttachment":Lcom/kingsoft/mail/providers/Attachment;
    invoke-static {v0, p1, p2, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public static cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V
    .locals 5
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "clickOn"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 412
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 413
    :cond_0
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 430
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-static {p3}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 418
    .local v1, "network":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 419
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 420
    invoke-static {p0, p2, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showCancelDialog(Lcom/kingsoft/mail/providers/Attachment;ILandroid/app/FragmentManager;)V

    goto :goto_0

    .line 422
    :cond_2
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-direct {v0, p3, v3}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 423
    .local v0, "handler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 424
    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->cancelAttachment(Ljava/lang/Long;)V

    goto :goto_0

    .line 427
    .end local v0    # "handler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    :cond_3
    invoke-static {p0, p2, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showCancelDialog(Lcom/kingsoft/mail/providers/Attachment;ILandroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public static cancelAttachmentsByMsgId(Landroid/content/Context;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 463
    if-nez p0, :cond_1

    .line 464
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "The context is invalid"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 469
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v5

    const-string/jumbo v4, "uiState"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 473
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 475
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 477
    .local v8, "id":J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    .line 479
    .local v10, "state":J
    const-wide/16 v2, 0x2

    cmp-long v0, v10, v2

    if-nez v0, :cond_2

    .line 480
    new-instance v6, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 482
    .local v6, "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->cancelAttachment(Ljava/lang/Long;)V

    .line 483
    invoke-static {v8, v9}, Lcom/kingsoft/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 488
    .end local v6    # "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .end local v8    # "id":J
    .end local v10    # "state":J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private cancelWithPrompt(Lcom/kingsoft/mail/providers/Attachment;)Landroid/app/Dialog;
    .locals 5
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-object v1

    .line 104
    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v2, 0x7f100189

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10018a

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100181

    new-instance v4, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;

    invoke-direct {v4, p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;Lcom/kingsoft/mail/providers/Attachment;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100182

    invoke-virtual {v2, v3, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method private createActivityNotFoundDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f10028b

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10028a

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10012d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createBlockedDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f1000f1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10012d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createNetworkDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f100283

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10037c

    new-instance v3, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$4;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100108

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private downloadAllWithPrompt(J)Landroid/app/Dialog;
    .locals 4
    .param p1, "messageId"    # J

    .prologue
    .line 84
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100185

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1002a0

    new-instance v3, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;J)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100108

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static downloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V
    .locals 4
    .param p0, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "clickOn"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 230
    :cond_0
    const-string/jumbo v1, "AttachmentFragment"

    const-string/jumbo v2, "The attachment, fragment manager or context may be invalid!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertAttachmentToUiAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v0

    .line 236
    .local v0, "uiAttachment":Lcom/kingsoft/mail/providers/Attachment;
    invoke-static {v0, p1, p2, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public static downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V
    .locals 5
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "clickOn"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 380
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 381
    :cond_0
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 401
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-static {p3}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 387
    .local v1, "network":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 388
    invoke-static {p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 389
    :cond_2
    if-ne v1, v3, :cond_4

    .line 390
    if-nez p2, :cond_3

    .line 391
    invoke-static {p0, p2, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showDownloadDialog(Lcom/kingsoft/mail/providers/Attachment;ILandroid/app/FragmentManager;)V

    goto :goto_0

    .line 393
    :cond_3
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 394
    .local v0, "handler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 395
    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    goto :goto_0

    .line 398
    .end local v0    # "handler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    :cond_4
    invoke-static {p0, p2, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showDownloadDialog(Lcom/kingsoft/mail/providers/Attachment;ILandroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public static downloadAttachmentsByMsgId(Landroid/app/FragmentManager;Landroid/content/Context;J)V
    .locals 4
    .param p0, "fm"    # Landroid/app/FragmentManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # J

    .prologue
    .line 439
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 440
    :cond_0
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "The context or fragment manager is invalid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 453
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 446
    .local v0, "network":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 447
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 448
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 449
    invoke-static {p1, p2, p3}, Lcom/kingsoft/mail/utils/AttachmentUtils;->downloadAttachmentImmediately(Landroid/content/Context;J)V

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {p2, p3, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showDownloadAllDialog(JLandroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method private downloadWithPrompt(Lcom/kingsoft/mail/providers/Attachment;)Landroid/app/Dialog;
    .locals 9
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v2, 0x0

    .line 61
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-object v2

    .line 65
    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10018d

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100183

    new-instance v5, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$1;

    invoke-direct {v5, p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$1;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;Lcom/kingsoft/mail/providers/Attachment;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100107

    invoke-virtual {v3, v4, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public static showActivityNotFoundDialog(Landroid/app/FragmentManager;)V
    .locals 5
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 340
    if-nez p0, :cond_0

    .line 341
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;-><init>()V

    .line 346
    .local v1, "dlg":Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "dialogType"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 351
    const-string/jumbo v2, "activityNotFound"

    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showBlockedDialog(Landroid/app/FragmentManager;)V
    .locals 5
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;-><init>()V

    .line 326
    .local v1, "dlg":Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "dialogType"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 331
    const-string/jumbo v2, "blocked"

    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showCancelDialog(Lcom/kingsoft/mail/providers/Attachment;ILandroid/app/FragmentManager;)V
    .locals 5
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p1, "clickOn"    # I
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 355
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 356
    :cond_0
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;-><init>()V

    .line 361
    .local v1, "dlg":Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "attachment"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    const-string/jumbo v2, "dialogType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    const-string/jumbo v2, "clickOn"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 368
    const-string/jumbo v2, "cancelDownload"

    invoke-virtual {v1, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showDownloadAllDialog(JLandroid/app/FragmentManager;)V
    .locals 5
    .param p0, "messageId"    # J
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 283
    if-nez p2, :cond_0

    .line 284
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;-><init>()V

    .line 289
    .local v1, "dlg":Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "messageId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 292
    const-string/jumbo v2, "dialogType"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 295
    const-string/jumbo v2, "downloadAll"

    invoke-virtual {v1, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showDownloadDialog(Lcom/kingsoft/mail/providers/Attachment;ILandroid/app/FragmentManager;)V
    .locals 5
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p1, "clickOn"    # I
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 266
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 267
    :cond_0
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "An invalid attachment or fragment manager!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 280
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;-><init>()V

    .line 272
    .local v1, "dlg":Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "attachment"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    const-string/jumbo v2, "dialogType"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string/jumbo v2, "clickOn"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 279
    const-string/jumbo v2, "download"

    invoke-virtual {v1, p2, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showNetworkDialog(Landroid/app/FragmentManager;)V
    .locals 5
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    const-string/jumbo v2, "AttachmentFragment"

    const-string/jumbo v3, "attachment, fragment manager or context is invalid!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v1, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;-><init>()V

    .line 310
    .local v1, "dlg":Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "dialogType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 315
    const-string/jumbo v2, "download"

    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->setRetainInstance(Z)V

    .line 50
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 172
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 173
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "dialogType"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 174
    .local v3, "dialogType":I
    const-string/jumbo v6, "clickOn"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, "clickOn":I
    const/4 v6, 0x6

    if-ne v3, v6, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->createBlockedDialog()Landroid/app/Dialog;

    move-result-object v6

    .line 216
    :goto_0
    return-object v6

    .line 182
    :cond_0
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->createActivityNotFoundDialog()Landroid/app/Dialog;

    move-result-object v6

    goto :goto_0

    .line 186
    :cond_1
    const-string/jumbo v6, "attachment"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 189
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    if-ne v3, v7, :cond_2

    .line 190
    if-ne v2, v8, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/kingsoft/mail/utils/AttachmentUtils;->cancelDownloadNow(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)V

    .line 199
    :cond_2
    if-ne v3, v8, :cond_4

    .line 200
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->createNetworkDialog()Landroid/app/Dialog;

    move-result-object v6

    goto :goto_0

    .line 192
    :cond_3
    if-ne v2, v7, :cond_2

    .line 193
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelWithPrompt(Lcom/kingsoft/mail/providers/Attachment;)Landroid/app/Dialog;

    move-result-object v6

    goto :goto_0

    .line 204
    :cond_4
    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    .line 205
    const-string/jumbo v6, "messageId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 206
    .local v4, "messageId":J
    invoke-direct {p0, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAllWithPrompt(J)Landroid/app/Dialog;

    move-result-object v6

    goto :goto_0

    .line 210
    .end local v4    # "messageId":J
    :cond_5
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 212
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadWithPrompt(Lcom/kingsoft/mail/providers/Attachment;)Landroid/app/Dialog;

    move-result-object v6

    goto :goto_0

    .line 216
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 57
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 58
    return-void
.end method
