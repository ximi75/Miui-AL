.class Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;
.super Ljava/lang/Object;
.source "AttachmentDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->onDecodeComplete(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

.field final synthetic val$key:Lcom/kingsoft/bitmap/DecodeTask$Request;

.field final synthetic val$result:Lcom/kingsoft/bitmap/ReusableBitmap;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable;Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    iput-object p2, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;->val$key:Lcom/kingsoft/bitmap/DecodeTask$Request;

    iput-object p3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;->val$result:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;->val$key:Lcom/kingsoft/bitmap/DecodeTask$Request;

    iget-object v2, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;->val$result:Lcom/kingsoft/bitmap/ReusableBitmap;

    # invokes: Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->onDecodeCompleteImpl(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->access$000(Lcom/kingsoft/mail/bitmap/AttachmentDrawable;Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V

    .line 300
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string/jumbo v0, "DONE"

    return-object v0
.end method
