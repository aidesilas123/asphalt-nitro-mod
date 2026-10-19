###### Class com.google.android.material.internal.e (com.google.android.material.internal.e)
.class public Lcom/google/android/material/internal/e;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Lcom/google/android/material/resources/c;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/material/resources/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/e$b;)V
    .registers 4
    .param p1    # Lcom/google/android/material/internal/e$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    new-instance v0, Lcom/google/android/material/internal/e$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/e$a;-><init>(Lcom/google/android/material/internal/e;)V

    iput-object v0, p0, Lcom/google/android/material/internal/e;->b:Lcom/google/android/material/resources/c;

    iput-boolean v1, p0, Lcom/google/android/material/internal/e;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->g(Lcom/google/android/material/internal/e$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/internal/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/internal/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/internal/e;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/internal/e;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(Ljava/lang/CharSequence;)F
    .registers 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method


# virtual methods
.method public d()Lcom/google/android/material/resources/b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/internal/e;->f:Lcom/google/android/material/resources/b;

    return-object v0
.end method

.method public e()Landroid/text/TextPaint;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public f(Ljava/lang/String;)F
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/material/internal/e;->d:Z

    if-nez v0, :cond_7

    iget p1, p0, Lcom/google/android/material/internal/e;->c:F

    return p1

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/e;->c(Ljava/lang/CharSequence;)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/e;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/e;->d:Z

    return p1
.end method

.method public g(Lcom/google/android/material/internal/e$b;)V
    .registers 3
    .param p1    # Lcom/google/android/material/internal/e$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/e;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public h(Lcom/google/android/material/resources/b;Landroid/content/Context;)V
    .registers 5
    .param p1    # Lcom/google/android/material/resources/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/internal/e;->f:Lcom/google/android/material/resources/b;

    if-eq v0, p1, :cond_3f

    iput-object p1, p0, Lcom/google/android/material/internal/e;->f:Lcom/google/android/material/resources/b;

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/e;->b:Lcom/google/android/material/resources/c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/b;->o(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V

    iget-object v0, p0, Lcom/google/android/material/internal/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/e$b;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/e$b;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    :cond_21
    iget-object v0, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/e;->b:Lcom/google/android/material/resources/c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/b;->n(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/e;->d:Z

    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/internal/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/e$b;

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Lcom/google/android/material/internal/e$b;->a()V

    invoke-interface {p1}, Lcom/google/android/material/internal/e$b;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/material/internal/e$b;->onStateChange([I)Z

    :cond_3f
    return-void
.end method

.method public i(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/internal/e;->d:Z

    return-void
.end method

.method public j(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/internal/e;->f:Lcom/google/android/material/resources/b;

    iget-object v1, p0, Lcom/google/android/material/internal/e;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/e;->b:Lcom/google/android/material/resources/c;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/resources/b;->n(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V

    return-void
.end method
