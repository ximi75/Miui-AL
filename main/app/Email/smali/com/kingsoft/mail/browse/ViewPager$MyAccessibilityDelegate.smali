.class Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ViewPager;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ViewPager;)V
    .locals 0

    .prologue
    .line 2779
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2831
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$200(Lcom/kingsoft/mail/browse/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$200(Lcom/kingsoft/mail/browse/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2783
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2784
    const-class v1, Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2785
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 2786
    .local v0, "recordCompat":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 2787
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$200(Lcom/kingsoft/mail/browse/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2789
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$200(Lcom/kingsoft/mail/browse/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 2790
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mCurItem:I
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$300(Lcom/kingsoft/mail/browse/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 2791
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mCurItem:I
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ViewPager;->access$300(Lcom/kingsoft/mail/browse/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 2793
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 2797
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2798
    const-class v0, Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2799
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2800
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2801
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2804
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2806
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2810
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2827
    :goto_0
    return v0

    .line 2813
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2827
    goto :goto_0

    .line 2815
    :sswitch_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/browse/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2816
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ViewPager;->access$300(Lcom/kingsoft/mail/browse/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2819
    goto :goto_0

    .line 2821
    :sswitch_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/browse/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2822
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    # getter for: Lcom/kingsoft/mail/browse/ViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ViewPager;->access$300(Lcom/kingsoft/mail/browse/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2825
    goto :goto_0

    .line 2813
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
