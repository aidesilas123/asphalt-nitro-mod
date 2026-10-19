###### Class com.google.android.material.circularreveal.b (com.google.android.material.circularreveal.b)
.class public interface abstract Lcom/google/android/material/circularreveal/b;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/b$d;,
        Lcom/google/android/material/circularreveal/b$b;,
        Lcom/google/android/material/circularreveal/b$c;,
        Lcom/google/android/material/circularreveal/b$e;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()Lcom/google/android/material/circularreveal/b$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Lcom/google/android/material/circularreveal/b$e;)V
    .param p1    # Lcom/google/android/material/circularreveal/b$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class com.google.android.material.circularreveal.b.a (com.google.android.material.circularreveal.b$a)
.class synthetic Lcom/google/android/material/circularreveal/b$a;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

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

###### Class com.google.android.material.circularreveal.b.c (com.google.android.material.circularreveal.b$c)
.class public Lcom/google/android/material/circularreveal/b$c;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/circularreveal/b;",
        "Lcom/google/android/material/circularreveal/b$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/circularreveal/b;",
            "Lcom/google/android/material/circularreveal/b$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/material/circularreveal/b$c;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/b$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/circularreveal/b$c;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/google/android/material/circularreveal/b$e;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/circularreveal/b;)Lcom/google/android/material/circularreveal/b$e;
    .registers 2
    .param p1    # Lcom/google/android/material/circularreveal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-interface {p1}, Lcom/google/android/material/circularreveal/b;->getRevealInfo()Lcom/google/android/material/circularreveal/b$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/material/circularreveal/b;Lcom/google/android/material/circularreveal/b$e;)V
    .registers 3
    .param p1    # Lcom/google/android/material/circularreveal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/circularreveal/b$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Lcom/google/android/material/circularreveal/b;->setRevealInfo(Lcom/google/android/material/circularreveal/b$e;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/google/android/material/circularreveal/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/b$c;->a(Lcom/google/android/material/circularreveal/b;)Lcom/google/android/material/circularreveal/b$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/material/circularreveal/b;

    check-cast p2, Lcom/google/android/material/circularreveal/b$e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/circularreveal/b$c;->b(Lcom/google/android/material/circularreveal/b;Lcom/google/android/material/circularreveal/b$e;)V

    return-void
.end method

###### Class com.google.android.material.circularreveal.b.d (com.google.android.material.circularreveal.b$d)
.class public Lcom/google/android/material/circularreveal/b$d;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/circularreveal/b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/circularreveal/b;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/material/circularreveal/b$d;

    const-string v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/b$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/circularreveal/b$d;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/circularreveal/b;)Ljava/lang/Integer;
    .registers 2
    .param p1    # Lcom/google/android/material/circularreveal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p1}, Lcom/google/android/material/circularreveal/b;->getCircularRevealScrimColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/material/circularreveal/b;Ljava/lang/Integer;)V
    .registers 3
    .param p1    # Lcom/google/android/material/circularreveal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/material/circularreveal/b;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lcom/google/android/material/circularreveal/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/b$d;->a(Lcom/google/android/material/circularreveal/b;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/material/circularreveal/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/circularreveal/b$d;->b(Lcom/google/android/material/circularreveal/b;Ljava/lang/Integer;)V

    return-void
.end method

###### Class com.google.android.material.circularreveal.b.e (com.google.android.material.circularreveal.b$e)
.class public Lcom/google/android/material/circularreveal/b$e;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/circularreveal/b$e;->a:F

    iput p2, p0, Lcom/google/android/material/circularreveal/b$e;->b:F

    iput p3, p0, Lcom/google/android/material/circularreveal/b$e;->c:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/circularreveal/b$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .registers 4

    iput p1, p0, Lcom/google/android/material/circularreveal/b$e;->a:F

    iput p2, p0, Lcom/google/android/material/circularreveal/b$e;->b:F

    iput p3, p0, Lcom/google/android/material/circularreveal/b$e;->c:F

    return-void
.end method
