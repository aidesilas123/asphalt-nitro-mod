###### Class com.moat.analytics.mobile.glft.t (com.moat.analytics.mobile.glft.t)
.class abstract Lcom/moat/analytics/mobile/glft/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/t$b;,
        Lcom/moat/analytics/mobile/glft/t$a;,
        Lcom/moat/analytics/mobile/glft/t$d;,
        Lcom/moat/analytics/mobile/glft/t$c;,
        Lcom/moat/analytics/mobile/glft/t$f;,
        Lcom/moat/analytics/mobile/glft/t$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.moat.analytics.mobile.glft.t.a (com.moat.analytics.mobile.glft.t$a)
.class public Lcom/moat/analytics/mobile/glft/t$a;
.super Lcom/moat/analytics/mobile/glft/MoatAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/MoatAnalytics;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public start(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/glft/MoatOptions;Landroid/app/Application;)V
    .registers 3

    return-void
.end method

###### Class com.moat.analytics.mobile.glft.t.b (com.moat.analytics.mobile.glft.t$b)
.class public Lcom/moat/analytics/mobile/glft/t$b;
.super Lcom/moat/analytics/mobile/glft/MoatFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/glft/MoatPlugin;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/glft/MoatPlugin<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;"
        }
    .end annotation

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$c;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$c;-><init>()V

    return-object p1
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/NativeVideoTracker;
    .registers 2

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$d;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$d;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
    .registers 2

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$f;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$f;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;
    .registers 2

    new-instance p1, Lcom/moat/analytics/mobile/glft/t$f;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/t$f;-><init>()V

    return-object p1
.end method

###### Class com.moat.analytics.mobile.glft.t.c (com.moat.analytics.mobile.glft.t$c)
.class Lcom/moat/analytics/mobile/glft/t$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/NativeDisplayTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public startTracking()V
    .registers 1

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method

###### Class com.moat.analytics.mobile.glft.t.d (com.moat.analytics.mobile.glft.t$d)
.class Lcom/moat/analytics/mobile/glft/t$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/NativeVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V
    .registers 2

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 2

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaPlayer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

###### Class com.moat.analytics.mobile.glft.t.e (com.moat.analytics.mobile.glft.t$e)
.class Lcom/moat/analytics/mobile/glft/t$e;
.super Lcom/moat/analytics/mobile/glft/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/u$d;
    .registers 2

    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    return-object v0
.end method

.method public a(Lcom/moat/analytics/mobile/glft/u$b;)V
    .registers 2

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

###### Class com.moat.analytics.mobile.glft.t.f (com.moat.analytics.mobile.glft.t$f)
.class Lcom/moat/analytics/mobile/glft/t$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public startTracking()V
    .registers 1

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method
