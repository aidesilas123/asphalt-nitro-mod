###### Class com.applovin.exoplayer2.m.a.i (com.applovin.exoplayer2.m.a.i)
.class public final Lcom/applovin/exoplayer2/m/a/i;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m/a/i$a;
    }
.end annotation


# instance fields
.field private Hm:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final acG:Landroid/os/Handler;

.field private final afS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/applovin/exoplayer2/m/a/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private final afT:Landroid/hardware/SensorManager;

.field private final afU:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final afV:Lcom/applovin/exoplayer2/m/a/d;

.field private final afW:Lcom/applovin/exoplayer2/m/a/h;

.field private afX:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private afY:Z

.field private afZ:Z

.field private aga:Z


# direct methods
.method private static a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .registers 2
    .param p0    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_5
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_a
    return-void
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/m/a/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/a/i;->qM()V

    return-void
.end method

.method private qL()V
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afZ:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/applovin/exoplayer2/m/a/i;->afU:Landroid/hardware/Sensor;

    if-eqz v2, :cond_28

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/m/a/i;->aga:Z

    if-ne v0, v3, :cond_15

    goto :goto_28

    :cond_15
    if-eqz v0, :cond_1f

    iget-object v3, p0, Lcom/applovin/exoplayer2/m/a/i;->afT:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/applovin/exoplayer2/m/a/i;->afV:Lcom/applovin/exoplayer2/m/a/d;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_26

    :cond_1f
    iget-object v1, p0, Lcom/applovin/exoplayer2/m/a/i;->afT:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/a/i;->afV:Lcom/applovin/exoplayer2/m/a/d;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_26
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/a/i;->aga:Z

    :cond_28
    :goto_28
    return-void
.end method

.method private synthetic qM()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->Hm:Landroid/view/Surface;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/a/i;->afS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/m/a/i$a;

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/m/a/i$a;->a(Landroid/view/Surface;)V

    goto :goto_a

    :cond_1a
    iget-object v1, p0, Lcom/applovin/exoplayer2/m/a/i;->afX:Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/m/a/i;->a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afX:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->Hm:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/m/a/i$a;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/m/a/i$a;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCameraMotionListener()Lcom/applovin/exoplayer2/m/a/a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afW:Lcom/applovin/exoplayer2/m/a/h;

    return-object v0
.end method

.method public getVideoFrameMetadataListener()Lcom/applovin/exoplayer2/m/l;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afW:Lcom/applovin/exoplayer2/m/a/h;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->Hm:Landroid/view/Surface;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->acG:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/exoplayer2/m/a/j;

    invoke-direct {v1, p0}, Lcom/applovin/exoplayer2/m/a/j;-><init>(Lcom/applovin/exoplayer2/m/a/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afZ:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/a/i;->qL()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afZ:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/a/i;->qL()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/i;->afW:Lcom/applovin/exoplayer2/m/a/h;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m/a/h;->setDefaultStereoMode(I)V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m/a/i;->afY:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/a/i;->qL()V

    return-void
.end method

###### Class com.applovin.exoplayer2.m.a.i.a (com.applovin.exoplayer2.m.a.i$a)
.class public interface abstract Lcom/applovin/exoplayer2/m/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/Surface;)V
.end method

###### Class com.applovin.exoplayer2.m.a.j (com.applovin.exoplayer2.m.a.j)
.class public final synthetic Lcom/applovin/exoplayer2/m/a/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/m/a/i;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/m/a/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/a/j;->a:Lcom/applovin/exoplayer2/m/a/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/j;->a:Lcom/applovin/exoplayer2/m/a/i;

    invoke-static {v0}, Lcom/applovin/exoplayer2/m/a/i;->c(Lcom/applovin/exoplayer2/m/a/i;)V

    return-void
.end method
