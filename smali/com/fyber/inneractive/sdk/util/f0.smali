###### Class com.fyber.inneractive.sdk.util.f0 (com.fyber.inneractive.sdk.util.f0)
.class public final enum Lcom/fyber/inneractive/sdk/util/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/util/f0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/util/f0;

.field public static final enum ETHERNET:Lcom/fyber/inneractive/sdk/util/f0;

.field public static final enum MOBILE_3G:Lcom/fyber/inneractive/sdk/util/f0;

.field public static final enum MOBILE_4G:Lcom/fyber/inneractive/sdk/util/f0;

.field public static final enum UNKNOWN:Lcom/fyber/inneractive/sdk/util/f0;

.field public static final enum WIFI:Lcom/fyber/inneractive/sdk/util/f0;


# instance fields
.field public final key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/fyber/inneractive/sdk/util/f0;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/util/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/util/f0;->UNKNOWN:Lcom/fyber/inneractive/sdk/util/f0;

    new-instance v1, Lcom/fyber/inneractive/sdk/util/f0;

    const-string v3, "ETHERNET"

    const/4 v4, 0x1

    const-string v5, "3g"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/util/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/util/f0;->ETHERNET:Lcom/fyber/inneractive/sdk/util/f0;

    new-instance v3, Lcom/fyber/inneractive/sdk/util/f0;

    const-string v6, "WIFI"

    const/4 v7, 0x2

    const-string v8, "wifi"

    invoke-direct {v3, v6, v7, v8}, Lcom/fyber/inneractive/sdk/util/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/util/f0;->WIFI:Lcom/fyber/inneractive/sdk/util/f0;

    new-instance v6, Lcom/fyber/inneractive/sdk/util/f0;

    const-string v8, "MOBILE_3G"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v5}, Lcom/fyber/inneractive/sdk/util/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/fyber/inneractive/sdk/util/f0;->MOBILE_3G:Lcom/fyber/inneractive/sdk/util/f0;

    new-instance v5, Lcom/fyber/inneractive/sdk/util/f0;

    const-string v8, "MOBILE_4G"

    const/4 v10, 0x4

    const-string v11, "4g"

    invoke-direct {v5, v8, v10, v11}, Lcom/fyber/inneractive/sdk/util/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/util/f0;->MOBILE_4G:Lcom/fyber/inneractive/sdk/util/f0;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/fyber/inneractive/sdk/util/f0;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v7

    aput-object v6, v8, v9

    aput-object v5, v8, v10

    sput-object v8, Lcom/fyber/inneractive/sdk/util/f0;->$VALUES:[Lcom/fyber/inneractive/sdk/util/f0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/util/f0;->key:Ljava/lang/String;

    return-void
.end method

.method public static e()Lcom/fyber/inneractive/sdk/util/f0;
    .registers 2

    :try_start_0
    sget-object v0, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_1f

    :catch_1d
    :cond_1d
    const/16 v0, 0x8

    :goto_1f
    const/16 v1, 0x9

    if-eq v0, v1, :cond_48

    if-eqz v0, :cond_3a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    sget-object v0, Lcom/fyber/inneractive/sdk/util/f0;->UNKNOWN:Lcom/fyber/inneractive/sdk/util/f0;

    return-object v0

    :cond_37
    sget-object v0, Lcom/fyber/inneractive/sdk/util/f0;->WIFI:Lcom/fyber/inneractive/sdk/util/f0;

    return-object v0

    :cond_3a
    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->i()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_45

    sget-object v0, Lcom/fyber/inneractive/sdk/util/f0;->MOBILE_4G:Lcom/fyber/inneractive/sdk/util/f0;

    goto :goto_47

    :cond_45
    sget-object v0, Lcom/fyber/inneractive/sdk/util/f0;->MOBILE_3G:Lcom/fyber/inneractive/sdk/util/f0;

    :goto_47
    return-object v0

    :cond_48
    sget-object v0, Lcom/fyber/inneractive/sdk/util/f0;->ETHERNET:Lcom/fyber/inneractive/sdk/util/f0;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/util/f0;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/util/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/util/f0;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/util/f0;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/util/f0;->$VALUES:[Lcom/fyber/inneractive/sdk/util/f0;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/util/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/util/f0;

    return-object v0
.end method
