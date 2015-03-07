.class Lcom/kingsoft/mail/browse/MergedAdapter$1;
.super Landroid/database/DataSetObserver;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/MergedAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MergedAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MergedAdapter;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter$1;, "Lcom/kingsoft/mail/browse/MergedAdapter.1;"
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MergedAdapter$1;->this$0:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter$1;, "Lcom/kingsoft/mail/browse/MergedAdapter.1;"
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergedAdapter$1;->this$0:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MergedAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
