.class Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
.super Ljava/lang/Object;
.source "ConversationItemViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SenderFragment"
.end annotation


# instance fields
.field ellipsizedText:Ljava/lang/String;

.field end:I

.field isFixed:Z

.field shouldDisplay:Z

.field start:I

.field style:Landroid/text/style/CharacterStyle;

.field width:I


# direct methods
.method constructor <init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;Z)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sendersText"    # Ljava/lang/CharSequence;
    .param p4, "style"    # Landroid/text/style/CharacterStyle;
    .param p5, "isFixed"    # Z

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->start:I

    .line 307
    iput p2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->end:I

    .line 308
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 309
    iput-boolean p5, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->isFixed:Z

    .line 310
    return-void
.end method
