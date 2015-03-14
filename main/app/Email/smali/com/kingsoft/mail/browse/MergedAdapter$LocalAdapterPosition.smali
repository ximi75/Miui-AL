.class public Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;
.super Ljava/lang/Object;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAdapterPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mLocalPosition:I


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    .local p1, "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 53
    iput p2, p0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    .line 54
    return-void
.end method
