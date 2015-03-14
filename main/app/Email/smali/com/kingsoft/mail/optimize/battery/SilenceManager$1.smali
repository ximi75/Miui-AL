.class Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;
.super Ljava/lang/Object;
.source "SilenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/optimize/battery/SilenceManager;->handleSilenceModeAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/optimize/battery/SilenceManager;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/optimize/battery/SilenceManager;Z)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;->this$0:Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    iput-boolean p2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;->this$0:Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    iget-boolean v1, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;->val$force:Z

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->handleSilenceMode(Z)V

    .line 230
    return-void
.end method
