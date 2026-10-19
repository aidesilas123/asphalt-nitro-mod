###### Class com.applovin.impl.sdk.j (com.applovin.impl.sdk.j)
.class public Lcom/applovin/impl/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/j$b;,
        Lcom/applovin/impl/sdk/j$a;
    }
.end annotation


# instance fields
.field private GH:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aAg:J

.field private final aAh:J

.field private final aAi:I

.field private final aAj:I

.field private aAk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aAl:I

.field private aAm:Ljava/lang/Integer;

.field private aAn:Lcom/applovin/impl/sdk/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private jS:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final logger:Lcom/applovin/impl/sdk/x;

.field private final sdk:Lcom/applovin/impl/sdk/n;

.field private final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    iput-object v1, p0, Lcom/applovin/impl/sdk/j;->aAm:Ljava/lang/Integer;

    new-instance v0, Lcom/applovin/impl/sdk/u0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/u0;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQC:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/j;->aAg:J

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQB:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/j;->aAh:J

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQD:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/j;->aAi:I

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/sdk/j;->aAj:I

    return-void
.end method

.method private AY()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopped monitoring view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlackViewDetector"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_31
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->jS:Landroid/os/Handler;

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->jS:Landroid/os/Handler;

    :cond_3d
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAn:Lcom/applovin/impl/sdk/j$a;

    if-eqz v0, :cond_49

    new-instance v0, Lcom/applovin/impl/sdk/v0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/v0;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_49
    return-void
.end method

.method private AZ()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "BlackViewDetector"

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    const-string v2, "Monitored view no longer exists."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    return-void

    :cond_1d
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for black view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eqz v2, :cond_4f

    if-nez v3, :cond_46

    goto :goto_4f

    :cond_46
    new-instance v1, Lcom/applovin/impl/sdk/j$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/applovin/impl/sdk/j$1;-><init>(Lcom/applovin/impl/sdk/j;II)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Landroid/view/View;Lcom/applovin/impl/sdk/j$b;)V

    return-void

    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monitored view is not visible due to dimensions (width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->Ba()V

    return-void
.end method

.method private Ba()V
    .registers 7

    iget-wide v0, p0, Lcom/applovin/impl/sdk/j;->aAg:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_31

    iget v3, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    if-le v3, v2, :cond_14

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->Bb()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    goto :goto_3b

    :cond_14
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->jS:Landroid/os/Handler;

    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->v:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    :cond_1e
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    const-string v1, "BlackViewDetector"

    const-string v2, "Monitoring handler was unexpectedly null"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    goto :goto_3b

    :cond_31
    iget v0, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    if-ne v0, v2, :cond_38

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->Bb()V

    :cond_38
    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    :goto_3b
    return-void
.end method

.method private Bb()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected black view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlackViewDetector"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    new-instance v1, Lcom/applovin/impl/sdk/w0;

    invoke-direct {v1, p0, v0}, Lcom/applovin/impl/sdk/w0;-><init>(Lcom/applovin/impl/sdk/j;Landroid/view/View;)V

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic Bc()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->aAn:Lcom/applovin/impl/sdk/j$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/j;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/sdk/j;->aAi:I

    return p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/j;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->aAm:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/applovin/impl/sdk/j$b;)V
    .registers 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "BlackViewDetector"

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_7d

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BM()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->AA()Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    const-string v0, "Failed to capture screenshot due to no active activity"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-interface {p2, v3}, Lcom/applovin/impl/sdk/j$b;->aJ(Z)V

    return-void

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p1, Landroid/graphics/Rect;

    aget v7, v6, v3

    aget v8, v6, v2

    aget v3, v6, v3

    add-int/2addr v3, v4

    aget v6, v6, v2

    add-int/2addr v6, v5

    invoke-direct {p1, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_44
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v4, Lcom/applovin/impl/sdk/j$2;

    invoke-direct {v4, p0, p2, v3}, Lcom/applovin/impl/sdk/j$2;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/j$b;Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, p1, v3, v4, v5}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    goto :goto_8d

    :catchall_5c
    move-exception p1

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to capture screenshot due to exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    invoke-interface {p2, v2}, Lcom/applovin/impl/sdk/j$b;->aJ(Z)V

    goto :goto_8d

    :cond_7d
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    const-string v0, "Unable to capture screenshots on views below API 26"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    invoke-interface {p2, v2}, Lcom/applovin/impl/sdk/j$b;->aJ(Z)V

    :goto_8d
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/j;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/j;->gz(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/j;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->Ba()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/j;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->aAm:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/j;)I
    .registers 3

    iget v0, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    return v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/x;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    return-object p0
.end method

