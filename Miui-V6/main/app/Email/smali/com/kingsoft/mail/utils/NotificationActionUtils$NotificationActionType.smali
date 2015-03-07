.class public final enum Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
.super Ljava/lang/Enum;
.source "NotificationActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/NotificationActionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationActionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

.field private static final sPersistedMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionIcon:I

.field private final mActionIcon2:I

.field private final mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

.field private final mDisplayString:I

.field private final mDisplayString2:I

.field private final mIsDestructive:Z

.field private final mPersistedValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 82
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string/jumbo v1, "ARCHIVE_REMOVE_LABEL"

    const/4 v2, 0x0

    const-string/jumbo v3, "archive"

    const/4 v4, 0x1

    const v5, 0x7f0201a7

    const v6, 0x7f0201ac

    const v7, 0x7f100296

    const v8, 0x7f100298

    new-instance v9, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$1;

    invoke-direct {v9}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$1;-><init>()V

    invoke-direct/range {v0 .. v9}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZIIIILcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 91
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string/jumbo v1, "DELETE"

    const/4 v2, 0x1

    const-string/jumbo v3, "delete"

    const/4 v4, 0x1

    const v5, 0x7f0201b4

    const v6, 0x7f100297

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZII)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 93
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string/jumbo v1, "REPLY"

    const/4 v2, 0x2

    const-string/jumbo v3, "reply"

    const/4 v4, 0x0

    const v5, 0x7f0201b6

    const v6, 0x7f100299

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZII)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 94
    new-instance v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string/jumbo v1, "REPLY_ALL"

    const/4 v2, 0x3

    const-string/jumbo v3, "reply_all"

    const/4 v4, 0x0

    const v5, 0x7f0201ba

    const v6, 0x7f10029a

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZII)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->$VALUES:[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 120
    invoke-static {}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->values()[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v12

    .line 121
    .local v12, "values":[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    new-instance v11, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 124
    .local v11, "mapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v12

    if-ge v10, v0, :cond_0

    .line 125
    aget-object v0, v12, v10

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->getPersistedValue()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v12, v10

    invoke-virtual {v11, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 124
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->sPersistedMapping:Ljava/util/Map;

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZII)V
    .locals 1
    .param p3, "persistedValue"    # Ljava/lang/String;
    .param p4, "isDestructive"    # Z
    .param p5, "actionIcon"    # I
    .param p6, "displayString"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-object p3, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    .line 134
    iput-boolean p4, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mIsDestructive:Z

    .line 135
    iput p5, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon:I

    .line 136
    iput v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon2:I

    .line 137
    iput p6, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString:I

    .line 138
    iput v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString2:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

    .line 140
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZIIIILcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;)V
    .locals 0
    .param p3, "persistedValue"    # Ljava/lang/String;
    .param p4, "isDestructive"    # Z
    .param p5, "actionIcon"    # I
    .param p6, "actionIcon2"    # I
    .param p7, "displayString"    # I
    .param p8, "displayString2"    # I
    .param p9, "actionToggler"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIIII",
            "Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-object p3, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    .line 146
    iput-boolean p4, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mIsDestructive:Z

    .line 147
    iput p5, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon:I

    .line 148
    iput p6, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon2:I

    .line 149
    iput p7, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString:I

    .line 150
    iput p8, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString2:I

    .line 151
    iput-object p9, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

    .line 152
    return-void
.end method

.method public static getActionType(Ljava/lang/String;)Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1
    .param p0, "persistedValue"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->sPersistedMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->$VALUES:[Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method


# virtual methods
.method public getActionIconResId(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)I
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;->shouldDisplayPrimary(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon:I

    .line 173
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon2:I

    goto :goto_0
.end method

.method public getDisplayStringResId(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)I
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;->shouldDisplayPrimary(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString:I

    .line 183
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString2:I

    goto :goto_0
.end method

.method public getIsDestructive()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mIsDestructive:Z

    return v0
.end method

.method public getPersistedValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    return-object v0
.end method
