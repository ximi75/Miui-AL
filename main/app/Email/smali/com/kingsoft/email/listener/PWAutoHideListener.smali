.class public Lcom/kingsoft/email/listener/PWAutoHideListener;
.super Ljava/lang/Object;
.source "PWAutoHideListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private viceView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "vV"    # Landroid/widget/EditText;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    .line 20
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 26
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 28
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 30
    iget-object v1, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 32
    const v1, 0x7f0201e9

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 36
    :pswitch_2
    const-string/jumbo v1, "action up"

    invoke-static {v1}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 39
    iget-object v1, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/listener/PWAutoHideListener;->viceView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 41
    const v1, 0x7f0201e8

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
