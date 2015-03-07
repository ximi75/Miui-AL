.class Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;
.super Ljava/lang/Thread;
.source "AttachmentUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteAttachmentInBackground"
.end annotation


# instance fields
.field private mAccountKey:J

.field private mContext:Landroid/content/Context;

.field private mExternalAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p4, "internalAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p5, "externalAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mContext:Landroid/content/Context;

    .line 470
    iput-wide p2, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mAccountKey:J

    .line 471
    iput-object p4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mInternalAttachments:Ljava/util/ArrayList;

    .line 472
    iput-object p5, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mExternalAttachments:Ljava/util/ArrayList;

    .line 473
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 477
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 479
    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mInternalAttachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mInternalAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mInternalAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 481
    .local v1, "id":J
    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mAccountKey:J

    invoke-static {v4, v5, v6, v1, v2}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteInternalAttachment(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 485
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":J
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mExternalAttachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mExternalAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 486
    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mExternalAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 487
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Lcom/kingsoft/email/mail/attachment/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "content uri is null!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 491
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities$DeleteAttachmentInBackground;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteExternalAttachment(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 494
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    return-void
.end method
