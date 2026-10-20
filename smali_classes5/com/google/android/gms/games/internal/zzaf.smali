###### Class com.google.android.gms.games.internal.zzaf (com.google.android.gms.games.internal.zzaf)
.class final Lcom/google/android/gms/games/internal/zzaf;
.super Lcom/google/android/gms/games/internal/zzac;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field private zzfu:Z

.field private zzjf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/games/internal/zze;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/internal/zzac;-><init>(Lcom/google/android/gms/games/internal/zze;ILcom/google/android/gms/games/internal/zzad;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzaf;->zzfu:Z

    return-void
.end method

.method private final zzc(Landroid/view/View;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzac;->zzjd:Lcom/google/android/gms/games/internal/zzae;

    iput v1, v4, Lcom/google/android/gms/games/internal/zzae;->zzje:I

    iput-object v0, v4, Lcom/google/android/gms/games/internal/zzae;->zzjb:Landroid/os/IBinder;

    const/4 v0, 0x0

    aget v1, v2, v0

    iput v1, v4, Lcom/google/android/gms/games/internal/zzae;->left:I

    const/4 v1, 0x1

    aget v5, v2, v1

    iput v5, v4, Lcom/google/android/gms/games/internal/zzae;->top:I

    aget v0, v2, v0

    add-int/2addr v0, v3

    iput v0, v4, Lcom/google/android/gms/games/internal/zzae;->right:I

    aget v0, v2, v1

    add-int/2addr v0, p1

    iput v0, v4, Lcom/google/android/gms/games/internal/zzae;->bottom:I

    iget-boolean p1, p0, Lcom/google/android/gms/games/internal/zzaf;->zzfu:Z

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzac;->zzbj()V

    :cond_44
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaf;->zzjf:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/zzaf;->zzc(Landroid/view/View;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzaf;->zzc(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjc:Lcom/google/android/gms/games/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zze;->zzbd()V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjc:Lcom/google/android/gms/games/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zze;->zzbd()V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaf;->zzjf:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzac;->zzjc:Lcom/google/android/gms/games/internal/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_25

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_25

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_25
    if-eqz v0, :cond_3b

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3b

    :cond_38
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzaf;->zzjf:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjc:Lcom/google/android/gms/games/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PopupManager"

    if-nez p1, :cond_64

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_64

    check-cast v0, Landroid/app/Activity;

    const p1, 0x1020002

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5f

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    :cond_5f
    const-string v0, "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments"

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzh;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    if-eqz p1, :cond_7b

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzaf;->zzc(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzaf;->zzjf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_7b
    const-string p1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."

    invoke-static {v1, p1}, Lcom/google/android/gms/games/internal/zzh;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzbj()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjd:Lcom/google/android/gms/games/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/zzae;->zzjb:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/google/android/gms/games/internal/zzac;->zzbj()V

    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzaf;->zzfu:Z

    return-void

    :cond_d
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected final zzm(I)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/games/internal/zzae;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/games/internal/zzae;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/zzad;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjd:Lcom/google/android/gms/games/internal/zzae;

    return-void
.end method
