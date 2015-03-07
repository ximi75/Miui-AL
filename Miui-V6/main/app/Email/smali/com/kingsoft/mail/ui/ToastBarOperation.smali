.class public Lcom/kingsoft/mail/ui/ToastBarOperation;
.super Ljava/lang/Object;
.source "ToastBarOperation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/ui/ToastBarOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = 0x1

.field public static final UNDO:I


# instance fields
.field private final mAction:I

.field private final mBatch:Z

.field private final mCount:I

.field private final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/kingsoft/mail/ui/ToastBarOperation$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/ToastBarOperation$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/ToastBarOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(IIIZLcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "menuId"    # I
    .param p3, "type"    # I
    .param p4, "batch"    # Z
    .param p5, "operationFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mCount:I

    .line 52
    iput p2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    .line 53
    iput-boolean p4, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mBatch:Z

    .line 54
    iput p3, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mType:I

    .line 55
    iput-object p5, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mCount:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mBatch:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mType:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 72
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c026d

    if-ne v2, v3, :cond_0

    .line 126
    const v1, 0x7f0f0007

    .line 150
    .local v1, "resId":I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const-string/jumbo v0, ""

    .line 152
    .end local v1    # "resId":I
    :goto_1
    return-object v0

    .line 127
    :cond_0
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0271

    if-ne v2, v3, :cond_1

    .line 128
    const v2, 0x7f1001c5

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_1
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0275

    if-ne v2, v3, :cond_2

    .line 130
    const v1, 0x7f0f0008

    .restart local v1    # "resId":I
    goto :goto_0

    .line 131
    .end local v1    # "resId":I
    :cond_2
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0034

    if-ne v2, v3, :cond_3

    .line 132
    const v2, 0x7f10014d

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 133
    :cond_3
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0270

    if-ne v2, v3, :cond_4

    .line 134
    const v1, 0x7f0f0006

    .restart local v1    # "resId":I
    goto :goto_0

    .line 135
    .end local v1    # "resId":I
    :cond_4
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c027b

    if-ne v2, v3, :cond_5

    .line 136
    const v1, 0x7f0f000d

    .restart local v1    # "resId":I
    goto :goto_0

    .line 137
    .end local v1    # "resId":I
    :cond_5
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c027c

    if-ne v2, v3, :cond_6

    .line 138
    const v1, 0x7f0f000b

    .restart local v1    # "resId":I
    goto :goto_0

    .line 139
    .end local v1    # "resId":I
    :cond_6
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0278

    if-ne v2, v3, :cond_7

    .line 140
    const v1, 0x7f0f000a

    .restart local v1    # "resId":I
    goto :goto_0

    .line 141
    .end local v1    # "resId":I
    :cond_7
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0279

    if-ne v2, v3, :cond_8

    .line 142
    const v1, 0x7f0f0009

    .restart local v1    # "resId":I
    goto :goto_0

    .line 143
    .end local v1    # "resId":I
    :cond_8
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c0288

    if-ne v2, v3, :cond_9

    .line 144
    const/4 v1, -0x1

    .restart local v1    # "resId":I
    goto :goto_0

    .line 145
    .end local v1    # "resId":I
    :cond_9
    iget v2, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f0c027d

    if-ne v2, v3, :cond_a

    .line 146
    const v1, 0x7f0f000c

    .restart local v1    # "resId":I
    goto/16 :goto_0

    .line 148
    .end local v1    # "resId":I
    :cond_a
    const/4 v1, -0x1

    .restart local v1    # "resId":I
    goto/16 :goto_0

    .line 150
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mCount:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public getSingularDescription(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 156
    iget v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v2, 0x7f0c0271

    if-ne v1, v2, :cond_0

    .line 157
    const v1, 0x7f1001c5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    .line 160
    :cond_0
    iget v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v2, 0x7f0c026d

    if-ne v1, v2, :cond_1

    .line 161
    const v0, 0x7f10016c

    .line 167
    .local v0, "resId":I
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, ""

    goto :goto_0

    .line 162
    .end local v0    # "resId":I
    :cond_1
    iget v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    const v2, 0x7f0c0270

    if-ne v1, v2, :cond_2

    .line 163
    const v0, 0x7f1000d7

    .restart local v0    # "resId":I
    goto :goto_1

    .line 165
    .end local v0    # "resId":I
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "resId":I
    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mType:I

    return v0
.end method

.method public isBatchUndo()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mBatch:Z

    return v0
.end method

.method public onActionClicked(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    return-void
.end method

.method public onToastBarTimeout(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    return-void
.end method

.method public shouldTakeOnActionClickedPrecedence()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, " mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, " mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v1, " mBatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mBatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, " mFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 94
    iget v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mBatch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ToastBarOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    return-void

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0
.end method
