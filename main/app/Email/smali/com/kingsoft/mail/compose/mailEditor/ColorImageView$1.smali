.class Lcom/kingsoft/mail/compose/mailEditor/ColorImageView$1;
.super Ljava/lang/Object;
.source "ColorImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView$1;->this$0:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView$1;->this$0:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    const/4 v1, 0x0

    # invokes: Landroid/view/View;->setPressed(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->access$001(Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;Z)V

    .line 90
    return-void
.end method
