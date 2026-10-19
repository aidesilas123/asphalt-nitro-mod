###### Class com.moat.analytics.mobile.glft.s (com.moat.analytics.mobile.glft.s)
.class Lcom/moat/analytics/mobile/glft/s;
.super Lcom/moat/analytics/mobile/glft/g;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/NativeVideoTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/moat/analytics/mobile/glft/g<",
        "Landroid/media/MediaPlayer;",
        ">;",
        "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .registers 4

    check-cast p2, Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/glft/s;->trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected d()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "duration"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected g()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected h()Z
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected i()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .registers 7
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

    const/4 v0, 0x0

    const-string v1, "MoatNativeVideoTracker"

    const/4 v2, 0x3

    if-nez p2, :cond_c

    const-string p1, "Null player instance. Not tracking."

    :goto_8
    invoke-static {v2, v1, p0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_c
    :try_start_c
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_14

    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/glft/g;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result p1

    return p1

    :catch_14
    const-string p1, "Playback has already completed. Not tracking."

    goto :goto_8
.end method

###### Class com.moat.analytics.mobile.glft.s.a (com.moat.analytics.mobile.glft.s$a)
.class Lcom/moat/analytics/mobile/glft/s$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/glft/v$c<",
        "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 15

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v1

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v3

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v4

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v5

    :try_start_18
    const-class v6, Lcom/moat/analytics/mobile/glft/NativeVideoTracker;

    const-string v7, "setActivity"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/app/Activity;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v9, "trackVideoAd"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    const-class v12, Landroid/media/MediaPlayer;

    aput-object v12, v10, v8

    const/4 v12, 0x2

    const-class v13, Landroid/view/View;

    aput-object v13, v10, v12

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "setPlayerVolume"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Double;

    aput-object v13, v12, v11

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const-string v12, "changeTargetView"

    new-array v13, v8, [Ljava/lang/Class;

    const-class v14, Landroid/view/View;

    aput-object v14, v13, v11

    invoke-virtual {v6, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-string v13, "dispatchEvent"

    new-array v8, v8, [Ljava/lang/Class;

    const-class v14, Lcom/moat/analytics/mobile/glft/MoatAdEvent;

    aput-object v14, v8, v11

    invoke-virtual {v6, v13, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v13, "stopTracking"

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v13, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v7}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    invoke-static {v9}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v1

    invoke-static {v10}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v2

    invoke-static {v12}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v3

    invoke-static {v8}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v4

    invoke-static {v6}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v5
    :try_end_82
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception v6

    invoke-static {v6}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_87
    sput-object v0, Lcom/moat/analytics/mobile/glft/s$a;->a:Lcom/moat/analytics/mobile/glft/a/b/a;

    sput-object v1, Lcom/moat/analytics/mobile/glft/s$a;->b:Lcom/moat/analytics/mobile/glft/a/b/a;

    sput-object v2, Lcom/moat/analytics/mobile/glft/s$a;->c:Lcom/moat/analytics/mobile/glft/a/b/a;

    sput-object v3, Lcom/moat/analytics/mobile/glft/s$a;->d:Lcom/moat/analytics/mobile/glft/a/b/a;

    sput-object v4, Lcom/moat/analytics/mobile/glft/s$a;->e:Lcom/moat/analytics/mobile/glft/a/b/a;

    sput-object v5, Lcom/moat/analytics/mobile/glft/s$a;->f:Lcom/moat/analytics/mobile/glft/a/b/a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/moat/analytics/mobile/glft/NativeVideoTracker;

    return-object v0
.end method
