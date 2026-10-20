###### Class com.mbridge.msdk.video.dynview.b.b (com.mbridge.msdk.video.dynview.b.b)
.class public Lcom/mbridge/msdk/video/dynview/b/b;
.super Ljava/lang/Object;
.source "UIEnergize.java"


# static fields
.field private static volatile a:Lcom/mbridge/msdk/video/dynview/b/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/video/dynview/b/b;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/video/dynview/b/b;->a:Lcom/mbridge/msdk/video/dynview/b/b;

    if-nez v0, :cond_19

    const-class v0, Lcom/mbridge/msdk/video/dynview/b/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/video/dynview/b/b;->a:Lcom/mbridge/msdk/video/dynview/b/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/video/dynview/b/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/b/b;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/video/dynview/b/b;->a:Lcom/mbridge/msdk/video/dynview/b/b;

    :cond_12
    sget-object v1, Lcom/mbridge/msdk/video/dynview/b/b;->a:Lcom/mbridge/msdk/video/dynview/b/b;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    sget-object v0, Lcom/mbridge/msdk/video/dynview/b/b;->a:Lcom/mbridge/msdk/video/dynview/b/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mbridge/msdk/video/dynview/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->h()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    const/16 v1, 0x66

    if-eq v0, v1, :cond_40

    const/16 v1, 0xca

    if-eq v0, v1, :cond_40

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_40

    const/16 v1, 0x322

    if-eq v0, v1, :cond_40

    const/16 v1, 0x388

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    const/4 p1, 0x5

    if-eq v0, p1, :cond_28

    goto :goto_51

    :cond_28
    new-instance p1, Lcom/mbridge/msdk/video/dynview/j/b;

    invoke-direct {p1}, Lcom/mbridge/msdk/video/dynview/j/b;-><init>()V

    goto :goto_51

    :cond_2e
    new-instance v0, Lcom/mbridge/msdk/video/dynview/j/b;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/j/b;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/video/dynview/j/b;->b(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;Ljava/util/Map;)V

    goto :goto_51

    :cond_37
    new-instance p3, Lcom/mbridge/msdk/video/dynview/j/b;

    invoke-direct {p3}, Lcom/mbridge/msdk/video/dynview/j/b;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/video/dynview/j/b;->a(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;)V

    goto :goto_51

    :cond_40
    new-instance v0, Lcom/mbridge/msdk/video/dynview/j/b;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/j/b;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/video/dynview/j/b;->a(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;Ljava/util/Map;)V

    goto :goto_51

    :cond_49
    new-instance p2, Lcom/mbridge/msdk/video/dynview/j/b;

    invoke-direct {p2}, Lcom/mbridge/msdk/video/dynview/j/b;-><init>()V

    invoke-virtual {p2, p1, p3}, Lcom/mbridge/msdk/video/dynview/j/b;->a(Landroid/view/View;Ljava/util/Map;)V

    :goto_51
    return-void
.end method
