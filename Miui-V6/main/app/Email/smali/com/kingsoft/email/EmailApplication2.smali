.class public Lcom/kingsoft/email/EmailApplication2;
.super Lmiui/external/Application;
.source "EmailApplication2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/kingsoft/email/EmailApplication;

    invoke-direct {v0}, Lcom/kingsoft/email/EmailApplication;-><init>()V

    return-object v0
.end method
