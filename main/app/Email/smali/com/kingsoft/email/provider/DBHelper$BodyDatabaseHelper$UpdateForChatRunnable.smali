.class Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;
.super Ljava/lang/Object;
.source "DBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateForChatRunnable"
.end annotation


# instance fields
.field private mbodyDb:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p2, "bodyDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->this$0:Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p2, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->mbodyDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 906
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->this$0:Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;

    iget-object v1, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->mbodyDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "Message"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->updateForChat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->this$0:Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;

    iget-object v1, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->mbodyDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "Message_Updates"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->updateForChat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->this$0:Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;

    iget-object v1, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;->mbodyDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "Message_Deletes"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->updateForChat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 913
    return-void
.end method
