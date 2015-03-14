.class public Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentHolder"
.end annotation


# instance fields
.field mAttachmentBarList:Landroid/widget/LinearLayout;

.field mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

.field mAttachmentCount:Landroid/widget/TextView;

.field mBottomDivider:Landroid/view/View;

.field mDownloadAll:Landroid/widget/Button;

.field mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

.field mUpDown:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
