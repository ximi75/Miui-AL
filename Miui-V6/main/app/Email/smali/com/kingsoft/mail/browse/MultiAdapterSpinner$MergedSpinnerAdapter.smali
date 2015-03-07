.class Lcom/kingsoft/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;
.super Lcom/kingsoft/mail/browse/MergedAdapter;
.source "MultiAdapterSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MultiAdapterSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergedSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/browse/MergedAdapter",
        "<",
        "Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MergedAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/browse/MergedAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
