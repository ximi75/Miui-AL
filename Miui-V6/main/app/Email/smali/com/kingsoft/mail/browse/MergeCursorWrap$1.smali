.class Lcom/kingsoft/mail/browse/MergeCursorWrap$1;
.super Landroid/database/DataSetObserver;
.source "MergeCursorWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MergeCursorWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MergeCursorWrap;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MergeCursorWrap;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap$1;->this$0:Lcom/kingsoft/mail/browse/MergeCursorWrap;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap$1;->this$0:Lcom/kingsoft/mail/browse/MergeCursorWrap;

    const/4 v1, -0x1

    # setter for: Lcom/kingsoft/mail/browse/MergeCursorWrap;->mPos:I
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/MergeCursorWrap;->access$002(Lcom/kingsoft/mail/browse/MergeCursorWrap;I)I

    .line 18
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap$1;->this$0:Lcom/kingsoft/mail/browse/MergeCursorWrap;

    const/4 v1, -0x1

    # setter for: Lcom/kingsoft/mail/browse/MergeCursorWrap;->mPos:I
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/MergeCursorWrap;->access$102(Lcom/kingsoft/mail/browse/MergeCursorWrap;I)I

    .line 23
    return-void
.end method
