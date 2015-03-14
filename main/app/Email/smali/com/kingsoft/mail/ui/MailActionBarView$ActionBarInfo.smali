.class public Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;
.super Ljava/lang/Object;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBarInfo"
.end annotation


# instance fields
.field public lp:Landroid/app/ActionBar$LayoutParams;

.field public mask:I

.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->view:Landroid/view/View;

    .line 200
    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->lp:Landroid/app/ActionBar$LayoutParams;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->mask:I

    .line 202
    return-void
.end method


# virtual methods
.method public clearInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->view:Landroid/view/View;

    .line 206
    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->lp:Landroid/app/ActionBar$LayoutParams;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->mask:I

    .line 208
    return-void
.end method
