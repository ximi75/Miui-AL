.class public Lcom/kingsoft/email/data/ClosingMatrixCursor;
.super Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;
.source "ClosingMatrixCursor.java"


# instance fields
.field private final mInnerCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "innerCursor"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/kingsoft/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingsoft/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/kingsoft/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;->close()V

    .line 42
    return-void
.end method
