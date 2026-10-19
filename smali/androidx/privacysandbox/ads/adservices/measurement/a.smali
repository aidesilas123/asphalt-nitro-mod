###### Class androidx.privacysandbox.ads.adservices.measurement.a (androidx.privacysandbox.ads.adservices.measurement.a)
.class public final synthetic Landroidx/privacysandbox/ads/adservices/measurement/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Landroidx/privacysandbox/ads/adservices/measurement/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/a;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/measurement/a;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/measurement/a;->a:Landroidx/privacysandbox/ads/adservices/measurement/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