.method public static synthetic g(Lcom/applovin/impl/sdk/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AZ()V

    return-void
.end method

.method private gz(I)Z
    .registers 6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/applovin/impl/sdk/j;->aAj:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_1c

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iget v1, p0, Lcom/applovin/impl/sdk/j;->aAj:I

    if-gt v0, v1, :cond_1c

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/applovin/impl/sdk/j;->aAj:I

    if-gt v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->aAm:Ljava/lang/Integer;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eqz v0, :cond_30

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :cond_30
    :goto_30
    return v2
.end method

.method public static synthetic h(Lcom/applovin/impl/sdk/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->Bc()V

    return-void
.end method

.method public static synthetic i(Lcom/applovin/impl/sdk/j;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/j;->u(Landroid/view/View;)V

    return-void
.end method

.method private synthetic u(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAn:Lcom/applovin/impl/sdk/j$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/j$a;->onBlackViewDetected(Landroid/view/View;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/applovin/impl/sdk/j$a;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aQA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "BlackViewDetector"

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring is already in progress for a view: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void

    :cond_3a
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started monitoring view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->GH:Landroid/os/HandlerThread;

    if-nez v0, :cond_67

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AppLovinSdk:black_view_detector"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->GH:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_77

    :cond_67
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/r$a;->aEJ:Lcom/applovin/impl/sdk/r$a;

    const-string v3, "maybeStartMonitoring() unexpectedly called multiple times"

    invoke-virtual {v0, v2, v1, v3}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/sdk/r$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    :goto_77
    iput-object p2, p0, Lcom/applovin/impl/sdk/j;->aAn:Lcom/applovin/impl/sdk/j$a;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/j;->aAk:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/impl/sdk/j;->aAl:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->aAm:Ljava/lang/Integer;

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->GH:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->jS:Landroid/os/Handler;

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->v:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/j;->aAh:J

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9a
    .catchall {:try_start_56 .. :try_end_9a} :catchall_9b

    goto :goto_aa

    :catchall_9b
    move-exception p1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p2

    const-string v0, "maybeStartMonitoring"

    invoke-virtual {p2, v1, v0, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_aa
    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->AY()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->GH:Landroid/os/HandlerThread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->GH:Landroid/os/HandlerThread;

    :cond_d
    return-void
.end method

###### Class com.applovin.impl.sdk.j.AnonymousClass1 (com.applovin.impl.sdk.j$1)
.class Lcom/applovin/impl/sdk/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j;->AZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAo:I

.field final synthetic aAp:I

.field final synthetic aAq:Lcom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;II)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    iput p2, p0, Lcom/applovin/impl/sdk/j$1;->aAo:I

    iput p3, p0, Lcom/applovin/impl/sdk/j$1;->aAp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aJ(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->e(Lcom/applovin/impl/sdk/j;)V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)V

    :goto_d
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .registers 9

    iget v0, p0, Lcom/applovin/impl/sdk/j$1;->aAo:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;)I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lcom/applovin/impl/sdk/j$1;->aAp:I

    iget-object v2, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;)I

    move-result v2

    div-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    :goto_16
    iget v4, p0, Lcom/applovin/impl/sdk/j$1;->aAp:I

    if-ge v3, v4, :cond_4f

    move v4, v2

    :goto_1b
    iget v5, p0, Lcom/applovin/impl/sdk/j$1;->aAo:I

    if-ge v4, v5, :cond_4d

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v6, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;I)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;I)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)V

    return-void

    :cond_3a
    iget-object v6, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v6}, Lcom/applovin/impl/sdk/j;->c(Lcom/applovin/impl/sdk/j;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_4b

    iget-object v6, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_4b
    add-int/2addr v4, v0

    goto :goto_1b

    :cond_4d
    add-int/2addr v3, v1

    goto :goto_16

    :cond_4f
    iget-object v0, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->d(Lcom/applovin/impl/sdk/j;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

###### Class com.applovin.impl.sdk.j.AnonymousClass2 (com.applovin.impl.sdk.j$2)
.class Lcom/applovin/impl/sdk/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j;->a(Landroid/view/View;Lcom/applovin/impl/sdk/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAq:Lcom/applovin/impl/sdk/j;

.field final synthetic aAr:Lcom/applovin/impl/sdk/j$b;

.field final synthetic aAs:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/j$b;Landroid/graphics/Bitmap;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$2;->aAq:Lcom/applovin/impl/sdk/j;

    iput-object p2, p0, Lcom/applovin/impl/sdk/j$2;->aAr:Lcom/applovin/impl/sdk/j$b;

    iput-object p3, p0, Lcom/applovin/impl/sdk/j$2;->aAs:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .registers 5

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$2;->aAr:Lcom/applovin/impl/sdk/j$b;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->aAs:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/j$b;->b(Landroid/graphics/Bitmap;)V

    goto :goto_37

    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to capture screenshot with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BlackViewDetector"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object p1, p0, Lcom/applovin/impl/sdk/j$2;->aAr:Lcom/applovin/impl/sdk/j$b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/j$b;->aJ(Z)V

    :goto_37
    return-void
.end method

###### Class com.applovin.impl.sdk.j.a (com.applovin.impl.sdk.j$a)
.class public interface abstract Lcom/applovin/impl/sdk/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onBlackViewDetected(Landroid/view/View;)V
.end method

###### Class com.applovin.impl.sdk.j.b (com.applovin.impl.sdk.j$b)
.class interface abstract Lcom/applovin/impl/sdk/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "b"
.end annotation


# virtual methods
.method public abstract aJ(Z)V
.end method

.method public abstract b(Landroid/graphics/Bitmap;)V
.end method

###### Class com.applovin.impl.sdk.u0 (com.applovin.impl.sdk.u0)
.class public final synthetic Lcom/applovin/impl/sdk/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/j;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/u0;->a:Lcom/applovin/impl/sdk/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/u0;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->g(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

###### Class com.applovin.impl.sdk.v0 (com.applovin.impl.sdk.v0)
.class public final synthetic Lcom/applovin/impl/sdk/v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/j;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/v0;->a:Lcom/applovin/impl/sdk/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/v0;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->h(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

###### Class com.applovin.impl.sdk.w0 (com.applovin.impl.sdk.w0)
.class public final synthetic Lcom/applovin/impl/sdk/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/j;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/j;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/w0;->a:Lcom/applovin/impl/sdk/j;

    iput-object p2, p0, Lcom/applovin/impl/sdk/w0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/w0;->a:Lcom/applovin/impl/sdk/j;

    iget-object v1, p0, Lcom/applovin/impl/sdk/w0;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/j;->i(Lcom/applovin/impl/sdk/j;Landroid/view/View;)V

    return-void
.end method
