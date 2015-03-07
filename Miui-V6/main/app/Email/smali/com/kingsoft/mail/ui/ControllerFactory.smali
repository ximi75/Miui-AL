.class public Lcom/kingsoft/mail/ui/ControllerFactory;
.super Ljava/lang/Object;
.source "ControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forActivity(Lcom/kingsoft/mail/ui/MailActivity;Lcom/kingsoft/mail/ui/ViewMode;Z)Lcom/kingsoft/mail/ui/ActivityController;
    .locals 1
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/MailActivity;
    .param p1, "viewMode"    # Lcom/kingsoft/mail/ui/ViewMode;
    .param p2, "isTabletDevice"    # Z

    .prologue
    .line 33
    if-eqz p2, :cond_0

    new-instance v0, Lcom/kingsoft/mail/ui/TwoPaneController;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneController;-><init>(Lcom/kingsoft/mail/ui/MailActivity;Lcom/kingsoft/mail/ui/ViewMode;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingsoft/mail/ui/OnePaneController;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/ui/OnePaneController;-><init>(Lcom/kingsoft/mail/ui/MailActivity;Lcom/kingsoft/mail/ui/ViewMode;)V

    goto :goto_0
.end method
