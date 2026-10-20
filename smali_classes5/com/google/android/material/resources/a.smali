###### Class com.google.android.material.resources.a (com.google.android.material.resources.a)
.class public final Lcom/google/android/material/resources/a;
.super Lcom/google/android/material/resources/c;
.source "CancelableFontCallback.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/resources/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Lcom/google/android/material/resources/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/a$a;Landroid/graphics/Typeface;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/resources/c;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/resources/a;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/google/android/material/resources/a;->b:Lcom/google/android/material/resources/a$a;

    return-void
.end method

.method private d(Landroid/graphics/Typeface;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/material/resources/a;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/resources/a;->b:Lcom/google/android/material/resources/a$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/resources/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/material/resources/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/resources/a;->c:Z

    return-void
.end method
