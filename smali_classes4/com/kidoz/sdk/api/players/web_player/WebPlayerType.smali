###### Class com.kidoz.sdk.api.players.web_player.WebPlayerType (com.kidoz.sdk.api.players.web_player.WebPlayerType)
.class public final enum Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;
.super Ljava/lang/Enum;
.source "WebPlayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field public static final enum EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field public static final enum HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field public static final enum ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field public static final enum ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field public static final enum WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const-string v1, "EXTERNAL_LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const-string v1, "ONLINE_GAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const-string v1, "WEB_BROWSER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const-string v1, "HTML_PLAYBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const-string v1, "ROVIO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->$values()[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->$VALUES:[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->$VALUES:[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    return-object v0
.end method
