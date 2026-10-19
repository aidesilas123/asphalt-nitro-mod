###### Class com.google.android.material.internal.ViewUtils.c (com.google.android.material.internal.ViewUtils$c)
.class Lcom/google/android/material/internal/ViewUtils$c;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/ViewUtils$e;

.field final synthetic b:Lcom/google/android/material/internal/ViewUtils$f;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/ViewUtils$e;Lcom/google/android/material/internal/ViewUtils$f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$c;->a:Lcom/google/android/material/internal/ViewUtils$e;

    iput-object p2, p0, Lcom/google/android/material/internal/ViewUtils$c;->b:Lcom/google/android/material/internal/ViewUtils$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$c;->a:Lcom/google/android/material/internal/ViewUtils$e;

    new-instance v1, Lcom/google/android/material/internal/ViewUtils$f;

    iget-object v2, p0, Lcom/google/android/material/internal/ViewUtils$c;->b:Lcom/google/android/material/internal/ViewUtils$f;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/ViewUtils$f;-><init>(Lcom/google/android/material/internal/ViewUtils$f;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/ViewUtils$e;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$f;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
