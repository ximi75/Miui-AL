.class final Lcom/kingsoft/emailcommon/utility/Utility$5;
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
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "column"    # I

    .prologue
    .line 698
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 695
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/emailcommon/utility/Utility$5;->get(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
