###### Class com.bytedance.sdk.openadsdk.utils.j (com.bytedance.sdk.openadsdk.utils.j)
.class public Lcom/bytedance/sdk/openadsdk/utils/j;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/j$a;
    }
.end annotation


# direct methods
.method public static a([BI)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 p1, 0x0

    if-eqz p0, :cond_18

    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_18

    :cond_7
    :try_start_7
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    :cond_18
    :goto_18
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/k/a;IILcom/bytedance/sdk/openadsdk/utils/j$a;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Lcom/bytedance/sdk/openadsdk/k/a;IILcom/bytedance/sdk/openadsdk/utils/j$a;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/k/a;IILcom/bytedance/sdk/openadsdk/utils/j$a;Ljava/lang/String;I)V
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getImageBytes url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/c;->a()Lcom/bytedance/sdk/openadsdk/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/c;->c()Lcom/bytedance/sdk/openadsdk/k/a/c;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/j$1;

    invoke-direct {v3, p3}, Lcom/bytedance/sdk/openadsdk/utils/j$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/j$a;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v9, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Lcom/bytedance/sdk/openadsdk/k/a;Lcom/bytedance/sdk/openadsdk/k/a/a$a;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/q;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.utils.j.AnonymousClass1 (com.bytedance.sdk.openadsdk.utils.j$1)
.class final Lcom/bytedance/sdk/openadsdk/utils/j$1;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/j;->a(Lcom/bytedance/sdk/openadsdk/k/a;IILcom/bytedance/sdk/openadsdk/utils/j$a;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/j$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->b()V

    :cond_7
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->a()V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/a/b;)V
    .registers 3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/a/b;->d()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->a(Lcom/bytedance/sdk/openadsdk/k/a/b;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->a()V

    :cond_15
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.utils.j.a (com.bytedance.sdk.openadsdk.utils.j$a)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/utils/j$a;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/bytedance/sdk/openadsdk/k/a/b;)V
.end method

.method public abstract b()V
.end method
