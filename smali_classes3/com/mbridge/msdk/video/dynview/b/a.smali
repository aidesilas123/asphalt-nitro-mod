###### Class com.mbridge.msdk.video.dynview.b.a (com.mbridge.msdk.video.dynview.b.a)
.class public Lcom/mbridge/msdk/video/dynview/b/a;
.super Ljava/lang/Object;
.source "DataEnergize.java"


# static fields
.field private static volatile b:Lcom/mbridge/msdk/video/dynview/b/a;


# instance fields
.field public a:Lcom/mbridge/msdk/video/dynview/d/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/video/dynview/b/a;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/video/dynview/b/a;->b:Lcom/mbridge/msdk/video/dynview/b/a;

    if-nez v0, :cond_19

    const-class v0, Lcom/mbridge/msdk/video/dynview/b/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/video/dynview/b/a;->b:Lcom/mbridge/msdk/video/dynview/b/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/video/dynview/b/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/b/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/video/dynview/b/a;->b:Lcom/mbridge/msdk/video/dynview/b/a;

    :cond_12
    sget-object v1, Lcom/mbridge/msdk/video/dynview/b/a;->b:Lcom/mbridge/msdk/video/dynview/b/a;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    sget-object v0, Lcom/mbridge/msdk/video/dynview/b/a;->b:Lcom/mbridge/msdk/video/dynview/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/e/e;)V
    .registers 7

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->h()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xca

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x322

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x388

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2a

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4, p1, p2}, Lcom/mbridge/msdk/video/dynview/e/e;->a(Landroid/view/View;Ljava/util/List;)V

    goto :goto_51

    :cond_2a
    new-instance v0, Lcom/mbridge/msdk/video/dynview/j/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/j/a;-><init>()V

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/mbridge/msdk/video/dynview/j/a;->c(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/e/e;)V

    goto :goto_51

    :cond_33
    new-instance p3, Lcom/mbridge/msdk/video/dynview/j/a;

    invoke-direct {p3}, Lcom/mbridge/msdk/video/dynview/j/a;-><init>()V

    invoke-virtual {p3, p2, p1, p4}, Lcom/mbridge/msdk/video/dynview/j/a;->a(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Lcom/mbridge/msdk/video/dynview/e/e;)V

    goto :goto_51

    :cond_3c
    new-instance v0, Lcom/mbridge/msdk/video/dynview/j/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/j/a;-><init>()V

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/mbridge/msdk/video/dynview/j/a;->b(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/e/e;)V

    goto :goto_51

    :cond_45
    new-instance v0, Lcom/mbridge/msdk/video/dynview/j/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/j/a;-><init>()V

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/mbridge/msdk/video/dynview/j/a;->a(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/e/e;)V

    iget-object p1, v0, Lcom/mbridge/msdk/video/dynview/j/a;->a:Lcom/mbridge/msdk/video/dynview/d/a;

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/b/a;->a:Lcom/mbridge/msdk/video/dynview/d/a;

    :goto_51
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/b/a;->a:Lcom/mbridge/msdk/video/dynview/d/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/video/dynview/d/a;->c()V

    :cond_7
    return-void
.end method
