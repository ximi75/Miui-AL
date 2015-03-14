.class Lcom/kingsoft/mail/MinTimeProgressView$1;
.super Ljava/lang/Object;
.source "MinTimeProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/MinTimeProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/MinTimeProgressView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/MinTimeProgressView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingsoft/mail/MinTimeProgressView$1;->this$0:Lcom/kingsoft/mail/MinTimeProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView$1;->this$0:Lcom/kingsoft/mail/MinTimeProgressView;

    const/16 v1, 0x8

    # invokes: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/MinTimeProgressView;->access$001(Lcom/kingsoft/mail/MinTimeProgressView;I)V

    .line 60
    return-void
.end method
