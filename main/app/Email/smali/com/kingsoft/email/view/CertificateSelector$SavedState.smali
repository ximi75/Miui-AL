.class public Lcom/kingsoft/email/view/CertificateSelector$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CertificateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/view/CertificateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/email/view/CertificateSelector$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/kingsoft/email/view/CertificateSelector$SavedState$1;

    invoke-direct {v0}, Lcom/kingsoft/email/view/CertificateSelector$SavedState$1;-><init>()V

    sput-object v0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingsoft/email/view/CertificateSelector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kingsoft/email/view/CertificateSelector$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/kingsoft/email/view/CertificateSelector$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 135
    iput-object p2, p0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
