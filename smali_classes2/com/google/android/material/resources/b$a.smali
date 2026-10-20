###### Class com.google.android.material.resources.b.a (com.google.android.material.resources.b$a)
.class Lcom/google/android/material/resources/b$a;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/b;->h(Landroid/content/Context;Lcom/google/android/material/resources/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/resources/c;

.field final synthetic b:Lcom/google/android/material/resources/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/resources/b;Lcom/google/android/material/resources/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/material/resources/b$a;->b:Lcom/google/android/material/resources/b;

    iput-object p2, p0, Lcom/google/android/material/resources/b$a;->a:Lcom/google/android/material/resources/c;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/resources/b$a;->b:Lcom/google/android/material/resources/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/resources/b;->c(Lcom/google/android/material/resources/b;Z)Z

    iget-object v0, p0, Lcom/google/android/material/resources/b$a;->a:Lcom/google/android/material/resources/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/c;->a(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/resources/b$a;->b:Lcom/google/android/material/resources/b;

    iget v1, v0, Lcom/google/android/material/resources/b;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/resources/b;->b(Lcom/google/android/material/resources/b;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/resources/b$a;->b:Lcom/google/android/material/resources/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/resources/b;->c(Lcom/google/android/material/resources/b;Z)Z

    iget-object p1, p0, Lcom/google/android/material/resources/b$a;->a:Lcom/google/android/material/resources/c;

    iget-object v0, p0, Lcom/google/android/material/resources/b$a;->b:Lcom/google/android/material/resources/b;

    invoke-static {v0}, Lcom/google/android/material/resources/b;->a(Lcom/google/android/material/resources/b;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/resources/c;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
