.class public final enum Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;
.super Ljava/lang/Enum;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FolderRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum DRAFTS:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum INBOX:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum OTHER:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum OUTBOX:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum SENT:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum TRASH:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

.field public static final enum UNKNOWN:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "INBOX"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->INBOX:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 36
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "TRASH"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->TRASH:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 37
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->SENT:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 38
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "DRAFTS"

    invoke-direct {v0, v1, v6}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->DRAFTS:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 40
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "OUTBOX"

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->OUTBOX:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 41
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->OTHER:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 42
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->UNKNOWN:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->INBOX:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->TRASH:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->SENT:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->DRAFTS:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->OUTBOX:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->OTHER:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->UNKNOWN:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->$VALUES:[Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->$VALUES:[Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    invoke-virtual {v0}, [Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    return-object v0
.end method
