.class Lcom/kingsoft/mail/browse/ConversationPagerAdapter$2;
.super Ljava/lang/Object;
.source "ConversationPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->toastLargeMail(Lcom/kingsoft/mail/providers/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$2;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$2;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->access$100(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)Lcom/kingsoft/mail/browse/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter$2;->this$0:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->mPager:Lcom/kingsoft/mail/browse/ViewPager;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->access$100(Lcom/kingsoft/mail/browse/ConversationPagerAdapter;)Lcom/kingsoft/mail/browse/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10021a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 569
    :cond_0
    return-void
.end method
