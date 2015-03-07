.class public Lcom/kingsoft/email/widget/text/maileditor/scenario/UserIntentParser;
.super Lcom/kingsoft/email/widget/text/uilogic/scenario/UserIntentParserBase;
.source "UserIntentParser.java"


# instance fields
.field private final mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/widget/text/MailEditor;)V
    .locals 1
    .param p1, "mailEditor"    # Lcom/kingsoft/email/widget/text/MailEditor;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/uilogic/scenario/UserIntentParserBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/maileditor/scenario/UserIntentParser;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    .line 16
    new-instance v0, Lcom/kingsoft/email/widget/text/maileditor/scenario/NormalScenario;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/maileditor/scenario/NormalScenario;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/maileditor/scenario/UserIntentParser;->installScenario(Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;)V

    .line 17
    return-void
.end method
