.class public Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
.super Ljava/lang/Object;
.source "ComposeActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendOrSaveMessage"
.end annotation


# instance fields
.field final mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

.field final mRefMessageId:Ljava/lang/String;

.field final mRequestId:I

.field public final mSave:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/ReplyFromAccount;Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "refMessageId"    # Ljava/lang/String;
    .param p6, "save"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3290
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3291
    iput-object p2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 3292
    iput-object p3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    .line 3293
    iput-object p4, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mRefMessageId:Ljava/lang/String;

    .line 3294
    iput-boolean p6, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mSave:Z

    .line 3295
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mRequestId:I

    .line 3297
    return-void
.end method


# virtual methods
.method requestId()I
    .locals 1

    .prologue
    .line 3300
    iget v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mRequestId:I

    return v0
.end method
