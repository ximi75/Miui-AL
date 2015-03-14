.class Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;
.super Landroid/os/AsyncTask;
.source "FolderSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/FolderSelectionDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/FolderSelectionDialog;Landroid/content/Context;Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;-><init>(Lcom/kingsoft/mail/ui/FolderSelectionDialog;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->updateAdapterInBackground(Landroid/content/Context;)V

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 153
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->showInternal()V

    .line 154
    return-void
.end method
