###### Class com.google.android.material.internal.d (com.google.android.material.internal.d)
.class public final Lcom/google/android/material/internal/d;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/material/internal/d$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/d;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/d;->b:Lcom/google/android/material/internal/d$b;

    iput-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/material/internal/d$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/d$a;-><init>(Lcom/google/android/material/internal/d;)V

    iput-object v0, p0, Lcom/google/android/material/internal/d;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method private e(Lcom/google/android/material/internal/d$b;)V
    .registers 2
    .param p1    # Lcom/google/android/material/internal/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/google/android/material/internal/d$b;->b:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public a([ILandroid/animation/ValueAnimator;)V
    .registers 4

    new-instance v0, Lcom/google/android/material/internal/d$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/d$b;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/google/android/material/internal/d;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method public d([I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/android/material/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/d$b;

    iget-object v3, v2, Lcom/google/android/material/internal/d$b;->a:[I

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    iget-object p1, p0, Lcom/google/android/material/internal/d;->b:Lcom/google/android/material/internal/d$b;

    if-ne v2, p1, :cond_23

    return-void

    :cond_23
    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/google/android/material/internal/d;->b()V

    :cond_28
    iput-object v2, p0, Lcom/google/android/material/internal/d;->b:Lcom/google/android/material/internal/d$b;

    if-eqz v2, :cond_2f

    invoke-direct {p0, v2}, Lcom/google/android/material/internal/d;->e(Lcom/google/android/material/internal/d$b;)V

    :cond_2f
    return-void
.end method

###### Class com.google.android.material.internal.d.a (com.google.android.material.internal.d$a)
.class Lcom/google/android/material/internal/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/d$a;->a:Lcom/google/android/material/internal/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/internal/d$a;->a:Lcom/google/android/material/internal/d;

    iget-object v1, v0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_9

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/material/internal/d;->c:Landroid/animation/ValueAnimator;

    :cond_9
    return-void
.end method

###### Class com.google.android.material.internal.d.b (com.google.android.material.internal.d$b)
.class Lcom/google/android/material/internal/d$b;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>([ILandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/d$b;->a:[I

    iput-object p2, p0, Lcom/google/android/material/internal/d$b;->b:Landroid/animation/ValueAnimator;

    return-void
.end method
