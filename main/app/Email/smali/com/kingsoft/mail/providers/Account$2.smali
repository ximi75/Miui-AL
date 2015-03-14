.class final Lcom/kingsoft/mail/providers/Account$2;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Lcom/kingsoft/mail/content/CursorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingsoft/mail/content/CursorCreator",
        "<",
        "Lcom/kingsoft/mail/providers/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 896
    new-instance v0, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bridge synthetic createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/Account$2;->createFromCursor(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    const-string/jumbo v0, "Account CursorCreator"

    return-object v0
.end method
