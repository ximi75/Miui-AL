.class Lgnu/crypto/cipher/Serpent$Key;
.super Ljava/lang/Object;
.source "Serpent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/cipher/Serpent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Key"
.end annotation


# instance fields
.field k0:I

.field k1:I

.field k10:I

.field k100:I

.field k101:I

.field k102:I

.field k103:I

.field k104:I

.field k105:I

.field k106:I

.field k107:I

.field k108:I

.field k109:I

.field k11:I

.field k110:I

.field k111:I

.field k112:I

.field k113:I

.field k114:I

.field k115:I

.field k116:I

.field k117:I

.field k118:I

.field k119:I

.field k12:I

.field k120:I

.field k121:I

.field k122:I

.field k123:I

.field k124:I

.field k125:I

.field k126:I

.field k127:I

.field k128:I

.field k129:I

.field k13:I

.field k130:I

.field k131:I

.field k14:I

.field k15:I

.field k16:I

.field k17:I

.field k18:I

.field k19:I

.field k2:I

.field k20:I

.field k21:I

.field k22:I

.field k23:I

.field k24:I

.field k25:I

.field k26:I

.field k27:I

.field k28:I

.field k29:I

.field k3:I

.field k30:I

.field k31:I

.field k32:I

.field k33:I

.field k34:I

.field k35:I

.field k36:I

.field k37:I

.field k38:I

.field k39:I

.field k4:I

.field k40:I

.field k41:I

.field k42:I

.field k43:I

.field k44:I

.field k45:I

.field k46:I

.field k47:I

.field k48:I

.field k49:I

.field k5:I

.field k50:I

.field k51:I

.field k52:I

.field k53:I

.field k54:I

.field k55:I

.field k56:I

.field k57:I

.field k58:I

.field k59:I

.field k6:I

.field k60:I

.field k61:I

.field k62:I

.field k63:I

.field k64:I

.field k65:I

.field k66:I

.field k67:I

.field k68:I

.field k69:I

.field k7:I

.field k70:I

.field k71:I

.field k72:I

.field k73:I

.field k74:I

.field k75:I

.field k76:I

.field k77:I

.field k78:I

.field k79:I

.field k8:I

.field k80:I

.field k81:I

.field k82:I

.field k83:I

.field k84:I

.field k85:I

.field k86:I

.field k87:I

.field k88:I

.field k89:I

.field k9:I

.field k90:I

.field k91:I

.field k92:I

.field k93:I

.field k94:I

.field k95:I

.field k96:I

.field k97:I

.field k98:I

.field k99:I

.field final this:Lgnu/crypto/cipher/Serpent;


# direct methods
.method constructor <init>(Lgnu/crypto/cipher/Serpent;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lgnu/crypto/cipher/Serpent$Key;->this:Lgnu/crypto/cipher/Serpent;

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lgnu/crypto/cipher/Serpent;Lgnu/crypto/cipher/Serpent$Key;)V
    .locals 1
    .param p2, "that"    # Lgnu/crypto/cipher/Serpent$Key;

    .prologue
    iput-object p1, p0, Lgnu/crypto/cipher/Serpent$Key;->this:Lgnu/crypto/cipher/Serpent;

    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k0:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k0:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k1:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k2:I

    .line 1273
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k3:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k4:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k5:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k5:I

    .line 1274
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k6:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k6:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k7:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k7:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k8:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k8:I

    .line 1275
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k9:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k9:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k10:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k10:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k11:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k11:I

    .line 1276
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k12:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k12:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k13:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k13:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k14:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k14:I

    .line 1277
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k15:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k15:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k16:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k16:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k17:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k17:I

    .line 1278
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k18:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k18:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k19:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k19:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k20:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k20:I

    .line 1279
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k21:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k21:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k22:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k22:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k23:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k23:I

    .line 1280
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k24:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k24:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k25:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k25:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k26:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k26:I

    .line 1281
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k27:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k27:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k28:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k28:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k29:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k29:I

    .line 1282
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k30:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k30:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k31:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k31:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k32:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k32:I

    .line 1283
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k33:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k33:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k34:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k34:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k35:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k35:I

    .line 1284
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k36:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k36:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k37:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k37:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k38:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k38:I

    .line 1285
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k39:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k39:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k40:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k40:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k41:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k41:I

    .line 1286
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k42:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k42:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k43:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k43:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k44:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k44:I

    .line 1287
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k45:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k45:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k46:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k46:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k47:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k47:I

    .line 1288
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k48:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k48:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k49:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k49:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k50:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k50:I

    .line 1289
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k51:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k51:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k52:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k52:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k53:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k53:I

    .line 1290
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k54:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k54:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k55:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k55:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k56:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k56:I

    .line 1291
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k57:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k57:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k58:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k58:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k59:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k59:I

    .line 1292
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k60:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k60:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k61:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k61:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k62:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k62:I

    .line 1293
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k63:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k63:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k64:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k64:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k65:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k65:I

    .line 1294
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k66:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k66:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k67:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k67:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k68:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k68:I

    .line 1295
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k69:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k69:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k70:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k70:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k71:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k71:I

    .line 1296
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k72:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k72:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k73:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k73:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k74:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k74:I

    .line 1297
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k75:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k75:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k76:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k76:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k77:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k77:I

    .line 1298
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k78:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k78:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k79:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k79:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k80:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k80:I

    .line 1299
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k81:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k81:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k82:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k82:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k83:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k83:I

    .line 1300
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k84:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k84:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k85:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k85:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k86:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k86:I

    .line 1301
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k87:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k87:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k88:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k88:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k89:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k89:I

    .line 1302
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k90:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k90:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k91:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k91:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k92:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k92:I

    .line 1303
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k93:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k93:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k94:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k94:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k95:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k95:I

    .line 1304
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k96:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k96:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k97:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k97:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k98:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k98:I

    .line 1305
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k99:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k99:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k100:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k100:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k101:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k101:I

    .line 1306
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k102:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k102:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k103:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k103:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k104:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k104:I

    .line 1307
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k105:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k105:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k106:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k106:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k107:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k107:I

    .line 1308
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k108:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k108:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k109:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k109:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k110:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k110:I

    .line 1309
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k111:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k111:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k112:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k112:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k113:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k113:I

    .line 1310
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k114:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k114:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k115:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k115:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k116:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k116:I

    .line 1311
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k117:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k117:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k118:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k118:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k119:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k119:I

    .line 1312
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k120:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k120:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k121:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k121:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k122:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k122:I

    .line 1313
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k123:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k123:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k124:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k124:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k125:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k125:I

    .line 1314
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k126:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k126:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k127:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k127:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k128:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k128:I

    .line 1315
    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k129:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k129:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k130:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k130:I

    iget v0, p2, Lgnu/crypto/cipher/Serpent$Key;->k131:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent$Key;->k131:I

    .line 1316
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1322
    new-instance v0, Lgnu/crypto/cipher/Serpent$Key;

    iget-object v1, p0, Lgnu/crypto/cipher/Serpent$Key;->this:Lgnu/crypto/cipher/Serpent;

    invoke-direct {v0, v1, p0}, Lgnu/crypto/cipher/Serpent$Key;-><init>(Lgnu/crypto/cipher/Serpent;Lgnu/crypto/cipher/Serpent$Key;)V

    return-object v0
.end method
