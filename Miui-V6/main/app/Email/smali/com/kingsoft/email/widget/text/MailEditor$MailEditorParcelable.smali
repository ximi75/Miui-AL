.class public Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;
.super Ljava/lang/Object;
.source "MailEditor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/MailEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailEditorParcelable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHtml:Ljava/lang/String;

.field private mIsFocused:I

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable$1;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable$1;-><init>()V

    sput-object v0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionStart:I

    .line 56
    iput v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionEnd:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mHtml:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionStart:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionEnd:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mIsFocused:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionStart:I

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mIsFocused:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->mIsFocused:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
