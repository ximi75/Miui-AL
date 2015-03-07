.class public final enum Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;
.super Ljava/lang/Enum;
.source "MailEditorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

.field public static final enum Bullets:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

.field public static final enum FontColor:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

.field public static final enum FontSize:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

.field public static final enum None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const-string/jumbo v1, "FontSize"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->FontSize:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    .line 333
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const-string/jumbo v1, "FontColor"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->FontColor:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    .line 334
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const-string/jumbo v1, "Bullets"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->Bullets:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    .line 335
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    .line 331
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->FontSize:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->FontColor:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->Bullets:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->$VALUES:[Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

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
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    const-class v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->$VALUES:[Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    return-object v0
.end method
