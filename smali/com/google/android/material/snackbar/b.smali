###### Class com.google.android.material.snackbar.b (com.google.android.material.snackbar.b)
.class Lcom/google/android/material/snackbar/b;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/b$c;,
        Lcom/google/android/material/snackbar/b$b;
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/material/snackbar/b;


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/google/android/material/snackbar/b$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/android/material/snackbar/b$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/b$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/b$a;-><init>(Lcom/google/android/material/snackbar/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/google/android/material/snackbar/b$c;I)Z
    .registers 5
    .param p1    # Lcom/google/android/material/snackbar/b$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/google/android/material/snackbar/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/b$b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static c()Lcom/google/android/material/snackbar/b;
    .registers 1

    sget-object v0, Lcom/google/android/material/snackbar/b;->a:Lcom/google/android/material/snackbar/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/material/snackbar/b;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/b;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/b;->a:Lcom/google/android/material/snackbar/b;

    :cond_b
    sget-object v0, Lcom/google/android/material/snackbar/b;->a:Lcom/google/android/material/snackbar/b;

    return-object v0
.end method

.method private f(Lcom/google/android/material/snackbar/b$b;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/b$c;->a(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private g(Lcom/google/android/material/snackbar/b$b;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$c;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/b$c;->a(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private l(Lcom/google/android/material/snackbar/b$c;)V
    .registers 6
    .param p1    # Lcom/google/android/material/snackbar/b$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/google/android/material/snackbar/b$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/16 v1, 0xabe

    if-lez v0, :cond_b

    goto :goto_13

    :cond_b
    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const/16 v0, 0x5dc

    goto :goto_13

    :cond_11
    const/16 v0, 0xabe

    :goto_13
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$c;

    if-eqz v0, :cond_19

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$c;

    iget-object v0, v0, Lcom/google/android/material/snackbar/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/google/android/material/snackbar/b$b;->show()V

    goto :goto_19

    :cond_17
    iput-object v1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/material/snackbar/b$b;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$b;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$c;I)Z

    goto :goto_1a

    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->g(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$c;I)Z

    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method d(Lcom/google/android/material/snackbar/b$c;)V
    .registers 4
    .param p1    # Lcom/google/android/material/snackbar/b$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    if-eq v1, p1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$c;

    if-ne v1, p1, :cond_f

    :cond_b
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$c;I)Z

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public e(Lcom/google/android/material/snackbar/b$b;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$b;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->g(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    :goto_13
    monitor-exit v0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public h(Lcom/google/android/material/snackbar/b$b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    iget-object p1, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$c;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/google/android/material/snackbar/b;->m()V

    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public i(Lcom/google/android/material/snackbar/b$b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->l(Lcom/google/android/material/snackbar/b$c;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public j(Lcom/google/android/material/snackbar/b$b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/b$c;->c:Z

    if-nez v1, :cond_17

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/material/snackbar/b$c;->c:Z

    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public k(Lcom/google/android/material/snackbar/b$b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$b;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$c;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/b$c;->c:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/google/android/material/snackbar/b$c;->c:Z

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->l(Lcom/google/android/material/snackbar/b$c;)V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

###### Class com.google.android.material.snackbar.b.a (com.google.android.material.snackbar.b$a)
.class Lcom/google/android/material/snackbar/b$a;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/snackbar/b$a;->a:Lcom/google/android/material/snackbar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/snackbar/b$a;->a:Lcom/google/android/material/snackbar/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/snackbar/b$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/b;->d(Lcom/google/android/material/snackbar/b$c;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.material.snackbar.b.InterfaceC0236b (com.google.android.material.snackbar.b$b)
.class interface abstract Lcom/google/android/material/snackbar/b$b;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract show()V
.end method

###### Class com.google.android.material.snackbar.b.c (com.google.android.material.snackbar.b$c)
.class Lcom/google/android/material/snackbar/b$c;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/b$b;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z


# virtual methods
.method a(Lcom/google/android/material/snackbar/b$b;)Z
    .registers 3
    .param p1    # Lcom/google/android/material/snackbar/b$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/material/snackbar/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
