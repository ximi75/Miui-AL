.class public Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
.super Ljava/lang/Object;
.source "FolderSelectorAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mIsPresent:Z

.field public mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "isPresent"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 61
    iput-boolean p2, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)I
    .locals 2
    .param p1, "another"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    iget-boolean v1, p1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    if-eq v0, v1, :cond_2

    .line 82
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->compareTo(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)I

    move-result v0

    return v0
.end method

.method public getFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    return v0
.end method

.method public setIsPresent(Z)V
    .locals 0
    .param p1, "isPresent"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    .line 74
    return-void
.end method
