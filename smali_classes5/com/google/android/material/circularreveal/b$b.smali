###### Class com.google.android.material.circularreveal.b.C0228b (com.google.android.material.circularreveal.b$b)
.class public Lcom/google/android/material/circularreveal/b$b;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/google/android/material/circularreveal/b$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lcom/google/android/material/circularreveal/b$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/material/circularreveal/b$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/material/circularreveal/b$b;

    invoke-direct {v0}, Lcom/google/android/material/circularreveal/b$b;-><init>()V

    sput-object v0, Lcom/google/android/material/circularreveal/b$b;->a:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/circularreveal/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/b$e;-><init>(Lcom/google/android/material/circularreveal/b$a;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/b$b;->b:Lcom/google/android/material/circularreveal/b$e;

    return-void
.end method


# virtual methods
.method public a(FLcom/google/android/material/circularreveal/b$e;Lcom/google/android/material/circularreveal/b$e;)Lcom/google/android/material/circularreveal/b$e;
    .registers 8
    .param p2    # Lcom/google/android/material/circularreveal/b$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/circularreveal/b$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/circularreveal/b$b;->b:Lcom/google/android/material/circularreveal/b$e;

    iget v1, p2, Lcom/google/android/material/circularreveal/b$e;->a:F

    iget v2, p3, Lcom/google/android/material/circularreveal/b$e;->a:F

    invoke-static {v1, v2, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    iget v2, p2, Lcom/google/android/material/circularreveal/b$e;->b:F

    iget v3, p3, Lcom/google/android/material/circularreveal/b$e;->b:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v2

    iget p2, p2, Lcom/google/android/material/circularreveal/b$e;->c:F

    iget p3, p3, Lcom/google/android/material/circularreveal/b$e;->c:F

    invoke-static {p2, p3, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/circularreveal/b$e;->a(FFF)V

    iget-object p1, p0, Lcom/google/android/material/circularreveal/b$b;->b:Lcom/google/android/material/circularreveal/b$e;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Lcom/google/android/material/circularreveal/b$e;

    check-cast p3, Lcom/google/android/material/circularreveal/b$e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/circularreveal/b$b;->a(FLcom/google/android/material/circularreveal/b$e;Lcom/google/android/material/circularreveal/b$e;)Lcom/google/android/material/circularreveal/b$e;

    move-result-object p1

    return-object p1
.end method
