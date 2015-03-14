.class Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;
.super Ljava/lang/Object;
.source "FoldMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupInfo"
.end annotation


# instance fields
.field foldViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;",
            ">;"
        }
    .end annotation
.end field

.field title:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;->foldViews:Ljava/util/LinkedList;

    return-void
.end method
