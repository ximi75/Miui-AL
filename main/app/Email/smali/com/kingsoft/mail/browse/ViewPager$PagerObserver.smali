.class Lcom/kingsoft/mail/browse/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ViewPager;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/ViewPager;)V
    .locals 0

    .prologue
    .line 2835
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ViewPager$PagerObserver;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/ViewPager;Lcom/kingsoft/mail/browse/ViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/ViewPager;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/ViewPager$1;

    .prologue
    .line 2835
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ViewPager$PagerObserver;-><init>(Lcom/kingsoft/mail/browse/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ViewPager$PagerObserver;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ViewPager;->dataSetChanged()V

    .line 2839
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ViewPager$PagerObserver;->this$0:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ViewPager;->dataSetChanged()V

    .line 2843
    return-void
.end method
