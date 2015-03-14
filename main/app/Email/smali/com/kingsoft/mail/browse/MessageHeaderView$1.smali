.class Lcom/kingsoft/mail/browse/MessageHeaderView$1;
.super Landroid/database/DataSetObserver;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$1;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$1;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # invokes: Lcom/kingsoft/mail/browse/MessageHeaderView;->updateContactInfo()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$000(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    .line 207
    return-void
.end method
