.class public Lcom/kingsoft/email/activity/setup/ForwardingIntent;
.super Landroid/content/Intent;
.source "ForwardingIntent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "klass"    # Ljava/lang/Class;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;->setFlags(I)Landroid/content/Intent;

    .line 29
    return-void
.end method
