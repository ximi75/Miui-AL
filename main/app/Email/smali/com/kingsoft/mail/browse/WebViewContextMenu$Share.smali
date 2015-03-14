.class Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/WebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Share"
.end annotation


# instance fields
.field private final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/browse/WebViewContextMenu;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;->this$0:Lcom/kingsoft/mail/browse/WebViewContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;->mUri:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;->this$0:Lcom/kingsoft/mail/browse/WebViewContextMenu;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;->mUri:Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/browse/WebViewContextMenu;->shareLink(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->access$100(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method
