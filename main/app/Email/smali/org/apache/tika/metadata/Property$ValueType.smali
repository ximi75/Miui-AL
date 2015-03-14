.class public final enum Lorg/apache/tika/metadata/Property$ValueType;
.super Ljava/lang/Enum;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/metadata/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tika/metadata/Property$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum DATE:Lorg/apache/tika/metadata/Property$ValueType;

.field private static final synthetic ENUM$VALUES:[Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum LOCALE:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum MIME_TYPE:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum OPEN_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum PROPER_NAME:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum RATIONAL:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum REAL:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum TEXT:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum URI:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum URL:Lorg/apache/tika/metadata/Property$ValueType;

.field public static final enum XPATH:Lorg/apache/tika/metadata/Property$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "OPEN_CHOICE"

    invoke-direct {v0, v1, v4}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->OPEN_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "CLOSED_CHOICE"

    invoke-direct {v0, v1, v5}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "DATE"

    invoke-direct {v0, v1, v6}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v7}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "LOCALE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->LOCALE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 41
    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "MIME_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->MIME_TYPE:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "PROPER_NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->PROPER_NAME:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "RATIONAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->RATIONAL:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "REAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "TEXT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "URI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->URI:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "URL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->URL:Lorg/apache/tika/metadata/Property$ValueType;

    new-instance v0, Lorg/apache/tika/metadata/Property$ValueType;

    const-string/jumbo v1, "XPATH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->XPATH:Lorg/apache/tika/metadata/Property$ValueType;

    .line 39
    const/16 v0, 0xe

    new-array v0, v0, [Lorg/apache/tika/metadata/Property$ValueType;

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->OPEN_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->LOCALE:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->MIME_TYPE:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->PROPER_NAME:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->RATIONAL:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->URI:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->URL:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->XPATH:Lorg/apache/tika/metadata/Property$ValueType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tika/metadata/Property$ValueType;->ENUM$VALUES:[Lorg/apache/tika/metadata/Property$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tika/metadata/Property$ValueType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/apache/tika/metadata/Property$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/metadata/Property$ValueType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tika/metadata/Property$ValueType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/apache/tika/metadata/Property$ValueType;->ENUM$VALUES:[Lorg/apache/tika/metadata/Property$ValueType;

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/tika/metadata/Property$ValueType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
