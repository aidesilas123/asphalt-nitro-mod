###### Class com.moat.analytics.mobile.glft.MoatAnalytics (com.moat.analytics.mobile.glft.MoatAnalytics)
.class public abstract Lcom/moat/analytics/mobile/glft/MoatAnalytics;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/moat/analytics/mobile/glft/MoatAnalytics;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/moat/analytics/mobile/glft/MoatAnalytics;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/MoatAnalytics;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->a:Lcom/moat/analytics/mobile/glft/MoatAnalytics;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-nez v1, :cond_1a

    :try_start_7
    new-instance v1, Lcom/moat/analytics/mobile/glft/j;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/glft/j;-><init>()V

    sput-object v1, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->a:Lcom/moat/analytics/mobile/glft/MoatAnalytics;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    goto :goto_1a

    :catch_f
    move-exception v1

    :try_start_10
    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    new-instance v1, Lcom/moat/analytics/mobile/glft/t$a;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/glft/t$a;-><init>()V

    sput-object v1, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->a:Lcom/moat/analytics/mobile/glft/MoatAnalytics;

    :cond_1a
    :goto_1a
    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAnalytics;->a:Lcom/moat/analytics/mobile/glft/MoatAnalytics;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract prepareNativeDisplayTracking(Ljava/lang/String;)V
.end method

.method public abstract start(Landroid/app/Application;)V
.end method

.method public abstract start(Lcom/moat/analytics/mobile/glft/MoatOptions;Landroid/app/Application;)V
.end method
