.class public Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
.super Ljava/lang/Object;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortEntry"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public order:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
