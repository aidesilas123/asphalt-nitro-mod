###### Class com.applovin.exoplayer2.m.m.d (com.applovin.exoplayer2.m.m$d)
.class final Lcom/applovin/exoplayer2/m/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/applovin/exoplayer2/m/m$b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final afc:Landroid/hardware/display/DisplayManager;

.field private afd:Lcom/applovin/exoplayer2/m/m$b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/m$d;->afc:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private qC()Landroid/view/Display;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$d;->afc:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/content/Context;)Lcom/applovin/exoplayer2/m/m$b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_10

    new-instance v0, Lcom/applovin/exoplayer2/m/m$d;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/m/m$d;-><init>(Landroid/hardware/display/DisplayManager;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/m/m$b$a;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/m$d;->afd:Lcom/applovin/exoplayer2/m/m$b$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$d;->afc:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/applovin/exoplayer2/l/ai;->pX()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m$d;->qC()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/m/m$b$a;->onDefaultDisplayChanged(Landroid/view/Display;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$d;->afd:Lcom/applovin/exoplayer2/m/m$b$a;

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m$d;->qC()Landroid/view/Display;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/m/m$b$a;->onDefaultDisplayChanged(Landroid/view/Display;)V

    :cond_d
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public qB()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m$d;->afc:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/m$d;->afd:Lcom/applovin/exoplayer2/m/m$b$a;

    return-void
.end method
