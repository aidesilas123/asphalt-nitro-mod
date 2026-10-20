###### Class com.kidoz.sdk.api.players.web_player.KidozWebView.AnonymousClass3 (com.kidoz.sdk.api.players.web_player.KidozWebView$3)
.class synthetic Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;
.super Ljava/lang/Object;
.source "KidozWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/web_player/KidozWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->values()[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$3;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
