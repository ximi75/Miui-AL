.class Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/mail/compose/ContactListActivity;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 568
    iput-object p3, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->list:Ljava/util/ArrayList;

    .line 569
    iput-object p2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->ctx:Landroid/content/Context;

    .line 570
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 586
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "vg"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 591
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 594
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;Lcom/kingsoft/mail/compose/ContactListActivity$1;)V

    .line 595
    .local v1, "holder":Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;
    const v3, 0x7f04005b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 596
    const v3, 0x7f0c0161

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    .line 598
    const v3, 0x7f0c015f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 600
    const v3, 0x7f0c0160

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->email:Landroid/widget/TextView;

    .line 602
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 603
    .local v0, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 604
    iget-boolean v3, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->ischecked:Z

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 611
    :goto_0
    iget-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->email:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    return-object p2

    .line 608
    :cond_0
    iget-object v3, v1, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public getlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->list:Ljava/util/ArrayList;

    return-object v0
.end method
