###### Class io.didomi.drawable.apiEvents.ApiEventType (io.didomi.sdk.apiEvents.ApiEventType)
.class public final enum Lio/didomi/sdk/apiEvents/ApiEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/apiEvents/ApiEventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/ApiEventType;",
        "",
        "(Ljava/lang/String;I)V",
        "CONSENT_ASKED",
        "CONSENT_GIVEN",
        "PAGE_VIEW",
        "SYNC_ACKNOWLEDGED",
        "UI_ACTION_PURPOSE_CHANGED",
        "UI_ACTION_SHOWN_PURPOSES",
        "UI_ACTION_SHOWN_VENDORS",
        "UI_ACTION_VENDOR_CHANGED",
        "UI_ACTION_SHOWN_PERSONAL_DATA_TYPES",
        "UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum CONSENT_ASKED:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum CONSENT_GIVEN:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum PAGE_VIEW:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum SYNC_ACKNOWLEDGED:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum UI_ACTION_PURPOSE_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum UI_ACTION_SHOWN_PERSONAL_DATA_TYPES:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum UI_ACTION_SHOWN_PURPOSES:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum UI_ACTION_SHOWN_VENDORS:Lio/didomi/sdk/apiEvents/ApiEventType;

.field public static final enum UI_ACTION_VENDOR_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;


# direct methods
.method private static final synthetic $values()[Lio/didomi/sdk/apiEvents/ApiEventType;
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Lio/didomi/sdk/apiEvents/ApiEventType;

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_ASKED:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_GIVEN:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->PAGE_VIEW:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->SYNC_ACKNOWLEDGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_PURPOSE_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_PURPOSES:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_VENDORS:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_VENDOR_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_PERSONAL_DATA_TYPES:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "CONSENT_ASKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_ASKED:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "CONSENT_GIVEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_GIVEN:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "PAGE_VIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->PAGE_VIEW:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "SYNC_ACKNOWLEDGED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->SYNC_ACKNOWLEDGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "UI_ACTION_PURPOSE_CHANGED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_PURPOSE_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "UI_ACTION_SHOWN_PURPOSES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_PURPOSES:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "UI_ACTION_SHOWN_VENDORS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_VENDORS:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "UI_ACTION_VENDOR_CHANGED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_VENDOR_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "UI_ACTION_SHOWN_PERSONAL_DATA_TYPES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_PERSONAL_DATA_TYPES:Lio/didomi/sdk/apiEvents/ApiEventType;

    new-instance v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    const-string v1, "UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/apiEvents/ApiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-static {}, Lio/didomi/sdk/apiEvents/ApiEventType;->$values()[Lio/didomi/sdk/apiEvents/ApiEventType;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->$VALUES:[Lio/didomi/sdk/apiEvents/ApiEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/apiEvents/ApiEventType;
    .registers 2

    const-class v0, Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/apiEvents/ApiEventType;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/apiEvents/ApiEventType;
    .registers 1

    sget-object v0, Lio/didomi/sdk/apiEvents/ApiEventType;->$VALUES:[Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/apiEvents/ApiEventType;

    return-object v0
.end method
