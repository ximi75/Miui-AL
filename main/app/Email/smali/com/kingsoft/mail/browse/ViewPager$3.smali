.class Lcom/kingsoft/mail/browse/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ViewPager;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ViewPager;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ViewPager$3;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ViewPager$3;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/browse/ViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$000(Lcom/kingsoft/mail/browse/ViewPager;I)V

    .line 253
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ViewPager$3;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ViewPager;->populate()V

    .line 254
    return-void
.end method
