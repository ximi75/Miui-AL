.class Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GalContactRow"
.end annotation


# static fields
.field static dataId:J


# instance fields
.field private final mProjection:Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;

.field private row:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    return-void
.end method

.method constructor <init>(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "projection"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .param p2, "contactId"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    .line 116
    iget v0, p1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string/jumbo v0, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string/jumbo v0, "data_id"

    sget-wide v1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string/jumbo v0, "display_name"

    invoke-virtual {p0, v0, p5}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v0, "display_name_alt"

    invoke-virtual {p0, v0, p5}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v0, "account_type"

    const-string/jumbo v1, "com.android.exchange"

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v0, "account_name"

    invoke-virtual {p0, v0, p4}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v0, "raw_contact_is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string/jumbo v0, "is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method static addEmailAddress(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/MatrixCursor;
    .param p1, "galProjection"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .param p2, "contactId"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "address"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v0, "r":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string/jumbo v1, "data2"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p6}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 158
    .end local v0    # "r":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_0
    return-void
.end method

.method public static addNameRow(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/MatrixCursor;
    .param p1, "galProjection"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .param p2, "contactId"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "firstName"    # Ljava/lang/String;
    .param p7, "lastName"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, "r":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string/jumbo v1, "data2"

    invoke-virtual {v0, v1, p6}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1, p7}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p5}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method static addPhoneRow(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/MatrixCursor;
    .param p1, "projection"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .param p2, "contactId"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "number"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "r":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string/jumbo v1, "data2"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p7}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 170
    .end local v0    # "r":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_0
    return-void
.end method


# virtual methods
.method getRow()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    return-object v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    iget-object v1, v1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    .local v0, "integer":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object p2, v1, v2

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string/jumbo v1, "Exchange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
