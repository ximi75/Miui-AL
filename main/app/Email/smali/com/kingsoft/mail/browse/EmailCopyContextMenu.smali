.class public Lcom/kingsoft/mail/browse/EmailCopyContextMenu;
.super Ljava/lang/Object;
.source "EmailCopyContextMenu.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/EmailCopyContextMenu$Copy;
    }
.end annotation


# static fields
.field private static final COPY_CONTACT_ITEM:I = 0x7f0c028b

.field private static final SEND_EMAIL_ITEM:I = 0x7f0c028a


# instance fields
.field private mAddress:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/EmailCopyContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/EmailCopyContextMenu;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 87
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 88
    return-void
.end method

.method private static getMenuResourceId()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f120008

    return v0
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-static {}, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->getMenuResourceId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 106
    const v1, 0x7f0c028a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 108
    const v1, 0x7f0c028b

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/mail/browse/EmailCopyContextMenu$Copy;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    invoke-direct {v2, p0, v3}, Lcom/kingsoft/mail/browse/EmailCopyContextMenu$Copy;-><init>(Lcom/kingsoft/mail/browse/EmailCopyContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 111
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    return-void
.end method

.method public setAddress(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method
