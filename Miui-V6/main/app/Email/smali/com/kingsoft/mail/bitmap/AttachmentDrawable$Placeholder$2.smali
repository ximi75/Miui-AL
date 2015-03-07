.class Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$2;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$2;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    # invokes: Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V
    invoke-static {v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->access$200(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;)V

    .line 462
    return-void
.end method
