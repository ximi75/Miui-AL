.class Lcom/kingsoft/mail/ui/AnimatedAdapter$6;
.super Ljava/lang/Object;
.source "AnimatedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter;->fadeOutLeaveBehindItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$6;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$6;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->startFadeOutLeaveBehindItemsAnimations()V

    .line 779
    return-void
.end method
