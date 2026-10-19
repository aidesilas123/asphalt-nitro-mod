###### Class com.moat.analytics.mobile.glft.c (com.moat.analytics.mobile.glft.c)
.class abstract Lcom/moat/analytics/mobile/glft/c;
.super Lcom/moat/analytics/mobile/glft/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/moat/analytics/mobile/glft/b;"
    }
.end annotation


# static fields
.field static final e:[Lcom/moat/analytics/mobile/glft/MoatAdEventType;


# instance fields
.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/glft/MoatAdEventType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroid/os/Handler;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TPlayerOrIMAAd;>;"
        }
    .end annotation
.end field

.field j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/lang/Double;

.field private final m:Lcom/moat/analytics/mobile/glft/f;

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/moat/analytics/mobile/glft/c;->e:[Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/moat/analytics/mobile/glft/b;-><init>(Landroid/view/View;ZZ)V

    const/4 v0, 0x3

    const-string v2, "MoatBaseVideoTracker"

    const-string v3, "Initializing."

    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->n:Ljava/lang/String;

    new-instance v0, Lcom/moat/analytics/mobile/glft/f;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a;->a()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Lcom/moat/analytics/mobile/glft/f$a;->b:Lcom/moat/analytics/mobile/glft/f$a;

    invoke-direct {v0, v2, v3}, Lcom/moat/analytics/mobile/glft/f;-><init>(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/f$a;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->m:Lcom/moat/analytics/mobile/glft/f;

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/glft/b;->a(Lcom/moat/analytics/mobile/glft/i;)V

    iget-object p1, v0, Lcom/moat/analytics/mobile/glft/f;->a:Landroid/webkit/WebView;

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/webkit/WebView;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->g:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/glft/c;->k:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->l:Ljava/lang/Double;

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/c;)Lcom/moat/analytics/mobile/glft/f;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/c;->m:Lcom/moat/analytics/mobile/glft/f;

    return-object p0
.end method

.method private b(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/glft/c;->a(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Received event: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "MoatBaseVideoTracker"

    invoke-static {v3, v4, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/c;->m:Lcom/moat/analytics/mobile/glft/f;

    iget-object v3, v3, Lcom/moat/analytics/mobile/glft/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/moat/analytics/mobile/glft/i;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->d:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    if-eq p1, v0, :cond_31

    sget-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    if-eq p1, v0, :cond_31

    sget-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    if-ne p1, v0, :cond_3d

    :cond_31
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/c;->e()V

    :cond_3d
    return-void
.end method

.method private g()V
    .registers 9

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/c;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const-string v3, "Player metadata: height = %d, width = %d, duration = %d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MoatBaseVideoTracker"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/c;->m:Lcom/moat/analytics/mobile/glft/f;

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/c;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/c;->h:Ljava/util/Map;

    invoke-virtual/range {v2 .. v7}, Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/moat/analytics/mobile/glft/b;->changeTargetView(Landroid/view/View;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/glft/b;->startTracking()V

    return-void
.end method


# virtual methods
.method a(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 12

    iget-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1f

    :try_start_c
    invoke-static {}, Lcom/moat/analytics/mobile/glft/p;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->c:Ljava/lang/Double;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->c:Ljava/lang/Double;

    :cond_1f
    :goto_1f
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->c:Ljava/lang/Double;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "adVolume before adjusting for player volume %f"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v5, "MoatBaseVideoTracker"

    invoke-static {v3, v5, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->c:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/c;->l:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->c:Ljava/lang/Double;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "adVolume after adjusting for player volume %f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method a(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double v0, v0, v2

    const-wide v2, 0x4087700000000000L    # 750.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    int-to-double p1, p1

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TPlayerOrIMAAd;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "MoatBaseVideoTracker"

    const/4 v3, 0x3

    if-nez p1, :cond_10

    :try_start_7
    const-string v4, "trackVideoAd received null adIds object. Not tracking."

    invoke-static {v3, v2, p0, v4}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_7a

    :cond_10
    const/4 v4, 0x1

    :goto_11
    if-nez p3, :cond_18

    const-string v5, "trackVideoAd received null video view instance"

    invoke-static {v3, v2, p0, v5}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    if-nez p2, :cond_20

    const-string v4, "trackVideoAd received null ad instance. Not tracking."

    invoke-static {v3, v2, p0, v4}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_20
    if-eqz v4, :cond_7e

    const-string v5, "trackVideoAd tracking ids: %s | ad: %s | view: %s"

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    if-eqz p3, :cond_5b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5d

    :cond_5b
    const-string v7, "null"

    :goto_5d
    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->h:Ljava/util/Map;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->j:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/c;->g()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_79} :catch_e

    goto :goto_7e

    :goto_7a
    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v1, v4

    :goto_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to start tracking ad was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8e

    const-string p2, ""

    goto :goto_90

    :cond_8e
    const-string p2, "un"

    :goto_90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "successful."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public changeTargetView(Landroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_23
    const-string v0, "null"

    :goto_25
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changing view to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MoatBaseVideoTracker"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->j:Ljava/lang/ref/WeakReference;

    :try_start_43
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/glft/b;->changeTargetView(Landroid/view/View;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_4b
    return-void
.end method

.method protected abstract d()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/c;->b(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_8
    return-void
.end method

.method e()V
    .registers 5

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/c;->k:Z

    if-nez v0, :cond_13

    new-instance v0, Lcom/moat/analytics/mobile/glft/c$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/glft/c$1;-><init>(Lcom/moat/analytics/mobile/glft/c;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/c;->g:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/c;->k:Z

    :cond_13
    return-void
.end method

.method f()Z
    .registers 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->l:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "player volume changed to %f "

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoatBaseVideoTracker"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c;->l:Ljava/lang/Double;

    new-instance p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;

    sget-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1}, Lcom/moat/analytics/mobile/glft/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/glft/MoatAdEventType;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/glft/c;->dispatchEvent(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V

    :cond_2a
    return-void
.end method

.method public stopTracking()V
    .registers 2

    :try_start_0
    invoke-super {p0}, Lcom/moat/analytics/mobile/glft/b;->stopTracking()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/c;->e()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_b
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.c.AnonymousClass1 (com.moat.analytics.mobile.glft.c$1)
.class Lcom/moat/analytics/mobile/glft/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/c;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/c;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c$1;->a:Lcom/moat/analytics/mobile/glft/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "MoatBaseVideoTracker"

    const-string v2, "Shutting down."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c$1;->a:Lcom/moat/analytics/mobile/glft/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/c;->a(Lcom/moat/analytics/mobile/glft/c;)Lcom/moat/analytics/mobile/glft/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/f;->a()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_16
    return-void
.end method
