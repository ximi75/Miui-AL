.class Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
.super Ljava/lang/Exception;
.source "AttachmentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/AttachmentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachmentFailureException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errorRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 556
    const v0, 0x7f1001ed

    iput v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    .line 557
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "errorRes"    # I

    .prologue
    .line 560
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 561
    iput p2, p0, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    .line 562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    const v0, 0x7f1001ed

    iput v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    .line 567
    return-void
.end method


# virtual methods
.method public getErrorRes()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    return v0
.end method
