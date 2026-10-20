###### Class com.google.android.material.shape.ShapeAppearancePathProvider.c (com.google.android.material.shape.ShapeAppearancePathProvider$c)
.class final Lcom/google/android/material/shape/ShapeAppearancePathProvider$c;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;Landroid/graphics/Path;)V
    .registers 6
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$c;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$c;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$c;->e:F

    iput-object p3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$c;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$c;->b:Landroid/graphics/Path;

    return-void
.end method
