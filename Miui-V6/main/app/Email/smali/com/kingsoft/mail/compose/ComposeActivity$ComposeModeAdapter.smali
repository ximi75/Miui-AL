.class Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4280
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    .line 4281
    const v0, 0x7f040056

    const v1, 0x7f0c0156

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 4283
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 4286
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 4287
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4294
    if-nez p2, :cond_0

    .line 4295
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4298
    :cond_0
    const v0, 0x7f0c0156

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4300
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
