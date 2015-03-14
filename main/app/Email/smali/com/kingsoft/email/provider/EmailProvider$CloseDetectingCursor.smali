.class Lcom/kingsoft/email/provider/EmailProvider$CloseDetectingCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CloseDetectingCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 5779
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 5780
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 5784
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 5785
    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Closing cursor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5786
    return-void
.end method
