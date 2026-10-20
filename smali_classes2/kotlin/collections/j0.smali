###### Class kotlin.collections.j0 (kotlin.collections.j0)
.class public synthetic Lkotlin/collections/j0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(II)I
    .registers 3

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
