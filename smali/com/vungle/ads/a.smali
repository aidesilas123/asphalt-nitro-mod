###### Class com.vungle.ads.a (com.vungle.ads.a)
.class public final synthetic Lcom/vungle/ads/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/vungle/ads/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/a;

    invoke-direct {v0}, Lcom/vungle/ads/a;-><init>()V

    sput-object v0, Lcom/vungle/ads/a;->a:Lcom/vungle/ads/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/vungle/ads/AnalyticsClient;->a()V

    return-void
.end method
