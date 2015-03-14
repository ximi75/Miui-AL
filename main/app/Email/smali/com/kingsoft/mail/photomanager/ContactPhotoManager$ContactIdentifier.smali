.class public Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
.super Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactIdentifier"
.end annotation


# instance fields
.field public final emailAddress:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    .line 115
    invoke-static {p1, p2}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->getIdentifierKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->key:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static getIdentifierKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;)I
    .locals 1
    .param p1, "another"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->compareTo(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 153
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    .line 155
    .local v0, "other":Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 139
    const/16 v0, 0x11

    .line 140
    .local v0, "hash":I
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    add-int v0, v1, v2

    .line 143
    return v0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, " email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, " pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
