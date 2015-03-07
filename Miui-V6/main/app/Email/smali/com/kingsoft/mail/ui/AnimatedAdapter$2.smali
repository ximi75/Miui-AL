.class Lcom/kingsoft/mail/ui/AnimatedAdapter$2;
.super Ljava/lang/Object;
.source "AnimatedAdapter.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$2;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemsRemoved()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$2;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method
