.class public Lcom/kingsoft/email/mail/attachment/AttachmentContants$SortOrder;
.super Ljava/lang/Object;
.source "AttachmentContants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortOrder"
.end annotation


# static fields
.field public static final ORDER_KEY_ATT_PREVIEW_TIME:Ljava/lang/String; = "previewTime desc"

.field public static final ORDER_KEY_ATT_SAVE_STATUS:Ljava/lang/String; = "uiState"

.field public static final ORDER_KEY_ATT_SIZE:Ljava/lang/String; = "size"

.field public static final ORDER_KEY_FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final ORDER_KEY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final ORDER_KEY_RECV_TIME:Ljava/lang/String; = "recvTime"

.field public static final ORDER_KEY_SENDER_ADDRESS:Ljava/lang/String; = "senderAddress"

.field public static final ORDER_KEY_SENDER_DISPLAY_NAME:Ljava/lang/String; = "senderDisplayName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
