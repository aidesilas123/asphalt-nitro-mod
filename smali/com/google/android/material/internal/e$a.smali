###### Class com.google.android.material.internal.e.a (com.google.android.material.internal.e$a)
.class Lcom/google/android/material/internal/e$a;
.super Lcom/google/android/material/resources/c;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/e$a;->a:Lcom/google/android/material/internal/e;

    invoke-direct {p0}, Lcom/google/android/material/resources/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/material/internal/e$a;->a:Lcom/google/android/material/internal/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/internal/e;->a(Lcom/google/android/material/internal/e;Z)Z

    iget-object p1, p0, Lcom/google/android/material/internal/e$a;->a:Lcom/google/android/material/internal/e;

    invoke-static {p1}, Lcom/google/android/material/internal/e;->b(Lcom/google/android/material/internal/e;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/e$b;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/google/android/material/internal/e$b;->a()V

    :cond_17
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .registers 3
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/e$a;->a:Lcom/google/android/material/internal/e;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/internal/e;->a(Lcom/google/android/material/internal/e;Z)Z

    iget-object p1, p0, Lcom/google/android/material/internal/e$a;->a:Lcom/google/android/material/internal/e;

    invoke-static {p1}, Lcom/google/android/material/internal/e;->b(Lcom/google/android/material/internal/e;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/e$b;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Lcom/google/android/material/internal/e$b;->a()V

    :cond_1a
    return-void
.end method
