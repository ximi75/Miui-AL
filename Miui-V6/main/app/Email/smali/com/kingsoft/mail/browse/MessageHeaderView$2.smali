.class Lcom/kingsoft/mail/browse/MessageHeaderView$2;
.super Landroid/content/AsyncQueryHandler;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/MessageHeaderView;->getQueryHandler()Landroid/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MessageHeaderView;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$2;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method
