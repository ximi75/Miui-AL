.class public Lcom/kingsoft/email/view/CertificateSelector2$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CertificateSelector2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/view/CertificateSelector2;
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
            "Lcom/kingsoft/email/view/CertificateSelector2$SavedState;",
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
    .line 124
    new-instance v0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState$1;

    invoke-direct {v0}, Lcom/kingsoft/email/view/CertificateSelector2$SavedState$1;-><init>()V

    sput-object v0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;->mValue:Ljava/lang/String;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingsoft/email/view/CertificateSelector2$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kingsoft/email/view/CertificateSelector2$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 114
    iput-object p2, p0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;->mValue:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return-void
.end method
