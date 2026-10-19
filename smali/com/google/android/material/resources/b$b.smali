###### Class com.google.android.material.resources.b.C0234b (com.google.android.material.resources.b$b)
.class Lcom/google/android/material/resources/b$b;
.super Lcom/google/android/material/resources/c;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/b;->g(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/text/TextPaint;

.field final synthetic c:Lcom/google/android/material/resources/c;

.field final synthetic d:Lcom/google/android/material/resources/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/resources/b;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/material/resources/b$b;->d:Lcom/google/android/material/resources/b;

    iput-object p2, p0, Lcom/google/android/material/resources/b$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/material/resources/b$b;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Lcom/google/android/material/resources/b$b;->c:Lcom/google/android/material/resources/c;

    invoke-direct {p0}, Lcom/google/android/material/resources/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/resources/b$b;->c:Lcom/google/android/material/resources/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/c;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .registers 6
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/resources/b$b;->d:Lcom/google/android/material/resources/b;

    iget-object v1, p0, Lcom/google/android/material/resources/b$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/material/resources/b$b;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/resources/b;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/resources/b$b;->c:Lcom/google/android/material/resources/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/resources/c;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
