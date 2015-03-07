.class public Lde/innosystec/unrar/rarfile/UnixOwnersHeader;
.super Lde/innosystec/unrar/rarfile/SubBlockHeader;
.source "UnixOwnersHeader.java"


# instance fields
.field private group:Ljava/lang/String;

.field private groupNameSize:I

.field private owner:Ljava/lang/String;

.field private ownerNameSize:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V
    .locals 6
    .param p1, "sb"    # Lde/innosystec/unrar/rarfile/SubBlockHeader;
    .param p2, "uoHeader"    # [B

    .prologue
    const v4, 0xffff

    const/4 v5, 0x0

    .line 12
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V

    .line 13
    const/4 v2, 0x0

    .line 14
    .local v2, "pos":I
    invoke-static {p2, v2}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v3

    and-int/2addr v3, v4

    iput v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 15
    add-int/lit8 v2, v2, 0x2

    .line 16
    invoke-static {p2, v2}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v3

    and-int/2addr v3, v4

    iput v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 17
    add-int/lit8 v2, v2, 0x2

    .line 18
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/lit8 v3, v3, 0x4

    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 19
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    new-array v1, v3, [B

    .line 20
    .local v1, "ownerBuffer":[B
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-static {p2, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 23
    .end local v1    # "ownerBuffer":[B
    :cond_0
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/lit8 v2, v3, 0x4

    .line 24
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    add-int/2addr v3, v2

    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 25
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    new-array v0, v3, [B

    .line 26
    .local v0, "groupBuffer":[B
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-static {p2, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 29
    .end local v0    # "groupBuffer":[B
    :cond_1
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNameSize()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerNameSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    return v0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 98
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setGroupNameSize(I)V
    .locals 0
    .param p1, "groupNameSize"    # I

    .prologue
    .line 58
    iput p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 59
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setOwnerNameSize(I)V
    .locals 0
    .param p1, "ownerNameSize"    # I

    .prologue
    .line 88
    iput p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 89
    return-void
.end method
