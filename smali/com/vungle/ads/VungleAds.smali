###### Class com.vungle.ads.VungleAds (com.vungle.ads.VungleAds)
.class public final Lcom/vungle/ads/VungleAds;
.super Ljava/lang/Object;
.source "VungleAds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/VungleAds$a;,
        Lcom/vungle/ads/VungleAds$WrapperFramework;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vungle/ads/VungleAds;",
        "",
        "()V",
        "Companion",
        "WrapperFramework",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/VungleAds$a;

.field public static final TAG:Ljava/lang/String; = "VungleAds"

.field private static initializer:Lcom/vungle/ads/internal/VungleInitializer;

.field private static vungleInternal:Lcom/vungle/ads/internal/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/VungleAds$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleAds$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$a;

    new-instance v0, Lcom/vungle/ads/internal/h;

    invoke-direct {v0}, Lcom/vungle/ads/internal/h;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleAds;->vungleInternal:Lcom/vungle/ads/internal/h;

    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer;

    invoke-direct {v0}, Lcom/vungle/ads/internal/VungleInitializer;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleAds;->initializer:Lcom/vungle/ads/internal/VungleInitializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;
    .registers 1

    sget-object v0, Lcom/vungle/ads/VungleAds;->initializer:Lcom/vungle/ads/internal/VungleInitializer;

    return-object v0
.end method

.method public static final synthetic access$getVungleInternal$cp()Lcom/vungle/ads/internal/h;
    .registers 1

    sget-object v0, Lcom/vungle/ads/VungleAds;->vungleInternal:Lcom/vungle/ads/internal/h;

    return-object v0
.end method

.method public static final getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$a;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/VungleAds$a;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$a;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleAds$a;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/c1;)V
    .registers 4

    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/VungleAds$a;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/c1;)V

    return-void
.end method

.method public static final isInitialized()Z
    .registers 1

    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$a;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleAds$a;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static final setIntegrationName(Lcom/vungle/ads/VungleAds$WrapperFramework;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$a;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/VungleAds$a;->setIntegrationName(Lcom/vungle/ads/VungleAds$WrapperFramework;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.VungleAds.WrapperFramework (com.vungle.ads.VungleAds$WrapperFramework)
.class public final enum Lcom/vungle/ads/VungleAds$WrapperFramework;
.super Ljava/lang/Enum;
.source "VungleAds.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/VungleAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapperFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/VungleAds$WrapperFramework;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0015\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vungle/ads/VungleAds$WrapperFramework;",
        "",
        "(Ljava/lang/String;I)V",
        "admob",
        "air",
        "cocos2dx",
        "corona",
        "dfp",
        "heyzap",
        "marmalade",
        "mopub",
        "unity",
        "fyber",
        "ironsource",
        "upsight",
        "appodeal",
        "aerserv",
        "adtoapp",
        "tapdaq",
        "vunglehbs",
        "max",
        "none",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum admob:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum adtoapp:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum aerserv:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum air:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum appodeal:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum cocos2dx:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum corona:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum dfp:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum fyber:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum heyzap:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum ironsource:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum marmalade:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum max:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum mopub:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum none:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum tapdaq:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum unity:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum upsight:Lcom/vungle/ads/VungleAds$WrapperFramework;

.field public static final enum vunglehbs:Lcom/vungle/ads/VungleAds$WrapperFramework;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/VungleAds$WrapperFramework;
    .registers 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/vungle/ads/VungleAds$WrapperFramework;

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->admob:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->air:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->cocos2dx:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->corona:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->dfp:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->heyzap:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->marmalade:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->mopub:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->unity:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->fyber:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->ironsource:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->upsight:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->appodeal:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->aerserv:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->adtoapp:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->tapdaq:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->vunglehbs:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->max:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/VungleAds$WrapperFramework;->none:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->admob:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "air"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->air:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "cocos2dx"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->cocos2dx:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "corona"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->corona:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "dfp"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->dfp:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "heyzap"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->heyzap:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "marmalade"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->marmalade:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "mopub"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->mopub:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "unity"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->unity:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "fyber"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->fyber:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "ironsource"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->ironsource:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "upsight"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->upsight:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "appodeal"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->appodeal:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "aerserv"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->aerserv:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "adtoapp"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->adtoapp:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "tapdaq"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->tapdaq:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "vunglehbs"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->vunglehbs:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "max"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->max:Lcom/vungle/ads/VungleAds$WrapperFramework;

    new-instance v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "none"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAds$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->none:Lcom/vungle/ads/VungleAds$WrapperFramework;

    invoke-static {}, Lcom/vungle/ads/VungleAds$WrapperFramework;->$values()[Lcom/vungle/ads/VungleAds$WrapperFramework;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->$VALUES:[Lcom/vungle/ads/VungleAds$WrapperFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/VungleAds$WrapperFramework;
    .registers 2

    const-class v0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/VungleAds$WrapperFramework;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/VungleAds$WrapperFramework;
    .registers 1

    sget-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->$VALUES:[Lcom/vungle/ads/VungleAds$WrapperFramework;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/VungleAds$WrapperFramework;

    return-object v0
.end method

###### Class com.vungle.ads.VungleAds.Companion (com.vungle.ads.VungleAds$a)
.class public final Lcom/vungle/ads/VungleAds$a;
.super Ljava/lang/Object;
.source "VungleAds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/VungleAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0008\u0010\u000f\u001a\u00020\u0004H\u0007J \u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0008\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vungle/ads/VungleAds$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "initializer",
        "Lcom/vungle/ads/internal/VungleInitializer;",
        "vungleInternal",
        "Lcom/vungle/ads/internal/VungleInternal;",
        "deInit",
        "",
        "deInit$vungle_ads_release",
        "getBiddingToken",
        "context",
        "Landroid/content/Context;",
        "getSdkVersion",
        "init",
        "appId",
        "callback",
        "Lcom/vungle/ads/InitializationListener;",
        "isInitialized",
        "",
        "setIntegrationName",
        "wrapperFramework",
        "Lcom/vungle/ads/VungleAds$WrapperFramework;",
        "wrapperFrameworkVersion",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/VungleAds$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final deInit$vungle_ads_release()V
    .registers 2

    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/VungleInitializer;->deInit$vungle_ads_release()V

    return-void
.end method

.method public final getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/h;->getAvailableBidTokens(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/h;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/c1;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_17
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object v0

    const-string v1, "appContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, p3}, Lcom/vungle/ads/internal/VungleInitializer;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/c1;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public final setIntegrationName(Lcom/vungle/ads/VungleAds$WrapperFramework;Ljava/lang/String;)V
    .registers 12

    const-string v0, "wrapperFramework"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperFrameworkVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/VungleAds$WrapperFramework;->none:Lcom/vungle/ads/VungleAds$WrapperFramework;

    const-string v1, "VungleAds"

    if-eq p1, v0, :cond_79

    sget-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->Companion:Lcom/vungle/ads/internal/network/VungleApiClient$Companion;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient$Companion;->setWRAPPER_FRAMEWORK_SELECTED$vungle_ads_release(Lcom/vungle/ads/VungleAds$WrapperFramework;)V

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/VungleApiClient$Companion;->getHeaderUa()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_38

    :cond_36
    const-string p2, ""

    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ";"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lkotlin/text/g;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient$Companion;->setHeaderUa(Ljava/lang/String;)V

    goto :goto_7e

    :cond_79
    const-string p1, "Wrapper is null or is none"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Lcom/vungle/ads/VungleAds$a;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_89

    const-string p1, "VUNGLE WARNING: SDK already initialized, you should\'ve set wrapper info before"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    return-void
.end method
