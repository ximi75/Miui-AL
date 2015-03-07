.class Lcom/kingsoft/mail/ui/FolderOperations$Operation;
.super Ljava/lang/Object;
.source "FolderOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Operation"
.end annotation


# instance fields
.field public final mAdd:Z

.field public final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderOperations;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/FolderOperations;Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 0
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "add"    # Z

    .prologue
    .line 218
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->this$0:Lcom/kingsoft/mail/ui/FolderOperations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 220
    iput-boolean p3, p0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->mAdd:Z

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/FolderOperations;Lcom/kingsoft/mail/providers/Folder;ZLcom/kingsoft/mail/ui/FolderOperations$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/FolderOperations;
    .param p2, "x1"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/kingsoft/mail/ui/FolderOperations$1;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/FolderOperations$Operation;-><init>(Lcom/kingsoft/mail/ui/FolderOperations;Lcom/kingsoft/mail/providers/Folder;Z)V

    return-void
.end method
