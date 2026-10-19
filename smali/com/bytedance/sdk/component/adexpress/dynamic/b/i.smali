###### Class com.bytedance.sdk.component.adexpress.dynamic.b.i (com.bytedance.sdk.component.adexpress.dynamic.b.i)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;
.super Ljava/lang/Object;
.source "DynamicPoint.java"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    :cond_12
    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;

    iget v2, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_29

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
