.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$3;
.super Ljava/lang/Object;
.source "ZipViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->customizeActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$3;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$3;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->onBackPressed()V

    .line 447
    return-void
.end method
