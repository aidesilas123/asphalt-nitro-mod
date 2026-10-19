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
