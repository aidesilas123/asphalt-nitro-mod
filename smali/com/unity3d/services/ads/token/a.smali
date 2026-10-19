###### Class com.unity3d.services.ads.token.a (com.unity3d.services.ads.token.a)
.class public final synthetic Lcom/unity3d/services/ads/token/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/unity3d/services/ads/token/INativeTokenGeneratorListener;


# static fields
.field public static final synthetic a:Lcom/unity3d/services/ads/token/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/ads/token/a;

    invoke-direct {v0}, Lcom/unity3d/services/ads/token/a;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/token/a;->a:Lcom/unity3d/services/ads/token/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReady(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/unity3d/services/ads/token/InMemoryTokenStorage;->a(Ljava/lang/String;)V

    return-void
.end method
