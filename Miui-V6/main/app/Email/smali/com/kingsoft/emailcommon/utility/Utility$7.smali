.class final Lcom/kingsoft/emailcommon/utility/Utility$7;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/utility/Utility$CursorGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingsoft/emailcommon/utility/Utility$CursorGetter",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 709
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/emailcommon/utility/Utility$7;->get(Landroid/database/Cursor;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "column"    # I

    .prologue
    .line 712
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method
