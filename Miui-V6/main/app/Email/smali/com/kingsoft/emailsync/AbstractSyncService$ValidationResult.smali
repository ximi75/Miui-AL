.class public Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/AbstractSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation


# static fields
.field static final CONNECTION_FAILURE:I = 0x1

.field static final EXCEPTION:I = 0x3

.field static final NO_FAILURE:I = 0x0

.field static final VALIDATION_FAILURE:I = 0x2

.field static final succeeded:Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;


# instance fields
.field exception:Ljava/lang/Exception;

.field failure:I

.field reason:Ljava/lang/String;

.field success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->succeeded:Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 155
    iput-object v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 169
    iput-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->success:Z

    .line 170
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 171
    iput-object p1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 172
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "_success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 155
    iput-object v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 165
    iput-boolean p1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->success:Z

    .line 166
    return-void
.end method

.method constructor <init>(ZILjava/lang/String;)V
    .locals 2
    .param p1, "_success"    # Z
    .param p2, "_failure"    # I
    .param p3, "_reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 155
    iput-object v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 159
    iput-boolean p1, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->success:Z

    .line 160
    iput p2, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 161
    iput-object p3, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;->success:Z

    return v0
.end method
