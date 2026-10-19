###### Class com.google.android.material.color.b.a (com.google.android.material.color.b$a)
.class Lcom/google/android/material/color/b$a;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/color/b$b;Lcom/google/android/material/color/b$b;)I
    .registers 3

    invoke-static {p1}, Lcom/google/android/material/color/b$b;->a(Lcom/google/android/material/color/b$b;)S

    move-result p1

    invoke-static {p2}, Lcom/google/android/material/color/b$b;->a(Lcom/google/android/material/color/b$b;)S

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/material/color/b$b;

    check-cast p2, Lcom/google/android/material/color/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/b$a;->a(Lcom/google/android/material/color/b$b;Lcom/google/android/material/color/b$b;)I

    move-result p1

    return p1
.end method
