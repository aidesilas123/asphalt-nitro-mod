###### Class com.mbridge.msdk.e.p (com.mbridge.msdk.e.p)
.class final Lcom/mbridge/msdk/e/p;
.super Ljava/lang/Object;
.source "ProcessorWrapper.java"

# interfaces
.implements Lcom/mbridge/msdk/e/l;


# instance fields
.field private final a:Lcom/mbridge/msdk/e/g;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/e/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/e/e;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/e/g;->a(Lcom/mbridge/msdk/e/e;)V

    return-void
.end method

.method public final a()[J
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_16

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/e/g;->a()[J

    move-result-object v0

    return-object v0

    :array_16
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public final b(Lcom/mbridge/msdk/e/e;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/mbridge/msdk/e/e;->i()Lcom/mbridge/msdk/e/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/e/h;->a(Lcom/mbridge/msdk/e/e;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/e/e;->a(Lorg/json/JSONObject;)V

    :cond_1a
    iget-object v0, p0, Lcom/mbridge/msdk/e/p;->a:Lcom/mbridge/msdk/e/g;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/e/g;->b(Lcom/mbridge/msdk/e/e;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "TrackManager"

    const-string v1, "process event error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    :goto_2c
    return-void
.end method
