.class Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;
.super Ljava/lang/Object;
.source "FoldMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewInfo"
.end annotation


# instance fields
.field groupId:I

.field imageView:Landroid/view/View;

.field listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
