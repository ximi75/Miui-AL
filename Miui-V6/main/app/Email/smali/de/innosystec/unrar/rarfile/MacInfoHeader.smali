.class public Lde/innosystec/unrar/rarfile/MacInfoHeader;
.super Lde/innosystec/unrar/rarfile/SubBlockHeader;
.source "MacInfoHeader.java"


# static fields
.field public static final MacInfoHeaderSize:S = 0x8s


# instance fields
.field private fileCreator:I

.field private fileType:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V
    .locals 2
    .param p1, "sb"    # Lde/innosystec/unrar/rarfile/SubBlockHeader;
    .param p2, "macHeader"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "pos":I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    .line 38
    add-int/lit8 v0, v0, 0x4

    .line 39
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 40
    return-void
.end method


# virtual methods
.method public getFileCreator()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    return v0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 74
    return-void
.end method

.method public setFileCreator(I)V
    .locals 0
    .param p1, "fileCreator"    # I

    .prologue
    .line 54
    iput p1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 55
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .param p1, "fileType"    # I

    .prologue
    .line 69
    iput p1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    .line 70
    return-void
.end method
