.class Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$2;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$2;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 819
    return-void
.end method
