###### Class com.bytedance.sdk.openadsdk.k.a.a (com.bytedance.sdk.openadsdk.k.a.a)
.class public Lcom/bytedance/sdk/openadsdk/k/a/a;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/d/k;)I
    .registers 3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->d()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_19

    const-string v0, "image_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/k/a/a$a;)V
    .registers 5

    if-eqz p4, :cond_5

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/k/a/a$a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method protected a(Lcom/bytedance/sdk/component/d/k;Lcom/bytedance/sdk/openadsdk/k/a/a$a;)V
    .registers 7

    if-eqz p2, :cond_46

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Lcom/bytedance/sdk/component/d/k;)I

    move-result v1

    instance-of v2, v0, [B

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/a/b;

    check-cast v0, [B

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/b;-><init>([BI)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/k/a/a$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/a/b;)V

    goto :goto_46

    :cond_1d
    instance-of v2, v0, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->c()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_31

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    :cond_31
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/a/b;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/k/a/b;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/k/a/a$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/a/b;)V

    goto :goto_46

    :cond_40
    const/4 p1, 0x0

    const-string v0, "not bitmap or gif result!"

    invoke-interface {p2, p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/k/a/a$a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    if-eqz p2, :cond_4b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/k/a/a$a;->a()V

    :cond_4b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/k/a;Lcom/bytedance/sdk/openadsdk/k/a/a$a;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 11

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/f/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/k/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/j;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/bytedance/sdk/component/d/j;->a(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->b(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Landroid/content/Context;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->d(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c(Landroid/content/Context;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->c(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    invoke-interface {p3, p6}, Lcom/bytedance/sdk/component/d/j;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->a(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/bytedance/sdk/component/d/j;->a(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->a(Z)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    new-instance p4, Lcom/bytedance/sdk/openadsdk/k/a/a$2;

    invoke-direct {p4, p0, p7}, Lcom/bytedance/sdk/openadsdk/k/a/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/a;I)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->a(Lcom/bytedance/sdk/component/d/h;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p3

    new-instance p4, Lcom/bytedance/sdk/openadsdk/f/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/k/a;->a:Ljava/lang/String;

    new-instance p5, Lcom/bytedance/sdk/openadsdk/k/a/a$1;

    invoke-direct {p5, p0, p2}, Lcom/bytedance/sdk/openadsdk/k/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/a;Lcom/bytedance/sdk/openadsdk/k/a/a$a;)V

    invoke-direct {p4, p8, p1, p5}, Lcom/bytedance/sdk/openadsdk/f/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lcom/bytedance/sdk/component/d/o;)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/d/j;->a(Lcom/bytedance/sdk/component/d/o;)Lcom/bytedance/sdk/component/d/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a()V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.k.a.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.k.a.a$1)
.class Lcom/bytedance/sdk/openadsdk/k/a/a$1;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Lcom/bytedance/sdk/openadsdk/k/a;Lcom/bytedance/sdk/openadsdk/k/a/a$a;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/a/a$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/k/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/a/a;Lcom/bytedance/sdk/openadsdk/k/a/a$a;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/k/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/k/a/a$a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/k/a/a$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/d/k;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/k/a/a$a;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Lcom/bytedance/sdk/component/d/k;Lcom/bytedance/sdk/openadsdk/k/a/a$a;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.k.a.a.AnonymousClass2 (com.bytedance.sdk.openadsdk.k.a.a$2)
.class Lcom/bytedance/sdk/openadsdk/k/a/a$2;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Lcom/bytedance/sdk/openadsdk/k/a;Lcom/bytedance/sdk/openadsdk/k/a/a$a;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/k/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/a/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$2;->b:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$2;->a:I

    if-gtz v0, :cond_5

    return-object p1

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_16

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/a$2;->a:I

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/c/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.k.a.a.InterfaceC0145a (com.bytedance.sdk.openadsdk.k.a.a$a)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/k/a/a$a;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/a/b;)V
.end method
