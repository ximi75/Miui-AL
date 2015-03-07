.class Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;
.super Ljava/lang/Object;
.source "FlingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/FlingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemEventState"
.end annotation


# static fields
.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/FlingListView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/attachment/FlingListView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->this$0:Lcom/kingsoft/email/mail/attachment/FlingListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method changeState(Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V
    .locals 3
    .param p1, "vh"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;
    .param p2, "state"    # I

    .prologue
    .line 73
    sparse-switch p2, :sswitch_data_0

    .line 86
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "unknown item state!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    :goto_0
    :sswitch_0
    iput p2, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    .line 90
    return-void

    .line 75
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->toAttachmentDeleteState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)I

    goto :goto_0

    .line 78
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->toAttachmentState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)I

    goto :goto_0

    .line 81
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->toMailContentState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)I

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method getState()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    return v0
.end method

.method setState(Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V
    .locals 3
    .param p1, "vh"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;
    .param p2, "state"    # I

    .prologue
    .line 68
    const-string/jumbo v0, "FlingListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->changeState(Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V

    .line 70
    return-void
.end method

.method toAttachmentDeleteState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)I
    .locals 4
    .param p1, "vh"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 125
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    .line 136
    :goto_0
    return v0

    .line 127
    :cond_0
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    .line 129
    .local v0, "old":I
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const/16 v1, 0x66

    iput v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    goto :goto_0
.end method

.method toAttachmentState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)I
    .locals 3
    .param p1, "vh"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .prologue
    const/16 v2, 0x8

    .line 93
    if-nez p1, :cond_0

    .line 94
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    .line 105
    :goto_0
    return v0

    .line 96
    :cond_0
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    .line 98
    .local v0, "old":I
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 100
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const/16 v1, 0x64

    iput v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    goto :goto_0
.end method

.method toMailContentState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)I
    .locals 3
    .param p1, "vh"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    .line 120
    :goto_0
    return v0

    .line 112
    :cond_0
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->mState:I

    .line 114
    .local v0, "old":I
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const/16 v1, 0x65

    iput v1, p1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    goto :goto_0
.end method
