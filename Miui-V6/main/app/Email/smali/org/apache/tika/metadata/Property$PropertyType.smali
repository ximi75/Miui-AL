.class public final enum Lorg/apache/tika/metadata/Property$PropertyType;
.super Ljava/lang/Enum;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/metadata/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tika/metadata/Property$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALT:Lorg/apache/tika/metadata/Property$PropertyType;

.field public static final enum BAG:Lorg/apache/tika/metadata/Property$PropertyType;

.field private static final synthetic ENUM$VALUES:[Lorg/apache/tika/metadata/Property$PropertyType;

.field public static final enum SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

.field public static final enum SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

.field public static final enum STRUCTURE:Lorg/apache/tika/metadata/Property$PropertyType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/apache/tika/metadata/Property$PropertyType;

    const-string/jumbo v1, "SIMPLE"

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/Property$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    new-instance v0, Lorg/apache/tika/metadata/Property$PropertyType;

    const-string/jumbo v1, "STRUCTURE"

    invoke-direct {v0, v1, v3}, Lorg/apache/tika/metadata/Property$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->STRUCTURE:Lorg/apache/tika/metadata/Property$PropertyType;

    new-instance v0, Lorg/apache/tika/metadata/Property$PropertyType;

    const-string/jumbo v1, "BAG"

    invoke-direct {v0, v1, v4}, Lorg/apache/tika/metadata/Property$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->BAG:Lorg/apache/tika/metadata/Property$PropertyType;

    new-instance v0, Lorg/apache/tika/metadata/Property$PropertyType;

    const-string/jumbo v1, "SEQ"

    invoke-direct {v0, v1, v5}, Lorg/apache/tika/metadata/Property$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    new-instance v0, Lorg/apache/tika/metadata/Property$PropertyType;

    const-string/jumbo v1, "ALT"

    invoke-direct {v0, v1, v6}, Lorg/apache/tika/metadata/Property$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->ALT:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/tika/metadata/Property$PropertyType;

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->STRUCTURE:Lorg/apache/tika/metadata/Property$PropertyType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->BAG:Lorg/apache/tika/metadata/Property$PropertyType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->ALT:Lorg/apache/tika/metadata/Property$PropertyType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->ENUM$VALUES:[Lorg/apache/tika/metadata/Property$PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tika/metadata/Property$PropertyType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/apache/tika/metadata/Property$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/metadata/Property$PropertyType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tika/metadata/Property$PropertyType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/apache/tika/metadata/Property$PropertyType;->ENUM$VALUES:[Lorg/apache/tika/metadata/Property$PropertyType;

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/tika/metadata/Property$PropertyType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
