.class Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cb:Landroid/widget/CheckBox;

.field email:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;->this$1:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;Lcom/kingsoft/mail/compose/ContactListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    .param p2, "x1"    # Lcom/kingsoft/mail/compose/ContactListActivity$1;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter$ViewHolder;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;)V

    return-void
.end method
