.class public Lcom/kingsoft/mail/analytics/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# static fields
.field private static final SUFFIX_ACCOUNT_TYPES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "@gmail.com"

    aput-object v2, v1, v4

    const-string/jumbo v2, "gmail"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "@googlemail.com"

    aput-object v2, v1, v4

    const-string/jumbo v2, "gmail"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "@google.com"

    aput-object v2, v1, v4

    const-string/jumbo v2, "google-corp"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "@hotmail.com"

    aput-object v3, v2, v4

    const-string/jumbo v3, "hotmail"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "@outlook.com"

    aput-object v3, v2, v4

    const-string/jumbo v3, "outlook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "@yahoo.com"

    aput-object v3, v2, v4

    const-string/jumbo v3, "yahoo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/analytics/AnalyticsUtils;->SUFFIX_ACCOUNT_TYPES:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountTypeForAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string/jumbo v2, "unknown"

    .line 134
    :goto_0
    return-object v2

    .line 127
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/kingsoft/mail/analytics/AnalyticsUtils;->SUFFIX_ACCOUNT_TYPES:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 128
    sget-object v2, Lcom/kingsoft/mail/analytics/AnalyticsUtils;->SUFFIX_ACCOUNT_TYPES:[[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 129
    .local v1, "row":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const/4 v2, 0x1

    aget-object v2, v1, v2

    goto :goto_0

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v1    # "row":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "other"

    goto :goto_0
.end method

.method public static getMenuItemString(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    const v2, 0x7f0c027d

    .line 37
    const v1, 0x7f0c0270

    if-ne p0, v1, :cond_0

    .line 38
    const-string/jumbo v0, "archive"

    .line 119
    .local v0, "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 39
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0271

    if-ne p0, v1, :cond_1

    .line 40
    const-string/jumbo v0, "remove_folder"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0c026d

    if-ne p0, v1, :cond_2

    .line 42
    const-string/jumbo v0, "delete"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const v1, 0x7f0c0272

    if-ne p0, v1, :cond_3

    .line 44
    const-string/jumbo v0, "discard_drafts"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    const v1, 0x7f0c0277

    if-ne p0, v1, :cond_4

    .line 46
    const-string/jumbo v0, "mark important"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v0    # "s":Ljava/lang/String;
    :cond_4
    const v1, 0x7f0c0278

    if-ne p0, v1, :cond_5

    .line 48
    const-string/jumbo v0, "mark not important"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 49
    .end local v0    # "s":Ljava/lang/String;
    :cond_5
    const v1, 0x7f0c0279

    if-ne p0, v1, :cond_6

    .line 50
    const-string/jumbo v0, "mute"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "s":Ljava/lang/String;
    :cond_6
    if-ne p0, v2, :cond_7

    .line 52
    const-string/jumbo v0, "report_phishing"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "s":Ljava/lang/String;
    :cond_7
    const v1, 0x7f0c027b

    if-ne p0, v1, :cond_8

    .line 54
    const-string/jumbo v0, "report_spam"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v0    # "s":Ljava/lang/String;
    :cond_8
    const v1, 0x7f0c027c

    if-ne p0, v1, :cond_9

    .line 56
    const-string/jumbo v0, "mark_not_spam"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "s":Ljava/lang/String;
    :cond_9
    if-ne p0, v2, :cond_a

    .line 58
    const-string/jumbo v0, "report_phishing"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v0    # "s":Ljava/lang/String;
    :cond_a
    const v1, 0x7f0c011f

    if-ne p0, v1, :cond_b

    .line 60
    const-string/jumbo v0, "compose"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    const v1, 0x7f0c0285

    if-ne p0, v1, :cond_c

    .line 62
    const-string/jumbo v0, "refresh"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0    # "s":Ljava/lang/String;
    :cond_c
    const v1, 0x7f0c0268

    if-ne p0, v1, :cond_d

    .line 64
    const-string/jumbo v0, "settings"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v0    # "s":Ljava/lang/String;
    :cond_d
    const v1, 0x7f0c0286

    if-ne p0, v1, :cond_e

    .line 66
    const-string/jumbo v0, "folder_options"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v0    # "s":Ljava/lang/String;
    :cond_e
    const v1, 0x7f0c0269

    if-ne p0, v1, :cond_f

    .line 68
    const-string/jumbo v0, "help"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 69
    .end local v0    # "s":Ljava/lang/String;
    :cond_f
    const v1, 0x7f0c028c

    if-ne p0, v1, :cond_10

    .line 70
    const-string/jumbo v0, "feedback"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 71
    .end local v0    # "s":Ljava/lang/String;
    :cond_10
    const v1, 0x7f0c002b

    if-ne p0, v1, :cond_11

    .line 72
    const-string/jumbo v0, "manage_folders"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 73
    .end local v0    # "s":Ljava/lang/String;
    :cond_11
    const v1, 0x7f0c0274

    if-ne p0, v1, :cond_12

    .line 74
    const-string/jumbo v0, "move_to"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 75
    .end local v0    # "s":Ljava/lang/String;
    :cond_12
    const v1, 0x7f0c0275

    if-ne p0, v1, :cond_13

    .line 76
    const-string/jumbo v0, "change_folders"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 77
    .end local v0    # "s":Ljava/lang/String;
    :cond_13
    const v1, 0x7f0c0276

    if-ne p0, v1, :cond_14

    .line 78
    const-string/jumbo v0, "move_to_inbox"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 79
    .end local v0    # "s":Ljava/lang/String;
    :cond_14
    const v1, 0x7f0c027f

    if-ne p0, v1, :cond_15

    .line 80
    const-string/jumbo v0, "empty_trash"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 81
    .end local v0    # "s":Ljava/lang/String;
    :cond_15
    const v1, 0x7f0c0280

    if-ne p0, v1, :cond_16

    .line 82
    const-string/jumbo v0, "empty_spam"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 83
    .end local v0    # "s":Ljava/lang/String;
    :cond_16
    const v1, 0x102002c

    if-ne p0, v1, :cond_17

    .line 84
    const-string/jumbo v0, "home"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 85
    .end local v0    # "s":Ljava/lang/String;
    :cond_17
    const v1, 0x7f0c0273

    if-ne p0, v1, :cond_18

    .line 86
    const-string/jumbo v0, "inside_conversation_unread"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v0    # "s":Ljava/lang/String;
    :cond_18
    const v1, 0x7f0c0287

    if-ne p0, v1, :cond_19

    .line 88
    const-string/jumbo v0, "mark_read"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v0    # "s":Ljava/lang/String;
    :cond_19
    const v1, 0x7f0c005c

    if-ne p0, v1, :cond_1a

    .line 90
    const-string/jumbo v0, "mark_unread"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 91
    .end local v0    # "s":Ljava/lang/String;
    :cond_1a
    const v1, 0x7f0c027a

    if-ne p0, v1, :cond_1b

    .line 92
    const-string/jumbo v0, "show_original"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 93
    .end local v0    # "s":Ljava/lang/String;
    :cond_1b
    const v1, 0x7f0c0266

    if-ne p0, v1, :cond_1c

    .line 94
    const-string/jumbo v0, "add_attachment"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 108
    .end local v0    # "s":Ljava/lang/String;
    :cond_1c
    const v1, 0x7f0c0265

    if-ne p0, v1, :cond_1d

    .line 109
    const-string/jumbo v0, "save_draft"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 110
    .end local v0    # "s":Ljava/lang/String;
    :cond_1d
    const v1, 0x7f0c0264

    if-ne p0, v1, :cond_1e

    .line 111
    const-string/jumbo v0, "send_message"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 112
    .end local v0    # "s":Ljava/lang/String;
    :cond_1e
    const v1, 0x7f0c0267

    if-ne p0, v1, :cond_1f

    .line 113
    const-string/jumbo v0, "compose_discard_draft"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 114
    .end local v0    # "s":Ljava/lang/String;
    :cond_1f
    const v1, 0x7f0c027e

    if-ne p0, v1, :cond_20

    .line 115
    const-string/jumbo v0, "search"

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 117
    .end local v0    # "s":Ljava/lang/String;
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "s":Ljava/lang/String;
    goto/16 :goto_0
.end method
